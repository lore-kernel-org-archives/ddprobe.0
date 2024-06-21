Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7621C02
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718960543; cv=none; b=bnqUDx15QJLi7hlX60ScNiCuO6hZZkal7FhWBBu5pbefFg7O58d512PEwFnl2Fb0EE/8W/cDdC8N1VYsXZz+VidlvTeMOhtMBiWEkOTE2Ldey4QAjBtT64TXX4oFfLyor+IRiE3ecznDXMFvhgPzOw67atLJ9hk7ysAZdJ8e298=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718960543; c=relaxed/simple;
	bh=mZ4boY4D0ElVGHQGQSSUUAWjozNIuzAIja2CRzxI9oA=;
	h=To:Subject:From:Message-Id:Date; b=H2WVTTSU7eksQHQmx14iPkyz0a3pxD5V9GxjhEdfRGDadhMlbMf8kyGSrfiVdNubuYrGJpW3Ax+gThgvUqrPflpImGOhI9i8+yQ+o86wSrsimGfshjXJsfT+02rCmcVRvz599eFIrIB3HF8S/L3Y3rEcjQYh5ngvvZkA3OOwGKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb7SavzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb7SavzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1DF2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718960542;
	bh=mZ4boY4D0ElVGHQGQSSUUAWjozNIuzAIja2CRzxI9oA=;
	h=To:Subject:From:Date:From;
	b=Pb7SavzRzvZYfS7gyyy0LBHXSC3+EiM49b+Gc12R2GRUB0tW1DeTKMbq2Qv6kBop5
	 pYaNwJtb38NvqzrxI3owU2a4wt33jHKEBKUM3iDAcvrjsnyUnjF1F19VSK81kS5Plq
	 xN+brrhyr6UO5pRzTiwQOQHB2Bs/LQTqPmCtBNbtsDLiXLyAWv7RS+vVT3Ykam0hst
	 y1J0IBTa3bswCP9+MeUx5m1FnUNUdoETzltt3/MBoblv4bAWN6UcKcCa/2axcUj5yo
	 SHLk9cUhzf0yBgY+8zhd7tpFAUHo6b/GOs44CJAbvk4bd4lok7yzlZO1I8yC42ipAm
	 9thghIRuUGm+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC730C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896054276.8285.2764899122945832522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458eeed538088905b9e45b926cb6debca43f5613a627facaa807a20829ceae6d
Date: Fri, 21 Jun 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718960542
