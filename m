Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4152A3C2D
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766977434; cv=none; b=hPHl+rAhn0x8AgfgxI4j/mI1GkkcOVzhl7xi2LMD0vZu7cTzsIa+mR4mlgRybrUeuettqTdvd2j+JfugslsZlZjnDIHyNgZZJXSIb85qG+383RlRtvHYHfMjPWHVpba6RCkBczFkWsVsOkJQRRHO36vZMnhm/ABib/QLgObEXYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766977434; c=relaxed/simple;
	bh=bbi6MDf51IMPxj1EEpiPDOZHCY9SLEM1ZdYdiWpbn4w=;
	h=To:Subject:From:Message-Id:Date; b=dVO/jp6B36/BfY32YRtKwvHV6kdNuJU9/dmKafu+7/rYWUlX4CPnnqqjw4r5nMae1xR53qzoAKWWjh5dW/rRP242dJw6dfr0KwenP3Ze7WKViAp4SSoaYwZG8fjHEiEBsUbDDMl9zJeAcLPISKByPsNY5QyCxKEPNJxOhh5w+p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8SODtA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8SODtA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E53C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766977433;
	bh=bbi6MDf51IMPxj1EEpiPDOZHCY9SLEM1ZdYdiWpbn4w=;
	h=To:Subject:From:Date:From;
	b=t8SODtA188n1zd+PaFKWwOllGb1juEMZ0ZLsnLKiV8pkWcz0aioHfjHRXPQcJ88mH
	 M9F1Q1FkZ2UdhEFqysLYW9pD4BaKjXrozEouHRrqxhKmKQ0CBpYbfboGufwhKNlHJU
	 vgyK8RUeKAbyKno37fHlcvuPajaRCWKES10OwWSYIIzhx2vrU1Z6QXynWEU1t8rQjK
	 bZ0sj6OKTqrmaa8VNZbDG41lAnf5Kxq8vlrqhU8YhEetmoy+5XpMYV8fKhZY0WEOPN
	 vlSl+J+DbaTjj7dBwIGAWid351jH1pizzdlEoNVXyNRf1BgQw6yHm+nnX4xdJmYXRh
	 It3/UHQRh48GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4C4D3B7E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176697743359.1705.13480393946672429658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4f5a97b93e166a7506af1228e4f69eadaabecd9e5574a9d8766fda2f513649
Date: Mon, 29 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766977433
