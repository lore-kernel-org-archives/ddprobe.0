Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D641BA070
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718901023; cv=none; b=f0MYS2VzLLh8+PPsHDKqdygXTqVN4tsZuIM+V/9rThf6EthDPVFjTMsPqmlDx9dWfRqs0GU9k0yVZsLgV2MJiLB8HD0pc16EbZDFYNtU/1jw3h2+Ra03bpUPPx1p0/VlIJJ2u47wrusVTraMu63hK1dgC5qB5c862wr84XdJIyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718901023; c=relaxed/simple;
	bh=se/EfFdY+Lf4W8JbssaZsPgTGnXlvRuqYR6OXsLocFs=;
	h=To:Subject:From:Message-Id:Date; b=TEgwk2upUhl73Ns2dCp1b4yZ7RabE/qPqmZ/hwTM0G7kWPCN7kFf12MYJqTZId+D/DPQRFxf5YJiSAF7IZcT3nKKHU98IsnBrNgtGN4xuwXYNqCVrwbIWnnLUqIlTBNEpy87hqfRnvAMAmWV/sDtbT4GO1gXRHmlgfU1oUROTZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LOCa0OC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LOCa0OC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E17A1C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718901022;
	bh=se/EfFdY+Lf4W8JbssaZsPgTGnXlvRuqYR6OXsLocFs=;
	h=To:Subject:From:Date:From;
	b=LOCa0OC6a9sHqmatF3CqeJonHuvMoFjrfrodwTn/bSKV+b6iR4BhVJcA1A+pngbNd
	 Y5FlfxGMcYsJmrLL8RwjgvWQ3N3EFSjOhZGF++zwQfdkKbFc7zhizH5cDzZuV95iBq
	 +g5+EVB7Fau8SEcp14o7FYpaLLCtXm9QztisrCNTCW0Eq1bglvyjAYCluCZ8vw70Fr
	 Tlx+nkTgtgvLwk9MLdb34G62nMMiNE8uhIPkWXGdrdwZccRrrKtktYmfJPhVrjFba2
	 V0nrh8bnHN7hOm93JElVNYacJniCWbUr9/GLKO3oJciqnZ7vTAZ93QChJTvcSBo7/B
	 iL8K+Eb3X+dMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC74EC2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 16:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890102282.3278.14833642190696027067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1c5db86d6959ebc38ba730c0554975cfb405757a18c35bdff97d279e7ee9ab
Date: Thu, 20 Jun 2024 16:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718901022
