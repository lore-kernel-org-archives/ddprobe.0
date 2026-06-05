Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A64260566
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780658074; cv=none; b=DCWFoOrAljgsXtM3Ycry4iCBbUm0gD1F/GZ4bP4seDm6WJd77EmEajRcCSzTWiY8jW3VBaOXM8WMiO6LZqL7IaGl4653nnrw61EXQ/Pq/RfsZhsbsK105d5SG20eJPdnW56N1NlwjmgirCXYn00p148kunSfsqmE8J9FDG2tyJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780658074; c=relaxed/simple;
	bh=2I6IfhgNJ11X/GIfguZxI+zrTifhycWFJbloQfOqrJg=;
	h=To:Subject:From:Message-Id:Date; b=nPj4esuv8X20I3AJVWSMGhjKZoevs0eEeJIRzB74zZmVy/Wsvwl2nTgAA08FLmDJIsr+WDTsVHoNzGZGR9fQcYjgkReQ/maTXtp9BnRxJZdGymDmoQmaiJ71+YjNX4HGlTRJ01rfpmDlvtO0b51pBVraEV7e/oCQv+qlsz6rPLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3M0Xb/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3M0Xb/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ED2C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780658073;
	bh=2I6IfhgNJ11X/GIfguZxI+zrTifhycWFJbloQfOqrJg=;
	h=To:Subject:From:Date:From;
	b=h3M0Xb/wtyHNzqqm8/MXUbC241wigVGtp6wbszCyy+09cTtvTDhnoZfIExC6aQ2qg
	 VZaRkPnceFtBRH/c/RjesxkLuFmqsa7ycfEuXil58gP+mhNxLh9f1YnPrPpZWmNOIc
	 KZsdLnlatC/l0A3gdaOANc42qbegdYZ0wQRkT2VBlFGnbyFW8MB30R5/Yut1ftYeeC
	 Xhh6UF1EeXLkJ+O4IbH9tFKzdD2GXAOS71CvLcpjLD15WUGlZULHEsgsIc56Ja7H4a
	 /6ydOA712ajiJq1YufKYcIcNtZLY4Va0llZ7m8lD5jeY0vD/k656lbFodydfbLjvxN
	 rVhw5DuyVqCGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABCECD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065807369.1709.7616514784457739963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d29cd08f3d9fc5ee5eb0e0011c3a6f01634143cff25513f9cc67b4a12e5aca
Date: Fri, 05 Jun 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780658073
