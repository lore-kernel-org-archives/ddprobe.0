Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A504289833
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753426196; cv=none; b=YjqTeBfnri2edn3VPZihWJ0wv2rIDxH1xr3U0FSCb4/2jPlw0MocXOUi4l0J9b8lYDMWixzuFhnDdRHQZd0UxU/7Mq/R82tU1DEr3E9nMocgkNIADQiuF++Mi9IjmEEl49vmAprfa8pcTy8EUB6k6787I/OAyeg1BVQDMOCEkd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753426196; c=relaxed/simple;
	bh=zJY9bYFh5HrJOrh3bwflrYvFvcIhkyuwzApIJezk9BI=;
	h=To:Subject:From:Message-Id:Date; b=dJReBzqWH3+dv/9nmcG402hSSNV+H3L5E0b6kpzbmBJrxUlIcJXsrSnZXlXxDOngoNgjOEMazfZUPnFqtSOJ/OmGy0sA1VjK5ZFi5XP11SWP+dhegYV6ICVexyaeINYyIoXYFuv+92UHx+QI3o3Hzj00du3wworgp5V+hh9VTZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnR8nF4y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnR8nF4y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D878C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753426193;
	bh=zJY9bYFh5HrJOrh3bwflrYvFvcIhkyuwzApIJezk9BI=;
	h=To:Subject:From:Date:From;
	b=OnR8nF4y70EXIDCWYRcgvEtAqKo2c9HRzjeQxvSdKfgHNnZPdISMWzd8I0CMA6PW6
	 s+Is47X7W0+jqFbTYVgi9tUMiY1q/7S7B45ore6New3ABHLrH45YN7IsSeU3P8diOX
	 UCJE3sgPKJS2ZJfWYnwXo+PutAO4ifSS+GNpmaFROLe5KjY42noaNp4XaswBSfntyT
	 n0BUtLki0xQqMs3z95M/AeUT35a9vV7PvG4X5K6KITcGj2OjN0XSdbOJ2hNDIt6RLC
	 zgR2VhvqmdkMdiaM0ZEuVUr0tY5IS83PhvyqtyKGRKC6K6lbkGP93ObRUSQAWxP6LK
	 7Y8EY96CSeyZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE80C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342619358.30554.16513613303833529534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3813673399fc55fbe8e4065e4d05a02d084583db97d0c5dd77cd9bc8956941d
Date: Fri, 25 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753426193
