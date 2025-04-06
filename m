Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56547133987
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743941994; cv=none; b=nbmJGButsJH9Ang+Rn9wJpHIOeq8kxteET72LdL2vl3Gz8C4hZb06w2hl5/3BuKwLR9v/D1zDa1yFoue6MPYKuLhzjoFGMmNpTUwdqB11ajxnEYOTOIR9Ry/SppSVwNA6qg+uaNNxkx1mWNXOmMCS/CTrI3iSsRFYR9xjN77/Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743941994; c=relaxed/simple;
	bh=3uibEvMe7/ym28SAak5C3EDgmusxJjy+9nEZMFGAJfI=;
	h=To:Subject:From:Message-Id:Date; b=m72kEx9UpyvcRv223971yprsA+uHT0wHDR2cyXwAP0U/8cTQU9kP/PcfdlIzlPpzZlvwGd02xZRiJp3ChcwXxRMmikBpLFXEv6+aWcM+COQcb2XYChNJAy/NuaCwi9diHY5vImypGTsiemNA7eMnbfdPaojdb9BChZdChCgPdQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hFLOPxiy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hFLOPxiy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB31EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743941993;
	bh=3uibEvMe7/ym28SAak5C3EDgmusxJjy+9nEZMFGAJfI=;
	h=To:Subject:From:Date:From;
	b=hFLOPxiyv0qvjak9Dktf8kY7mXUsn/u9rkRZhKLAVfzrZrp6MvVsiX2+lYjhOwTiI
	 4KdiCtbn4W2HDGT/LiM4y9mg0V13ryxIdtcnU2r46nSkkvwxmVZZcfvSj0mVTH67Rm
	 l6e6bk36COLrjMMFJ5vQQq70FgejiUF4ib9hn2cBwWmo/AkW6pUahVYBa6VElYVx6/
	 j02v7bqYevCt6BWaRbcAshxGy01JzwWwoV6gvTwoAsTOaBpHeupQAMsFhP35Cz5CMh
	 3GzwDBZP/1lNKDMp1s9+4XQb+l3Hzer0HIGI+0pRnr8fVG//VUMivirSkf/ComrdBd
	 WEcYpr8rIhIng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966D4C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394199358.24447.5221242048610579718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673e9270686ca6e07d2753f56750050054ec6c1365486a4724f8714cfaa83292
Date: Sun, 06 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743941993
