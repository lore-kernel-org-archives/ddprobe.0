Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABEF1400C
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759727394; cv=none; b=YRlLCj8zxfKoZGvpvz3WsvTDcOOdKVRZmsABov/uKttLc5oS3IpKWnQNd40I4CsP3wGyCqDvdF6HxOHVeNj0AbThMxnwqHRVbbTzCCztFACNw1MveLmidMi2sEDz8vdbcFfdtzwq0SAx3JoXdLW3IDzPWOPpcPEMoqvXNJQZCUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759727394; c=relaxed/simple;
	bh=dNybaFy++aOkDZ1raT/K3P08s9c2PZTllJujJB6SjkE=;
	h=To:Subject:From:Message-Id:Date; b=tNawcoUPfJ0JAsl4+xSIFn6fqkObDB0EbhfbWX/rqnC37gRWKDxaUAZkRxvTCdPnJTUf/RvyFhwMMXWb1vdbo0I3ioAGSKOGFmgDCwg0UovIm/2IsdTnT2kKOVWmAAecw5WjxkVguOBmK+ATFmlvvyhPM5Tg2bp5yFCwVLNtpaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLtQREhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLtQREhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCEAC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759727393;
	bh=dNybaFy++aOkDZ1raT/K3P08s9c2PZTllJujJB6SjkE=;
	h=To:Subject:From:Date:From;
	b=RLtQREhweck6/2HrmFcM623R4+rdtr+qeJmDOjOjMotNWN98KS5EOcf2OB2yszKi7
	 Ui75xENuU7m2m10FpRKA947jbWBqLCxusZjDmUI45krKoKrIsu3zvvkdi1tZHMdux9
	 QjFpNXhGeRrxCIksMSkNTi1dUzDDiaqGifThDtw5Wkkf7k5ModeZMYlgw8IBTIl/ZU
	 41P6KZpbsJRs6QD8Cq8ZGcVEMBBZ0j1h/6MCANQNumSlER+Q7lhc82DbEtNKR4FjyN
	 g+mR6byO9UuzHCLeDWy6mKt0mQIigJ9rqHRGKiJze6MJtzzobk62lvPHaSsxSDhWwn
	 Wn1+yadvlDqpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61CCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972739357.1911.9890198184412657210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d0cf01786a4d127b7775f38a3788e09d450d41261ead33251fad2837a639bd4
Date: Mon, 06 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759727393
