Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B9F1FDA89
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751584194; cv=none; b=KehFBbFGSCXFOkEMYijh12VQ0MrzjnaikgZuzx7ZXf60P7v3TCfAkRU8l+/lwdBHS720cT+v8rTav3PAnFfQotD2wfkbNtTGGVHI3rm2J3XrrWXo3KOL2PWWoQNmQ/40Re0jQ/pj9f2w6J0s8EKekxv1NtrMQ45yk6sDVrDU9UU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751584194; c=relaxed/simple;
	bh=KMWynUWv+MKvOnoOnmzjM89kghqdqlL4sf8mH9AndXA=;
	h=To:Subject:From:Message-Id:Date; b=dFFUZdWsGHKgkLo6HUrT7tKS+/DWzuYF4EVR1gFCKCCKPMe1HVC+e9X4iDMmjIK3Jbg1MCsSxOY2g3pQgRgVEyYPJW6gc3uESBgpdE+a0K3v2Gz0QFJDz5zkIEA25xR8gaiEVoEO5fEwefti/ZpLwG9FoO5z8pmnkV9hd3Axl6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0OwvL2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0OwvL2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9982C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751584193;
	bh=KMWynUWv+MKvOnoOnmzjM89kghqdqlL4sf8mH9AndXA=;
	h=To:Subject:From:Date:From;
	b=C0OwvL2+puKKHi2DqsnFeG6IzDp9sKBaq8VZgKxzEdyuin04x9Jy0rjoW7bl6yr/D
	 txu4nR0pa41QbeLDhZuMg6IpccSkXFdy44h1gboNk3gFov0SzG9yrlqFc0FmEOTSnI
	 QVNQDGPnPZjPKovvLIo0ksIUUT08MAFb+jmpNQ1I8L7efnP6vXTqn5jpIYEZzJ9etb
	 hD/kocpahdkmx4+RgqUeRtPpVdEIl6ymiXiuwgVi0tuEYmipFx7UommdRtSrEVgP5t
	 ShrT5/5uMNlAgHLq4+lsQ4ReRwLU1WENgyTfkSyU0IdCo8XLt7SHRp29U3P7xnFnK2
	 W/x0/RRCg3gyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA0C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158419358.29423.4180631214201078059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10c698af0620362b5a7cea8ced219003b58f41fc4bfafa69d6ed51d4eb83e6c
Date: Thu, 03 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751584193
