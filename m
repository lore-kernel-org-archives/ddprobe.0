Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B581FDD
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745532594; cv=none; b=IHfJEJ0nmay6XQNaKbVD59HUO0gF/cv8kZ4F7v0GunIgaLUjaZP9PLrASJEj24XjZkRCuMmB/X7x9E0MKAR78z95JNwBJ/roXimtR0ois8XEx6Ip2Ze5xIHoElgpEJxEhfOb9p5zlHf+1QZEMkm4DH1pVmTBsE4GcLRxvaAoZmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745532594; c=relaxed/simple;
	bh=nwAq3N0e9hqG/G2cT6gtiYZ3xAuSwSIUxorbwz6hjsc=;
	h=To:Subject:From:Message-Id:Date; b=Ruh7E30xyUiU2lOd3FkjCbIuHhFIeU91tohOYCjYBmgGF1mmgv118aC2a9cu2BJKyd5kLsRMrT619xfMoi3TOgL87PCtHjeqw2cwQqqvZZERktVmTfF3Zb4K2lnI0grvrisJEgoalZ8tJLnoAfZHGf8yauajv19y9I7HggGPNNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxDAekKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxDAekKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14CFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745532593;
	bh=nwAq3N0e9hqG/G2cT6gtiYZ3xAuSwSIUxorbwz6hjsc=;
	h=To:Subject:From:Date:From;
	b=bxDAekKLFjG4+An+x3rdoHOSoB8v/TGD7wFkb2Hypx07LfS6ctI+EY9DH7EtOCWT0
	 6Gfy2gLjRTEWvvbGVl+MZdQBbpQFLvyT6HY+ukr0FiULsuBdtx6TM4FmLu5wzSJRXX
	 dbZyoYfEMdRd8QVzIOsp+gxBAqiS8S9wG4LrBgBhubhjKZok9cpuNp79s/xQ89RNPP
	 DIrkqJxXYch5gqf5xcjHapTu5/2uTrBJh6jfi72TapjAxyjJyYlB5lK8ue18bQqBNe
	 /mTKOHSS7I79NeTFjJnj+jHQttfqP4zQjMhRjk3NfPowWp2V+lPNqavkWNCDjeXt/s
	 Th2l5CThXCIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E732C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174553259357.738.2325770245997069791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0cf489ed1e0f2d23d8c5b4df4a3d550c8c14ed1998f65da61df993e2c96b9c
Date: Thu, 24 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745532593
