Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234E2286426
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757001594; cv=none; b=VlLOayEfF+MMqmtbw+GRe7HS6hO7z7OL0HUj8HpWNghl34RbknrGtKNbj65gnuvGoZDvhny3SWKNPs7Z8T145RC3UyMQ/3oBANSo6q8FJpfv1HW4fhhsc6xinESQUoyj3iidbtW8+TBvd4JE7udG81dcckl3cZdcivSLYOnMer0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757001594; c=relaxed/simple;
	bh=sakX/yMmc8fi1gbToh1ya40HS+ORuqB/+aaFE2pLN+8=;
	h=To:Subject:From:Message-Id:Date; b=dEBpUBDKP623si2Hr45sAS3c90pskK4PQnK4xsD2+WKrvCfxrOahlx7ScORutf8G0Pt/w6yTC/9StWYhufLDzcsjIVXxF3xhiwK7BIa8G5nRaoHnbcYdd3xhQBAKECdNB1QsiTyCw9Jxn4QkK+KcBpmUlIYTskmTRNpQ8oxVTlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti0fcvKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti0fcvKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0825C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757001593;
	bh=sakX/yMmc8fi1gbToh1ya40HS+ORuqB/+aaFE2pLN+8=;
	h=To:Subject:From:Date:From;
	b=Ti0fcvKRc4r5i88T+8id0ExnWK6FCTJWMFUxr5NAXTk+45/zlwGi4hb5tz7joANSS
	 R6XQqW+O4mqGy/88aMmuVFFoxbrT3twREiMYbAGbCoZEzy2GsGHSPBwlZvrHFfqdcB
	 Q4TpDmTBj7CJ6/J37ZRmqZwPD/xs5kEsmRlDpD6Z8V0MwJ8V3StJCswNuTx2o3S24/
	 XzEza2MnZrLbtHoUabrlHUCxeD7YY5mcOtlvPgDHQUU1mjgSLV5uXWD6QJVZujwp5A
	 D/7tYmcCqBxt0kNjIu596sXsLNNxdRqcZdiCIPhJ/hFz7ScYTrwJVgqSREbg4SS7BF
	 MgyQpquaODqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EADDCA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175700159357.4665.587454368115590134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcce24a2f0ea1438987578ed7b51e6b6f05447f463db433c545962ae5a488fe3
Date: Thu, 04 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757001593
