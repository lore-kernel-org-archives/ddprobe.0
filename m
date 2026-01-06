Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AD82C11FE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767736434; cv=none; b=a9uWva9sUOrrToqFRg2iZswqaHkz504VnnXomfmWqu/Zf9gJGlRb/05oI3uEGbhmmFy/eKF+7jtv/yZNIb2EJ4KGxzNGIjF0XoXsdUN7c7MAJ8YrdtSA6hObNySRf3Myx84s6XGNYwWQ6lpjlBKhYVs07SLIFATGRGTXIG/xWLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767736434; c=relaxed/simple;
	bh=rNQB7eo3LPtmQHXv/0Z2Av/OcL+S805muUY/3iCIS38=;
	h=To:Subject:From:Message-Id:Date; b=iqdCk3mP59H+K/B45npdDq1MCJt7Ck6kNNrkEQ9xg1T9Oyi6ZDbFlYnTtKlS2oUAANmXUpju+txWLPLfn5akpj3//VR+TjgSr9TLPSVNbTnoV0JHVn21iI+utlIPZ11GDaQHDKPucd4U05Rc+Zkdu4sVsEtoRWySGb2Hz25km6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQQbXXfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQQbXXfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B58BC19421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767736433;
	bh=rNQB7eo3LPtmQHXv/0Z2Av/OcL+S805muUY/3iCIS38=;
	h=To:Subject:From:Date:From;
	b=EQQbXXfRKlDxnQzII31wyIEi8CwuGgp3flLkYffzV1ua3G4DasepAlXEVvHR0R3Tu
	 ME5fF/spZbRX3qhRlouR96dIAyDhirVqjYV0d66cho0kDDiVHN+xNgKuVLTdonUT+X
	 hW0SkPOHbEP2PffzdaWVOfN6gfaxnZlDym4Ey5Bm41sny2o6yGYXCGzrBvoqRZY0/g
	 d0RVaMDFSOe6UMmVaSIYKeTdeoQB3jgqGnL8O1iXUBTfL0j85tx6zRrXOHdKfQzvwV
	 I/4qX06qlkll4i5j/rWfDhaHgjdfk1nD9q0vNj12DHQdvZw0z/3GTxBsL9u82/WQbX
	 Nrj0SsP/oVdnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E103CEFD0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773643357.9180.10529294380579091005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd3517c64f910503123e1132422d9c7267b0adf3aa57651b2aba5a32d59d222
Date: Tue, 06 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767736433
