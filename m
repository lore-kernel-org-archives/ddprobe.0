Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECA072618
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771616094; cv=none; b=b704RSuruI9J8YY/fydBmM8cQvyhl62oO0bgvTOB0uutefo5t/AFta8Yaa2MNIBtKMOYzqvQ9MpfjCZlwwPnOD7ie5MZb4vUW8yfB2lqEhrMj6zLrc6h8gSFSHSXIYSJsyY4cEOQpwk6JYCMBf/jS/px7u2Hnmd4ORG1sFfLz7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771616094; c=relaxed/simple;
	bh=Vef8SB/Rtum5snJ91IYmZBPcKzY+Qrwp7uRpnWqIfcg=;
	h=To:Subject:From:Message-Id:Date; b=aeP8Umk74Ljgzb3kgPrR1Q+QMylsy0uiT6LEef259fHQxtPvhdiZiQQgSnUPMt3tRbEzycwZOT465D+m/jIRUKL3R4pYDpoLCBtf5uKBLlFVx89jShAo5RrTOKRV/3Hk62eE+3rbRd7Qk7QeBrW7kUejpaLWvf02qUv2GQkOKb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+Xsz/YS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+Xsz/YS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3EF4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771616093;
	bh=Vef8SB/Rtum5snJ91IYmZBPcKzY+Qrwp7uRpnWqIfcg=;
	h=To:Subject:From:Date:From;
	b=K+Xsz/YSIMQo+yN2vC90wVYPGeRv1LYEGsyoWrTyCPG4weRSq7CmpaCgMHWxYf9w+
	 wYUp2h0YgLXGE9SnO1SZ+X+iuUlZ6LdQoGR8CK6itfhBPK0MCL8ART8be5tSO2w5AL
	 i8cwcz/wFeZrwJU59mf6wUYpnmYd4mVr+v/KgduG9dCZi8C/LpAOzmM4KwbocOeEjl
	 K5QNYIE1p7uXu4T7CTqZS1NOwhil9iHfHnQMZfeJrjfrHcpj903oFwq3kDEyOD7SHa
	 DbE3XHlqvn7y1JSi3qpZv63GdW+e2nVYzCGAEVW6/NYYtRZbGiP7QV24T4GiiRA/7E
	 /Iy0MCNS2bzyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A389C5AD69
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161609361.21363.16764576633551656024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eff5f34111e0e8a8541c6d08937cd8452bb46484597e40b095e54fce24c95d4
Date: Fri, 20 Feb 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771616093
