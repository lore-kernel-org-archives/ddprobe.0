Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2409B8462
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777085254; cv=none; b=rnlX/K2ciUm8uYLfjIti4Meb/zkiskLFMz13TXi5v2tAM9kTdjbekItyYMAxFSm2UEkYVS2cf1drrmLkKPZgJHxNuSCkQo6Zi1Wv11kGQ8hEatwf9XEHVR4NFntmd44y84wYmhQcc9PyrP4lld00ay1pkuS1dJPa+iDV53i6Uzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777085254; c=relaxed/simple;
	bh=c5cqILdiQvG34Zyqjg1Lk8JMhdzIK8sePPOXbVhfzk8=;
	h=To:Subject:From:Message-Id:Date; b=RM3XlmlU0nkf/NTa1lNFlubd+wm7dsaqnI3wTU4PNftBd4Rd6XTZTFXu2A6AhhyVlDpwP43d7XzPYiLlzXzY1Mx01zw7KhuEDxj4Sooy/AOuB+Ez1THBvbx6BnqaO4B/Bbg6V2E42WHaXzgGi51Go3t07SPyVNqdybRWIEjeNiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmBkHkCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmBkHkCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC2FC19425
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777085253;
	bh=c5cqILdiQvG34Zyqjg1Lk8JMhdzIK8sePPOXbVhfzk8=;
	h=To:Subject:From:Date:From;
	b=FmBkHkCN0oVjVouaTvQ9gvr01f0rv27gTo4Ysmyx5YR6N7q5E/53Ac0s3Si3UZKgN
	 ly7mtsO6JTchtvw5X18dcEnv4CnZd/baQ596OTDr1FtYzLYoc/XztEtCe9XGIUFFZ2
	 IOXV7iPH8rjwPT7xP04k72k3KcK1U+vN8jMPe3npjdi1czcBIdajICRFGLrl10IX+s
	 OUnnSk302IjBbTppCLuNunq5URDHJv165QTKEcuGMLfOhpzqbeDlT1YD9w0VET65g4
	 Piz76KW+BMmbtxEctiwuSq/J8jM0hKTNvG9KXcCUlzfJcBm7r2Pnomhim7Pxa+kPBa
	 nxZmZAGHAIfMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8CBFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708525368.6970.3768975281914710779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68192876d8aa45d5ed3f6e9fb22f51fb00a3efa8af2aae503ceeec1569ac317c
Date: Sat, 25 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777085253
