Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6696315442C
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719070343; cv=none; b=GlkWRoEMxUnzQewmWLVpVAJESRV3bHgamXHyRcMkdniFW+WL6WaE06Nk6YHu3Kd656LnWj3RgRynKTg9NQCO+Px3JkIpN4acVH/9PqVoyK/6qD7EyxvrV1BG08zor2XV/gfx+6UR+4SWLG38FADkU5r4YA2UJBon9g4OZfdK8Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719070343; c=relaxed/simple;
	bh=laV53YbLde92WCjpxNqUSpjmQ5k336379lRgC2ELNnE=;
	h=To:Subject:From:Message-Id:Date; b=bqxnH40gpsGvRMHEbCfw40l//yz7DMg6vIangkVwuVaKt/cCS67JSKKZp4sXpLCPXfVnhDBZNTGKYZixkfhxAebNa8fl6gAm3d/m7jWbyjp+anWVCqGHrtclh94X7/Ra7qrZ6lrxZeHys097v0vCwTSmz7vLg168bZIbQ1hwfB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOyGLx3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOyGLx3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF67BC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719070342;
	bh=laV53YbLde92WCjpxNqUSpjmQ5k336379lRgC2ELNnE=;
	h=To:Subject:From:Date:From;
	b=KOyGLx3VSmsKhsQOiXTjNgRAdetSO0e8NJlhtvUke9QAQ9C8HGSXHzi9KHbfx6lyp
	 gBJfqU8zrpS7KJWcT4qLs/zZt/Uz0qy2ibD+juKslgvTZt+0eg+URBoC+Sl+5nA0w1
	 14ZSz+FIL+3o6ctn/Zr1TzWdOalJ2jkU8EWK5QaGLSt0tNAI98rI19rSzV9Nj8BMck
	 hjRqb9htKqHxY3mnJ6YAU2cBIowBjfuhmxaoM7awrKxoWAjYFq77jH2vRVl8EbxKjp
	 QkFDyet/6jZpOaF2H+wgfvIAQDO+f14ihrumydF9LabLgqUwxo3a7m1Xwy+P2SzXJf
	 BXyOuRb8nVIlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79B0C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171907034279.6898.9873865853310763337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7813ba7246f0593ef2d3c20d2be273725ac2c5150ab7c510b7b5dd2ecdd2174d
Date: Sat, 22 Jun 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719070342
