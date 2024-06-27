Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFCF197549
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719508463; cv=none; b=qVGbDzo3YispkgcZf4xXg1DJds3iQSSqSa+GNoHFX3up1kDe/tTegMcwjt8eTs7cFMib5m8gvBO0xAnezyIBfpkGjqOPWO5+9BhlGuiZFrD7BMVccVoYVOnuBnB02tbK6TRGUNHy5IS3LCJUQUJqL6QqCd2L6se7ktOoLxxeFss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719508463; c=relaxed/simple;
	bh=872Ir4Nxh8d1Q9ZD4Nr/83uC5mpgXXfuexwr9z2Cjbw=;
	h=To:Subject:From:Message-Id:Date; b=dyASTGljEryicW+Hmb/jbgG/J4TiTfcWcwZ3JaaKU8nsxcFExzqjP6DyIkkiMPFKtafJ6+24gbqdvrylT9qz1wbou8PRpXub64CPD7Pwv28n9FrJ8FFlGfN9oJCXkRXgESuyGcSKo8USu5ikhvIvMq3H3OaXeYc3SQopUJ6n/jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+U+Uyyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+U+Uyyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08E9C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719508462;
	bh=872Ir4Nxh8d1Q9ZD4Nr/83uC5mpgXXfuexwr9z2Cjbw=;
	h=To:Subject:From:Date:From;
	b=G+U+Uyyb46T3x/W4fQMp2uy3jmTnHpUNgQHnyB3KEtwFkoUG3oWy4K9nyA0ygZ7Bi
	 IHrhm5Y+pmvrhx1k/+3hHHrYM5waoQw1WUROV3mKOCVQA8WuKRSUHK6zZzszVYaM2b
	 upekjJOyan0yw/xU9QOA6gsQNIv+MC9nBxgeMjA7U26Uo+RF0ze1l9GoBEtu9xGvSF
	 FVJo7XVChtZyy/8yIe+ZyfxGMZffE7ParyjOi9hVqJDMJBsaJMWlAhX2jDTnNc72ss
	 cnj/FyLYeuGXDGI7MDbdUpFvic9o0JbvNnZvlcDhT/mncI2h5CrMJZs1Wig8S3uhE+
	 1yHvNqDIqQ+7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6A2C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950846276.10473.14854973961894267198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6509d2be07dbfea50cb97086c1f0186b69b52fa0adee417053bd165724a09080
Date: Thu, 27 Jun 2024 17:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719508462
