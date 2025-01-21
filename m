Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26A93BBE5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737452754; cv=none; b=LmVljJWWAsqT0uWgDblqbvd9HBs1cbY8mlY6gRNxrQfX6Q52ZYd2UiMH3VS8DGuRGpE7JSnW2gU3g6jwCHi4IC3oMgZAcZDgaR2qvR0XiodI+RjGMgDFrk+NdDlxwzIkZexCic20G55yAaALslZpAGUl1dATQEo+DP1FMVWhut0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737452754; c=relaxed/simple;
	bh=yq8/KoZfu4FKphYOhva7hHzb5cAXa18lgqctQsdYBz0=;
	h=To:Subject:From:Message-Id:Date; b=VAEMQgTgQmqczgldNra3vek5nKFN4dRR+ODdI1PStnFliBzFbl0KttORyglISOcUPaSM+3tldnzU6/0xEGlHfgbEoTOthdez7+wACmb3c+8AXAWUmTsxhBMlE2t8K1L4wwFET6oKmukQWm782JALzIJrQR/V4QwlZs6Yt1C+c5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRjI9a+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRjI9a+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7CFC4CEE1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737452753;
	bh=yq8/KoZfu4FKphYOhva7hHzb5cAXa18lgqctQsdYBz0=;
	h=To:Subject:From:Date:From;
	b=tRjI9a+3FyaiB50LDX3w24J8sdD0bcmIpV0pkdfGLu17TFMrp6nX1oqKtgjEUE8G0
	 B8/y1Y9igETJEk32MUSdqm3fmTbB0GIIxmBSDe2bWeBVt08V0bu1TYj1xyPCCGOk8c
	 bbn4grXEn0H3X5MEK/3EL/rzVB9BaSZIX5Z1B/ofNzPY8f1tsvsvK3OjUK4CKFUUBU
	 8Wm0fvTu+OG/zJa+bVG1dGJJ0AaA3P271nPRd/aFDRrlvUoMiht3PXS0HJGzdQbeco
	 eSo/aHuC/MBzkHKao0jc4OZHFm+LjZyxDDdWxfXWkTdEqQRRDbk7DqLXzF/B5jZGO7
	 7fbGUy3UivfxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952BCC02187
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745275360.14727.11887233092643663593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba1776d5c047a41d52d7eaf2050e543d2eb50dbad474683570b0151b932943d
Date: Tue, 21 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737452753
