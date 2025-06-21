Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348571F09B3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750528794; cv=none; b=EG5huQ0QUJazKM/USpUMRw2ySWL5eaj3CGY/oSOULGbQCHGgRG33465KoqAcGbuIVyh6epHdvmDXqX9Mzn64wnbs5F/EMoCmPgL7DSS0fIVyGvG/HIXiDdJdAzL/DIR6wwT2VkPc9Cp1LjzpgbVwLZVlusuJsMeR+2M4tip+IrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750528794; c=relaxed/simple;
	bh=dag+FTPudqS8cM8B4t0hSeV/+YCK+oSUmIb4kNrcvhM=;
	h=To:Subject:From:Message-Id:Date; b=CQsfkaxgAUXiRWfjNpJ7p195LWDNm2FoGezHS4zzNIvdbwyOeyoKY3EHqe8a6rEOb/HiS9OJ/BeBP+38QSxceuyGCA08k+Rb1wcbvVYWeHhmrMPabc3i9eWDhIq/jW9XrYFsfVPrqcvcoh30NSll7a74uITEpc4uIvtavxbWo4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiUunYal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiUunYal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B75C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750528793;
	bh=dag+FTPudqS8cM8B4t0hSeV/+YCK+oSUmIb4kNrcvhM=;
	h=To:Subject:From:Date:From;
	b=XiUunYalEtxz+oFq57iVV75JgJo/++43arKxMUV8CKtDzJVayC+7RB4HO/WyjUyPU
	 V8kwatYTddlACClqpznDq67YA2UvwZej099IUy3dXmph86Wd5h+ZXtynq3nnXOJDW+
	 gH5p8d1wZ0U2xlAc3gIWfd21A3S5zO9vOM06oYYWYaCiwHWgUGQ6xRpWnZm1PHq/fY
	 vGDK7/iRE9nXEc2S4RoUSzkOo+z5WbNxIZnzRBgSi/TAtr4X5DwWFb7eIFF0DuoBa9
	 rOEA++tfO/B6U04qrxoOr18ialxw8wCLkwkG4lOs9BTtmeNNOpTp0aLjGABNmRSpOF
	 zJwA0MdEMKn1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C74C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175052879357.30348.8374415750777163538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ef18d8f961249e6e91ffeba0186730a0c01aa8e9b2d66ca1e1e42e92cd2565
Date: Sat, 21 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750528793
