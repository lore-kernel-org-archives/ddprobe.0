Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004637F
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709440097; cv=none; b=BBIJF/UL66sdzv3PIa0i91tku597VzVWahMoxMvfErf2OI1RqGPAkboYRIUyi9Lf6GPLG9aVpdrDPNyAbI0zAA94rL0v/T7GYBnP23vNdMDYyalKtQMiWE/RilgGQeuOapkOyBotnb2EPx9LaKFi1K6e30WAz3GmYmii8Ed8Vkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709440097; c=relaxed/simple;
	bh=zZrv5SSerKn2ir2RGspQzahZqdz8EJDY2fhPo+MubBQ=;
	h=To:Subject:From:Message-Id:Date; b=TFlA+KBLR/6bwCmor1G71nMrwVfwpmbTMRSqTaOtjpgf2bAU7/fZ4nVTRxuAlUWNCxhf0gDIXqIXGMzMcUwOYEt24zF6LuC3ywCsAIRh9Sle/nsUyv+o2+9bBgKtrNhXSVKURuW2itf0XcodWCDw3uqSFjwBX4LBr9X70LfDO/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pk881ZSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pk881ZSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD8CC433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709440096;
	bh=zZrv5SSerKn2ir2RGspQzahZqdz8EJDY2fhPo+MubBQ=;
	h=To:Subject:From:Date:From;
	b=Pk881ZSeVuAWjLykpQe4F5vjnYlcPcsMYPntl0COXZ5apPfUSyDy4MWzKK8jUAkNB
	 b00Ifj4pnGb3rquxUtABRn8nuc5x3kKQeXr8rKTRNCawgn0TAeZqCHPF4ZA6lMqjEy
	 160NV1knoYkYdPsz/JQJs1yLMB7HezZEpb626fUd1w9+HfAgvtRid8O7zFUOCeYRqE
	 sEbIpFlwW6irEZT5p2j6pQKMisd0vBecV+U8gsBMkkUu+5BKoLCKOvE2/Mod1s5XMc
	 0yRlhpk/QNhsnGkakq4V1cwdm2ketnYmdZgM01E+X23fDNYWvPzan99iQE/S9fu7nB
	 SGEAFmkrRuZTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63701C54E5A
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170944009638.932.2388658481375543505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af63a75cdd5deb98f684d57e3d91fc5b81c3ef54d7c0246c2b2882adbda29521
Date: Sun, 03 Mar 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709440096
