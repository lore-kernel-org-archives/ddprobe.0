Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42693DDCD
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783123714; cv=none; b=a8lfqt095jB3cHYZBVn4I+Pt9YrX5cfr0PJ7Ks+YWTo+lz8gDFRtiTsnc7dowTEzb4wJBmjKFdqtR7A+7K0z70Cu6JqVFiflD1iexyuv7c2ivxgbJWnCUGhcgLeoYM9RHNhmKH9XS3gN0+6Tn0zDfhc4k/1oDoe6X8p/fxSKPEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783123714; c=relaxed/simple;
	bh=XlIbjWazG+B49N9NI2JGw43+OcnIyhJuZ6aqsJncNWs=;
	h=To:Subject:From:Message-Id:Date; b=BKs5fjE4OwAqr65Ls1T5NtoxlYuX/ffNJ1KvbB0Ihl2HwuUy4bwOX1aOT4lxMAI8Yo0W9FlzNsfeNXOPufnb9MRiPhutXHDnnbZH3uj3F54ZuFJKOFKeffh3rNkw1QwdZD+pno3wmSWFeLL2RzC7VWTYYG5U/b/PK+pqfbVAfho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9Ruq4ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9Ruq4ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C964AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783123713;
	bh=XlIbjWazG+B49N9NI2JGw43+OcnIyhJuZ6aqsJncNWs=;
	h=To:Subject:From:Date:From;
	b=F9Ruq4axHeqSmv+DF8cIrETmbIjP/GYKzvvJZWC5benZH51rImYAsUTgfMSlbrlai
	 x8+aykbgPNpBoJjUXSamJ0UXKMPSlbs/RDWXmFOBkX8kEd2fa8gqW4/bAAOZ0nAU/f
	 QaKKnoUuyg1AVtC0oze/rRja59bWnYYEjbEPZYzMee/GWCiwoMhp6aueaQcXP04cal
	 9/gI7uCLw8nEX0zkTMGqZTeRNj2BDQtcPyksVji7r0eFwHnoN2XWb1I+ZXlv+Awpjb
	 zBO1PdI5c1Fn+hsJtaI+3PWZEYbHE+xl80OhqpjGrWoWBMhgPfWIaukI+PlRyO0qV4
	 Eg5JRTAdpRTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A885CC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312371368.2256.8091763972596985503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc72c7c4afb5ef6205dafd94941cd19fd84e301115cf466b76038ce87e4f9ab
Date: Sat, 04 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783123713
