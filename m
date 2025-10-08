Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F30A24DCE2
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759939194; cv=none; b=fckO0d4PTWNa4A3OkN2+FeY5DDEJ9fTqwS0AqdmciW26PLp2Fjx4ZmQQG05b4mD0MRdIvmuLIMANuOryh1sCLHCMxJ6Ouq+Dy9AK8/iQlEbNV+nGEo8iNPp/X4gKX7SVU3iBlZ/WKZH1f/2xzVU9cU4YopnK9RQZBSPLQ5tjHBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759939194; c=relaxed/simple;
	bh=CSRImX8dF6GkQy7ENZLK3QaxoMW6DKjx9IKcxwkqWiA=;
	h=To:Subject:From:Message-Id:Date; b=kBWe+yBPctcH6hdfXupKrl+ddYhU6Shvfd6sZZe66Jz28e1mZn4u2v7FzSUQ8M/W3//WWVFXeQlCGxuMTSZFlUeR7aD5CKSzqkwegMymNI3mOiVP3c3KCyYIRO5BxiQPU0gsGjSlmqfbNXQb5FELpgU+j7n2S/4Vw9dnsaEseKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciRTpNtq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciRTpNtq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A163EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759939193;
	bh=CSRImX8dF6GkQy7ENZLK3QaxoMW6DKjx9IKcxwkqWiA=;
	h=To:Subject:From:Date:From;
	b=ciRTpNtqJjHPYEF9PFpwo0jIRX7ZlbsSAfbAUqgjcoQPwv9y/za7BjeA2JiYj9nNo
	 oR5NdJWySArI7LKwLD1hx+I+ed3M2WGxpFCLeVdisV0U3cFyWOGSTm0ludnM8mUV19
	 GpFd/0gle3Ny0TwYLA0HDjtmtTewOdoYEWrGkW1VCf+W9ukZtOdSgelI/AycRxN/v4
	 Rk4cAoORISVAossfJzeD5d/p45Csb97ZbjzHwVMM7V+W9AevqwGlpou8Wn7UFay7D2
	 Q2Y1Amsol6hPLlrHLTISzw/9D39wrV+0ZNvuGfjv1qLj5MRV9rx3hvTP2kK5eeDu2l
	 q1gdzz8saa+Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A5CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993919357.19917.3859891131960339996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a92d56179a5665f19a2bce4d0d6c765be39bc52cbfd4c3f53b98801c8dd070
Date: Wed, 08 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759939193
