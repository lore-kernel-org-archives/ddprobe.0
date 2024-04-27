Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9D43E493
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714227143; cv=none; b=j5old5vcEZa4vRHIXvKhDE5BZWIX1n7hP0Rho32wD0PYOXYm3DLCqJqU1oRl4HhPl0LOmGWpejZsL6o2pe61Hx/sC6MIFFNNzpbrJXjEYeljRDVJZkU6dVKFIQ8zA0HayME/BEsZ26lKthA/KTUD6lb23/S2j6mhqngDCTXyiVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714227143; c=relaxed/simple;
	bh=bKpuaQS02UMJTyQV8OpEFXgch2TjoRH64LkPk6Gd/SM=;
	h=To:Subject:From:Message-Id:Date; b=q1PiHtyb6XdrE6DCr7Ie5p/LDzj7QDvbbaULUcJHORZsD2qjfpQLP7b3hMp6Oi5ht7CDOS/N3rd10clWzD/rWi8nAFrp+SEGdUrHjhYvyc/bLxClM6b/ktltADOYUiml4UNuxfKavUG2n0V4AJOwa4+0hDBTDsjLhfnkA7zC7y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHIoiKzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHIoiKzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4251C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714227142;
	bh=bKpuaQS02UMJTyQV8OpEFXgch2TjoRH64LkPk6Gd/SM=;
	h=To:Subject:From:Date:From;
	b=eHIoiKzvT9WdaXXOtxxusBA/KbriOgJlXt4Sw/12T0JTckiMq5hICOMI7OHwx0nT0
	 hBaSvsv544fbKZmLGzBwjxrOR6ZNdMFFxcDmlDaLLykamSyMWReKNPeLiibaz0nENR
	 XIIwBEk7QhA/YY+fz0V20GCm8zqQJAjAWP5yViE9hWp8hzqczAzCVX/WB6ua66J4Ms
	 IUQleZ1jNHy4Xtz9uDDgf0J0kmeH2nyTEUJbilDseF+Wn9EcC+1dN7xY+/ZoU953ou
	 5ln+foj9iFdLue+Am+ZA8FR4ePCLlifQEfwcTkzdxI6fD0QZzVFvnfND3caiE6GHk7
	 1sU+LYcRLcdfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C36F2C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171422714279.18435.7059129312588035391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c792b7e78bb54f163b1e070a76a94131790a6b1f62b13b6d324312002f03232
Date: Sat, 27 Apr 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714227142
