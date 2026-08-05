Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F63C3E95B2
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785962434; cv=none; b=HUZ0fL/j2CqSyFm+L3oRJ0JFxQAgSHg2CD9JGfA+s0f9+q38tgeZ31KL3hVO2ei5g+5Lx/e+bAyD/ZKsDnFB2jEcnNsrN6VnF4+9c51Ob3DnM3lHBNXYlEVmf/KAU5psbKY4dz3xJIQhj/5kG5FKdevuCwfWEHUpw0INeBXhFYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785962434; c=relaxed/simple;
	bh=AVadKpcvQ4dHwN1UG8TeWDNZhSF6uMqox4RlGQXOrwk=;
	h=To:Subject:From:Message-Id:Date; b=HIK3vuEtG9Onh+uHunbOL4kx5IzqNs2jemRizs/0m4leR3p7YddBChkDLRaFR46eOH/gwdt5seB2sFmzbEPr2EDLPYa9C3DPuZFbCqyrRAUHq42pyMcwtsgjr0HPWRzbMeRG8Posc+meJRJVPOOMkNX8m0RzdLtW2KLyzdf1ITg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXUjDAy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXUjDAy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2180C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785962433;
	bh=AVadKpcvQ4dHwN1UG8TeWDNZhSF6uMqox4RlGQXOrwk=;
	h=To:Subject:From:Date:From;
	b=WXUjDAy3lARU7h4swd6G7rSsk8oCWAxcI1W98aCF8Nm7zq8z2wQNNr07BwnDDPXsq
	 ZTcxqLFDlqbxfJPVsJ3qUWLRAUNGS7sbdaSQNgdCaUeIps3AtwMFiZme3WTcqE0D5a
	 JmfWly6lFoR7oXsUGMcyWRBd2t3/V18Be21pn68ILStxMcv4s0rXK8cYV3VGk+8hjj
	 yd6B8o85h2PKhGsd43Z0BLxkhgsNOo383YgIv8f/Lc9vgSKOmpFe9F5knMswFi6ESt
	 5N3biEvoY/Lwp/xiqWONzCY683uo3FQAiugHDR5UaukXp2maCeLzAWcwpHNM8greJd
	 5lsFCtcElQOHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7CAC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596243370.28933.18345183371382085858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de16566cbc2825a50bd7c44793180dd4d938904f51bf88eb69212dcb85e523de
Date: Wed, 05 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785962433
