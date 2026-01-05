Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA6A1C69D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767648234; cv=none; b=rEcxd19noh1+SgIXig54IU7QU9Ix9+p4k4pKOwnr4ZMPrE5h8mO4i1vXWhwC1n4hdc0cXtrbRX6GVYD+A4wuK40qL0kixei1vNyt6NiybFRjE9WlpDqabeiHd5d5vMKumJkLitM2wrE1uFypBH5aDBxr0tn9VG1muMTFIcwfYm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767648234; c=relaxed/simple;
	bh=ntzr0N2hpQjKiX4q+deYfyyQL9azOjtRarTLWZ4apmE=;
	h=To:Subject:From:Message-Id:Date; b=o4eMxGxl63aKcjGp57wOZLHQuI8exf3L2ytLpPfot8lAFJcxlJ+pHUXNNoROCMUZAgjneubpRnjZhjuTMH1Tu6x/AS8x2u+l1yLbp41ZyYUMHlBiLVCf93+nxFe2rPjmrVwShO9cBqMGwjhDyRg+Uju8nopR5sqaOh8NKyc4gPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cs1TSZDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cs1TSZDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8A9C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767648233;
	bh=ntzr0N2hpQjKiX4q+deYfyyQL9azOjtRarTLWZ4apmE=;
	h=To:Subject:From:Date:From;
	b=Cs1TSZDL1URbjjQG5HNxSByCf2hV8oBLHBeq4mLToU8AAjypgLDFRqqASuWohj63Q
	 hYttgHlwCVLAU+WssTU73iux753Z2eedqYGWwQLYOzLUi0g5nPKl7Px5C0NqwY3ROj
	 /H7UrIeO1KWhKueEdS2/u8GLxAiUdgot0qfopAIAgOhg5SqE2u3iOh3QsdXxJIDD3i
	 Awc3LSc4TH8oeXW6nF3FS3ulz6g2VQnz+yz8hdAxTbF41qSs3Rn9tgWCr1nYE1GEJT
	 PbR2JdPGYzMUxhW1Bk1mx4nQtrI2kCJaujPGf3NgGyazZhsZEO6YqExbfGalj4d8cn
	 tsDjskwQEi9cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBA4CD0402
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176764823357.14720.4732109425982266929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c758071a3eb5046fa52164c0d35606a37e8f8e12fc3afd75516607e73a96b1
Date: Mon, 05 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767648233
