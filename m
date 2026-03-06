Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B40248176
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772759094; cv=none; b=MGVtxzDTprW7WsNzL4E1J+Jc/6ktmQeCVHzxwFdOUoq7+RSSTOtMaMJJNLwp120bkNLkJHNjx6JGTN0XM3yeNXTCyqtQog8NTLWw7VSBsyiAFRliCG5PBxFXeSl9N1mi1Av5x2WvYozumbI0bWTQm7Dm5lJJaotrVhYCY3pEwd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772759094; c=relaxed/simple;
	bh=qjSj9R/GExOHoYaQT1AHBjQ/Jwn51r50Pg2sgezfYpI=;
	h=To:Subject:From:Message-Id:Date; b=bmRGb1zK+JDkvSd9xviIM33vO+sCTOKCdONowXRABwKjMo+rFNGzdpRqH3p7fQMtSU7GZPenHv0E/YEX7R+b0Fts8DwZXItHYci8SdqIs4y+vAF584hswRv/Rf0UsLkMCelVVlLE/Xdrjf0+hmmzimk5wH2j0LJxGYGEC2b4myo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9lEYKro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9lEYKro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B90C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772759093;
	bh=qjSj9R/GExOHoYaQT1AHBjQ/Jwn51r50Pg2sgezfYpI=;
	h=To:Subject:From:Date:From;
	b=H9lEYKrokPdGo3qrfhjN41y6Z76ir7uCZyYERkJ+ojurGOv544mLb0hrkb0RgC8bO
	 Kjp65kKRXA8zD0faIgE0gXB06hfY9boiLwlPDtGI54gE2yk4czXgO9Bty6jGcTsbJG
	 M3okxXIN/8le5MIwEtCxTjVNLHNyrLk1wOJZqBRz7SkNKkHWyhLGKqqex+biDrO2S/
	 VwE5XN8tbtpYfNFW9kwDYijyu39U2iHnaTV5VZNK+0byI8sL/e6kmpC+ZQuMT32lqt
	 dE0/hTPpMutWCJJvyqETusW71f1o7h5DNy0k0sTpAi+n2NDnDyzbab/zdsR3P41r1U
	 Ex3aggxXqMRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90042F513EB
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275909358.30390.17166858573574413060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f67486ba1d5bac1139d094cd5b7a8436a19ebb0b1895d100aa3ad7b2bf04813
Date: Fri, 06 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772759093
