Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3051C23BD1D
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751350794; cv=none; b=Mldc6UzrMAjC2NaYMficmHPLapqt3z++UGnlkPj05wGeNLD85qQf0ZV86kgri/o60i3ikZvOSJUF6vGj2xsdRNu/CkQUjrzPD10eHoY3jXlZ9hfThokcsnxWjnaHjxYB2uM35A/0tQEb2N3pJqgjUjvWZd0d3K3de+/AoraFGSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751350794; c=relaxed/simple;
	bh=8tIBSeqlfBDUi9w0NB3Y9qVVOoWRaRDrXV2M2gxDXxg=;
	h=To:Subject:From:Message-Id:Date; b=dbgqGtAm3oh1IukcWsbie7LI4JJ1sq/ARsrk7HXan0MlpQSVOWmAKqJayezuHR0oRskgX5aSCBx0x3lsuJACFpHyQDK/lw2ZaLSEuuQlbxRAia0dtNusOcfDePwdlRDDmCfNXhcqZH1QxWBqZnlAG86S6XXCX1S1PnYjrL8BGiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4J/MMzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4J/MMzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA8DC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751350793;
	bh=8tIBSeqlfBDUi9w0NB3Y9qVVOoWRaRDrXV2M2gxDXxg=;
	h=To:Subject:From:Date:From;
	b=e4J/MMzdrXbHhT/0IpVkNO61YV0Q82bhGQM+dcQ4eGdUnPO9BMWhYJogpTB4qKggc
	 uY3iX8KyE/QpCuHsPKVTqGkABWE0c6oBMROzmrr7UdNBUhZc5YmLG2IVbvxFpD6wwR
	 dSzaUcWX6RBcidoLs24fM3z2mlzisY/Drl0wn6Ay0KOBhJGhMrANg2qTcOthFm7sZ9
	 Hm0qdN/RAPFGo49nXLy2RdTQKCY1RQ/ZF/yDqaxxri4HpXHxLz7dZEJmpUoR5H8v/6
	 Zb5OjA3d8WNx1+dsLgq1BCRok9brJikChn1NJU91bgLDzec79DIMnb01uu30KlxVKh
	 HAbwyuqqUAyNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5EAC8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135079357.12825.11382296344680136418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd032074428c6a8c96ff0bd73b3da2c9e29df40c4cbe3551d5839aa763bb891
Date: Tue, 01 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751350793
