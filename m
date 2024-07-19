Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2813C2CA6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721374554; cv=none; b=X7mt9ywXIW51mZcM16oBYH/hl4x9L4az0INk06NTpzH7otobeSGn+Q+QM6Bd6lTYP3i30K3TcT2WwJU5OkZzJ+cVLkk8yYC+Vnnik1+IC8t7B86mdUCr5c58jHG7d3yrjp4lAPXTZKfDIgC67PAovmA0GJb/BlAciJt7lo3EhSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721374554; c=relaxed/simple;
	bh=XGClsbCnEN5U21qB9NND8g19DN7smmS+BAV0FYX7ZPA=;
	h=To:Subject:From:Message-Id:Date; b=R+oRiKxs4W3PvmupERYZofpKkKBRw98INH6tlRjc5FD/buxy/H/tx6Kb81U0lnUfxv2x7+DDnJ1WX9VZ50pM6nW68+zgqZGpxqg2wru39DvoBMGi34zPkxhQQQg6R6M9cIQor2EnInDXV02mi/d1+YZ06q0SQ4t8yTeH3Dhh1f8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfSgqPF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfSgqPF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06F1C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721374553;
	bh=XGClsbCnEN5U21qB9NND8g19DN7smmS+BAV0FYX7ZPA=;
	h=To:Subject:From:Date:From;
	b=DfSgqPF2iXFLQZoY/ggoKkBXFTGYfnqYgdfwhq74bFfgHYgGufYE/oYLfrtIhXgd4
	 gp5yI5wXaruCLKJVOCeYwFFuj8hWQa/qtzvT5FkdO+4Vgkzm7CaMlxODgrdVZFrk1P
	 tMKpGjnc6ZZN84K7ojqOQfcGpnBVJKPvm6AUklAplMq/hww6V7g6dbYanCQ0+pAG/f
	 /Anfnnw2HUzg/TB191MkB43EIVZL8gqJEiV//XmrHQByHhPui87YaX3O8pzWPLcvaq
	 uRDS6o/ngbJmjEFr35xSxCrCdKlNovYgNFgcvEcEOnEOXiPu4dW/z85/LrXT0/TJ7X
	 G3Zgq0OmNmpVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9989BC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137455359.6430.4261864399035990494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456439829c22a71f0e45332c22dafbcf967db7513274dc20c5be00cf08e0a129
Date: Fri, 19 Jul 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721374553
