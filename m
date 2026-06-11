Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1153A1E81
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781181394; cv=none; b=DqjGOB1sJZ8JFsYukTGkvwhFZ3BIA1Tj5zht7DzRfF886TH9ML4r8hi2NbxnrdlIsaNOkaKVQ77SF50tpsVczMJrDvIAWUgAmzXFUSSqc8ewWobNgdfPi+VkZHQkHDutoqnHCyAAHJNK0XFf89EcaMqhR6312OyNLDbwa23UV/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781181394; c=relaxed/simple;
	bh=a5u9tFp0qUaMmCX/OcO1qdagW4LIHVYbEqVGNFjP56Y=;
	h=To:Subject:From:Message-Id:Date; b=bJUMTmf69evPn8Uy8/CgquoVloAxztclaKifh1WHt3tUBME8HW+KVpbRuTlIO5oXdBSwNfGVL+KznetV3k0TyDqmeyyK9MiVlpbEMDRKcSVReclFv7XqR9oJo4Bo5MG9CSiKixFE6oCJQFLV1d0MVU16pxryr68OQLaWowOr6ZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XL8oDN/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XL8oDN/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF220C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781181393;
	bh=a5u9tFp0qUaMmCX/OcO1qdagW4LIHVYbEqVGNFjP56Y=;
	h=To:Subject:From:Date:From;
	b=XL8oDN/1rtn3i7/s+eA1CT6X9Ih7su784NIS4pnLMO7we9vjtkf+VFKm0eKzfXhyt
	 m3Y4KQiTHDDBo19DggeakOM08xxyT6LZMdP1AzbTllTb2gvX8Ne9ZVNxTfTkBiDWbw
	 QkSTk+X4btDvKpnt7ZsP1bG7p5FVYJK8EG7RylSkbFG5ejSVZAtFuojx3tg6t0hP4o
	 g99fNJD3kdWo/Qz8jdeY0PwLSw7dTKWV+Ngm9bb/XmeKQcR835mioWYdfOxB7PawZR
	 /R4+qx6s77QpimBQG8uagdsOQaan7SFl9OqCawQ9IQvOdpjaQaQgUA+IG/92iCKCt7
	 xDWQVzYlW+ddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA06BCD98CE
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178118139368.32363.15342406424792436196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36556daacbe6e64e2837d4e9c24901d9cbdd961d97290f0795ebbfda4a5e4f4a
Date: Thu, 11 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781181393
