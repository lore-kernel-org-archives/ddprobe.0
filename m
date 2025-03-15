Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEBC53365
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742006937; cv=none; b=fDiDmExwGG6gNAIdeFhC3j/WFoNzbqvFiOp3uZFy3rAiwTgG8HhpN7p8nRrDQgw2D3V4E3UPzKljCPYhejLumdm5cT88BqVkc0V9fs4hSe/2af3ks9rZusN3QsQjr/dSbYqzH7KYXbzXSRtqArPcUNpR2den03AaLXiwRDrdoKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742006937; c=relaxed/simple;
	bh=XPLLPuD3UKYYKA8m4kbZ3IlIrzKa3D75IYNPdLourBo=;
	h=To:Subject:From:Message-Id:Date; b=rxPXZaT/UHX3depvVZWZnq/PhVSaNW4N7i4Yn3s+cBtTqA+iPbxw/Sb1TEHtU4IIhEMeLF3At67QdXEs6rcmqc1usY3Hr/2EJLa3b2RpNkM8to2rX5GpJ+Nv3+mbI+zasGBUhLXDpYnR5PCEUfJEs375F9M1VZ2C6utCGu5Q5J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqzV+P26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqzV+P26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0BCC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742006933;
	bh=XPLLPuD3UKYYKA8m4kbZ3IlIrzKa3D75IYNPdLourBo=;
	h=To:Subject:From:Date:From;
	b=jqzV+P26xZzKRj//6w/na6uoFnQCJr7BetCTrVsMc2zynXdh7z0a8fmtGtHDaJsz5
	 N6l5DeyJ7l3SZVXffju6cevBsVvi0KcEWyv1h6X7V7my278dhMmPyvc8D9tt9yLWzf
	 2ibtq6GTaZOCvxvXFaAX7DnzghuEdeGmBhBMmDd0BVVYUcI4ujsTUbeTslcQ5ae47A
	 cOHqZQ9rT6Qo1RvxdWG850nDatfND7FcTYy+AxHFFknGLkomqZmagOLPtNdybWrCGw
	 qgbnd/qcSLVEtjxK4UNxBI2U4+g60hynvddKNBwTu4xB837gw7tnUMxynETEfLc+UV
	 KbnDz7GtwMSFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E63C282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200693364.27672.14713522366214269776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40310f8bea2a4bdb26e975b9e4fc90d8babe57ce23523553afaca6170c296fb3
Date: Sat, 15 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742006933
