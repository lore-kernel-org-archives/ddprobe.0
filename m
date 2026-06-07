Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357603A1A38
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780834474; cv=none; b=AignXaNRxnIHNsnImnTZAygxe/CUFguqjiPMMNtcOMPKct8UTfLUzR+XkXbdI/7DPwlFluLK6XWVNQlPRRvvz6Q3dLbRdV7ojIH7xc47jl67v5kReMv1vvtVLSZstZ70beEsmVdWv8O7oahsmGQ3wSbJYOLIWj3snFFOVLa7Z2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780834474; c=relaxed/simple;
	bh=Kx8tepWfu0/IYigqpw7ZBmf4b7/KiHoQPs9zlieVu4I=;
	h=To:Subject:From:Message-Id:Date; b=B4pSbfAs2beC/t43xue/A9fmpH1GZ1Uf8MRJz4ki2iVUHycdUb6aU5ASETeR76hjGIlFijdhrcG0+Sxs6aJN+fZT+eFWPeGa+0U+wRQcrXlvGgfnCpl9QD1mU4s1uL7ZErwMfG950FyhWCVL1E1PVLqM4ZTkeQgBjQyRl0LBQ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WEiWrveu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WEiWrveu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ED4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780834473;
	bh=Kx8tepWfu0/IYigqpw7ZBmf4b7/KiHoQPs9zlieVu4I=;
	h=To:Subject:From:Date:From;
	b=WEiWrveunYfS+vjLL++gkL3L2yV3TaCPA3S+cDLVx5znGiI9w12SicZbmUFi2WUmW
	 ixe1gE6+eQsd6tAlspkZXNYHgghFj3kscG5FX5Th+cdHXE/C9UR/kWguWC+luiP3BP
	 KvNGyjmHMLHOwBzFQ/iOesWwSLEcucdMM7icPVBgkgnjbPcxJju2/jb7gJh8kGfn71
	 Vj8hlUzR7Lt8g8hie1oCMUvpRjQuUdfJuKWy3KwMz52QdnlVulahdVZz7jsmwnfkn4
	 Z7Fpl7XqEuPgFzZ+VPbDmKBvvAlvF7m+u8dbbZ/9BIMwV01nA+XNzj+FBjFudtLtno
	 tATaer6xKx5xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B645ACD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083447373.6826.1645736783860859098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e683d964c72aa3c41dba2cc852d59d8165cf8328ed646f776d104aa4b11a5a54
Date: Sun, 07 Jun 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780834473
