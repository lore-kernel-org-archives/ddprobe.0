Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02562176AA4
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717161263; cv=none; b=jMU5X/Boe6VousxS7h25JEtXUqYW4P6kWM+zG7ErepwYuwpzVo49mD7oEXqxGe/CqURV6RgZ6QcQ67C1zQ9jyJzRVqOkzC5dURrGFuWZzx3lFULPXcTDLVheE4yPpWymjisLCgsyZTCZDQztWZxGsnpmJXQGey3KErM5JpUPRJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717161263; c=relaxed/simple;
	bh=Ax4KsUIEz6ardiXRNsQRD/fcvTXQ/QaCI/SDKLv4d4c=;
	h=To:Subject:From:Message-Id:Date; b=p870decAqreP6+oFXoLWrAnqgEX9QdsGxUycRcH3t8p5/uCXHbl8ZQpY2i2a7HUn+RlL/yrSNLUBr+2Ocqdfb8SDwi2wU/LKcinSSBCuK4RrSeq8JJDRCNAjb+Dsb1TBwfj2mn8E7PMgPbLmFsluABMYTW7w4bkBhXtZlEHFDZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQH+DJCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQH+DJCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E63C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717161262;
	bh=Ax4KsUIEz6ardiXRNsQRD/fcvTXQ/QaCI/SDKLv4d4c=;
	h=To:Subject:From:Date:From;
	b=XQH+DJCpdv3/OqQ76hDxzxuJ9a/sBXtCsJFDB49YAzC187IpYGi9VsGF2uv+tXiVU
	 wDYvKjUG9e4nga3qg3lOyKdqCzLUYaj3PPW7C1Jvuo/AZrwlrveu/w9PlrsfBILivp
	 FvaGgiS0AueF7HDhJUyxnV8F6Ui2uCeXk7bYm0KNQY5ps76l/CnPIYTFa6///DIkoB
	 y4s5ChZYnC2RzFOz312d2dyFWSRnNElMdzxQSSUyG7g3n/x2+Kx7OEAithEiQPCHaU
	 nTkj178qp8DVBzFaXqNeXD82Zuvt7u1xW3RP/cYESSsQ/oLuB3IBqHUAsAjAh57g58
	 hYRI8a5a8ZeVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CBFC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171716126279.377.5189640799680344042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ef4880fd8a15d1e00fb6387674c13124fc8f42a952d0c6e6fb5f87f6d2f74a
Date: Fri, 31 May 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717161262
