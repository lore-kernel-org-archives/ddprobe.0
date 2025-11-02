Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199614F5E0
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762093794; cv=none; b=Z0gVS/MHjHS2ZC8TD7mzRqCf2aiXdfQwwzEU1qxOk4AoHNnnVXJZDWMyX3Gh6x6l9bTKUG+AmRHL2JZhkkE9EZQSl1NwclJ57gQHRErGqMJhJV0i6Nu1fjpzLhT4t+NceVrTcrDBEh0LFtzU3N1EYv+bqNC2mEuYW3UwcF5EJNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762093794; c=relaxed/simple;
	bh=ZargE0pf8pzYBxXPVLVTbOf7As3vSERH/J7RamSbRvA=;
	h=To:Subject:From:Message-Id:Date; b=Aaomxo+KA1OShLuuKnC0HpH5KXKkevfvEioeBeJNDReLpL6jIAhPS/iGjZ01e8QlcmNDvKQnt01EccTR4KfD+2NGFNE+/ZwOHTxLrCLiOLMzHrxQjCh5W3kticZxGogbmptPorNLN7NiatxsoT5JdzZ/sRSpG+g5DY3OiRkJ080=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuB1FOR3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuB1FOR3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A8DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762093793;
	bh=ZargE0pf8pzYBxXPVLVTbOf7As3vSERH/J7RamSbRvA=;
	h=To:Subject:From:Date:From;
	b=QuB1FOR3n3CLqd5/aeG/4xGkWCECzFzXEuXnWKS1jGxwSeqwi5K57zFM5tUg80KRO
	 ssnvjLAfquBPlB474DoOPiVSTUCPE8oWHYsn401eKBoFJcziu5D4u0lL9DIU5/qvsZ
	 33BaVC8j5rWagpOYXg1+qTB9FfaLu30zww0XFcXIOjWwrcwqSa4VHw83TUBeSVcPbL
	 9GbXrHoy2wQFJ1cBtetEwbKWWfHwWY3is9GWKmhvAgrSLVvgE05Xeu41EkNNwfDRgY
	 Xoa32MM8onZpkHR1CyNTtc4/pA0pVRDo6g0W/+tBG6d8UQ7QmP8Vz1ODT894w0vAuS
	 qJUTAju48Upug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C1CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176209379357.11874.7684806281753383818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9286a16f528da21edb799319466bb972c26f3d889a19138f7f3b1ef68dc98426
Date: Sun, 02 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762093793
