Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422E81F9A89
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746648594; cv=none; b=lJ2oGSd9Y4MLQInJftvqaGVp+YTKWqNxI/axXhfOK78YkQWjys6Qwkw5bvgmBYrAv9PfxNNZjOWvaDynK1AwGg5v5EMNuqwu91Zih91f+sLANAzxtDzrLhEy0RtJF7UudGjEFVUiIf0Bmfo9qcZcoXEXL0SCHI2pTxdpFZNoZb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746648594; c=relaxed/simple;
	bh=TX7g7pPr7nxeNBOJXaeJshTP59o+7jwerr5zDbn88SQ=;
	h=To:Subject:From:Message-Id:Date; b=fZAuTqKbMGBz6fQOpORXN/qiHsNGeeLV1pb4wJapdZ3o6jLxQLHfNpVmPIaDsEE0DZEVXPuI40aND092glnm6ID6JoO6XywdooHaEM0JJtg9CaEBeTP2wUWXzfiyQb/1EnyXrpc8VldfR3UATqKAamlIoNdIEdjBeFFaD7taTPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXGC3lci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXGC3lci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE32C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746648593;
	bh=TX7g7pPr7nxeNBOJXaeJshTP59o+7jwerr5zDbn88SQ=;
	h=To:Subject:From:Date:From;
	b=rXGC3lcifyqguKaqexJzZPC7FMqQk/SxeBEDZWPE2oJ/cyV2qmyaw4rsN3PRMH1Tp
	 B/ncKBc/LKPwRWc+7RRR7rPG2DTARVntonFEIaH12kBdkdNmUg7S0k/p0MCUMV+vvs
	 Q9T410XGxNPO+7Qfob7e9brVDDqgRMdG7KH8uSyiapHf106kLTG3vfTjOmKPbi2aBK
	 p3APu2rx3hajJGMApHnH+XyuSB36MEC7xv8WpqPPKprqPBY796GdT+34LX5VZs26S4
	 ZzP56UclBd9ZAWWAsL5BA+FoJ70+f4iBeWEV/hQC4e8G3jOOJBvXB0SrccuNkSdVVB
	 0v7/nx+HRo8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985A0C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174664859361.12592.11985765374286284080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16866f3e6ac7b9ed44fbffa536a31cf26a2e596bbfbe20f5ef254ca7f75b4007
Date: Wed, 07 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746648593
