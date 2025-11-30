Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7BB6FBF
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764520374; cv=none; b=cNRsW5hhDbPfzbW76b52JyNEFA5A6mrBgDP7hXoVJ46N8XuVfvvYq+SItG9dZz/mdJAg9FkDHP+y5Bg7MAPf1qWt/vKRTWJvKiH8XqjtdVwM289xEiEkgqXZ/2SDE+MY9jktnGnJK/IaTTfc8irXArSBcXxaTg6zZiHL1E3NZm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764520374; c=relaxed/simple;
	bh=J5l7CPrxtBsqbzZQY6se+QcMitW6qJEjupnXFSc8XYk=;
	h=To:Subject:From:Message-Id:Date; b=MsJyiGAMbLXz2NGIRBdgbAB3O9k/b8oXXBHtBz2X7v+CM43uoDskXXy+D+ZsxY/y1SZoDv4uKcCmD9GJrQVfOrG1k6YovsVLvS5wI+effzKtkQ1kvCQghqEp2y6iBjYhHCpOfL2Gc1jlk0gnYQTjLYC/bufc5UKfCaVzLdqwC4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzdjGCTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzdjGCTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF03C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764520373;
	bh=J5l7CPrxtBsqbzZQY6se+QcMitW6qJEjupnXFSc8XYk=;
	h=To:Subject:From:Date:From;
	b=kzdjGCTE47bR5P1ECKbcrGFXZwgvhl25+Zl2oQwMMeyzToNrMoHBwOj8vq+eyhYV3
	 FGkJB8gbUINz5IfRYBzXgnfU/mBNgO5OlDJvLEjfMPU/PNY9IABwA4KKcerSZAiFt7
	 YcaNWY3ClyTQKEVazgFvMldtdmfDWL9k/UqNm78VNGG/MHx4jn+Qjxt052M3I93Evt
	 3TOoWw5I1D213MFM3zCTl55nuvqYqiDlR+MOAoGEaVa3Skli4UXeRDEccaVaTEfvMu
	 kSVOCZ3PIRiDzzTPQzx++2B+PaK2OnAAE5MRqfGO88/fsAhFKU9SfFySiBE6intmW0
	 M3ZYT5K7KaRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97840D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452037359.22223.1378753775033114432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954a7830917438649d9097be251fd7f12d112f0ae501c07171e90970acff14d4
Date: Sun, 30 Nov 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764520373
