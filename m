Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7EC192B73
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726179954; cv=none; b=LtHRBJRG60uXnDmbjcI1WLTEr/o2chN2jzIfsFnTbHDc4QBmv55xGD+iuFu6wlu9wLtRbyvqks3JW/YGRHeYXMNq4APJOnXdnw3A9Nb4HmwMgM4WR7q5H50EvDk7gDNKtQ4JwfWFmmT3BMVAtfNs496pPK+EeyjUR5pvcWLBrH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726179954; c=relaxed/simple;
	bh=X/XxRV2k6H9u6WgAxHPQcs4uKk3L6BI682XhjG0j9EM=;
	h=To:Subject:From:Message-Id:Date; b=qlJVC4acWyFDFEq4LVhmNrkHcqES7Lf/EwczK8ujccXuPD7RkewpwEj95PZT8Qbr/xYHpz2i8DcGxJXrJGKNIkMPJ7VomW2pRkEtnchN55GY/ms7aVtKdL/EfUrhYfW48IU1vmJgPx5RPs9U4l9irOzfjXyUu36tqMnDACprjv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJto2FGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJto2FGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C84C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726179953;
	bh=X/XxRV2k6H9u6WgAxHPQcs4uKk3L6BI682XhjG0j9EM=;
	h=To:Subject:From:Date:From;
	b=RJto2FGRpAEi3svvHR4tjRGAFpyBoUvTEnHvZE7o3loZseUZm5cxUSGAO86oSUbR8
	 /WG/21ZNZDFbmGvql8gOFHnaiNth258BYwAxreVwFbaGrNoi2tIiqUQPP/qkUVewkP
	 FmMyEpZOejbAr3FJHM+kGfSb3gv29JRE5YOCf4HyTV+GUgm+vLeak8vrcYs+/KbcA1
	 R5grcPZqD66/LhgKltUxlUtyzr7GwuQFjZAOJJ29h+GwOL4gyYa5ulad2KcVyY88b1
	 XM8lojWX0lEWQP9DPRA4uS+tEJlXxxttmpA01JxOXnskNUJ0imak3Dvm1LBNid1wQM
	 rPo+rMy2ifkKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992CAEEE26C
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172617995361.11310.17435669614976841215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345ba700114aec6f8d97e15b4f59a7214dbcf2b94ad6e3d8f60479c5d59b5983
Date: Thu, 12 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726179953
