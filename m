Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BEA1862
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776032254; cv=none; b=uMZnu7Rl+RZXPI4+oRk8P7f16yeGng7BG9RIEcc4GdTA8ZjiBOmB/QHcqT0b67MJhhKxJIHIJIivaSiWUeBspA/8TDznhS/wirWN7fhqX61yjLi8xsodV5cPfpX9cznCESvXYe238gVF8Z53y0HVLtx06IzqOrskJ8Yd+uKb/P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776032254; c=relaxed/simple;
	bh=l29KoXZiDDbS0GkUBey9Wmfh4ZO7yM4nQevLELXgOhU=;
	h=To:Subject:From:Message-Id:Date; b=pGYfpFnLke88vC6qMl3/sqSg3aK52hIt7Nmb4+Z+0EJTkNK/tuXgtn7sTcvXuXe0CdSGyBPfVEz2xoR6wOPXTbx7BbQLDiHdtM4+Z01lMljyCnsVS32yNs3+bpfsSLdoTR/pKyjm/xoE9t5xMXjvfLTYocyCm7St/9MJXo94YFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9xWZSmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9xWZSmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2582C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776032253;
	bh=l29KoXZiDDbS0GkUBey9Wmfh4ZO7yM4nQevLELXgOhU=;
	h=To:Subject:From:Date:From;
	b=D9xWZSmT/RRbHLC+88CdBpvZo3Ts5W8kQb1tOqs1WbImb8ei7/KwcDSI0TsJJXi/w
	 LsocrQ81ENJGNXWxHcT2G/MsmcjgBxTu1yfajwUpSV4A1quUt8XaFX2YoNbupi0RrC
	 yjFEkv9FBO/iYXD8qzyVdqyCkkrvF2yRsnqlOtVhdPhQJyfFy9umeSIUr2z2ZCSuGk
	 p2NDQg4fv5d1+Z1b9Wur2zamhqLGe8WOF8m4rYZDJ1SFAuhIycyhLwfNW60KuEN7hF
	 H2EWakJIb0YRVIv+PKzmjNX7vAq1S6tmtzp5w73eSWWgWUCouCd9r/p45k8kIYQPjv
	 P6lXLLsZ8jT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF748E93807
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603225368.8176.11254555898521254507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38985e0477513ba2f6eb6b7838e747c32b2ba626357c527cc25601b3d947d07f
Date: Sun, 12 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776032253
