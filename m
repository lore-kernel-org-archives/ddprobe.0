Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DE4221FB6
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779553354; cv=none; b=em7x9OPInejBvlKedGtdW9121u8kBudf0sa/ziQFyzFTFIXUiG1J2XkNHi79S8xQXWEnrtxEO4d4w8Y6GFosA73OcfbIkQuc27qw/NzazaAV8P+5navDnuC6L3E3nKaipGp6FDDXMDihub0TQ4wUm7Is9HZ9uU0fLV/TbYB7m0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779553354; c=relaxed/simple;
	bh=GD+V/XXaHzQ5rP4useQR4vrixkZZSrdq4MsKHToo+VI=;
	h=To:Subject:From:Message-Id:Date; b=u9wHyzazjf0UO+/OKoFtRH7oIXjD+U98J2U45WScqtaM32UsUb3cQAjpEgvh0R5h0RuJTRsCodPWgZVh3amigSPYb6q5pXceTTGyFSp0fH29sm6bRSMjnncldigTCLOpCr73Qe8Wg1L0CjHUEs7FxkXo77AB0AEcCZ3CfbEK5lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/5EzfQZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/5EzfQZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3235C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779553353;
	bh=GD+V/XXaHzQ5rP4useQR4vrixkZZSrdq4MsKHToo+VI=;
	h=To:Subject:From:Date:From;
	b=d/5EzfQZw9wdZ+mHsHX3in+VkorBxQYb/ger8BvD7QRPAwlkxK5ulnhKpkgIeln2D
	 dkd6CCi0Q4PJlFmBbCLv03JUevzvVETVbYYxTDQuvPvE4Ogf194hpM7W6yZbUY5vmY
	 qPjfcDx/nCW5Nenxme2GFRFhEojNfFECPWC9SetAaS185WqAFrEO5/1MjUXpvVuWYS
	 RhgjV78vbh3pJvQaBT8K1XGU7s1EwusVQT+J/VW0EqUbLSq6kdS1MIk3LtIiH5Khdr
	 +kBVXrc7f/ehVlOz1Thsp/RrYCpIhQ/Ryl5k81pAtqwFibZbGaULRTgIth1WiihcKa
	 JB2BBm3p9RqwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA15CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177955335368.24370.11258046464705511009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56ffdd5a5d4c726109db447caa2d6fd06fc0e705ce7cfbfc83cf5e1c3f7befb
Date: Sat, 23 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779553353
