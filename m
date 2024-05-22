Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA01A929
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716401603; cv=none; b=BdxSFH1ae0o9WCf3iTCkbWp39y3CsUxCIKd2CcbhLZAo89OOmYryL+eLDKTaTBJyXPmK8YjjsIGPU2oNKhDtBD0nhHCSA8CzA5bWUeTWu61CDWGPTku1zJOUWxvYlttRUm4mBa6v1p0bNYeBNx5MaNvs7fF43NfeJTraPuLmyDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716401603; c=relaxed/simple;
	bh=fyF9pxYgIzvc/1NCS/WzaRGyoiztGlrErSR5n95JniU=;
	h=To:Subject:From:Message-Id:Date; b=ucB1WBOPAQ5U+xiQn0myEr1RYBPGD4KYn+Xs5MvnPPIEXT77QmuXzrby4wfPVbhx1K5E0Um1DlxtFCo4SZkE9IwIK5ukwtwWo4/CMGXWtUp91W5oDCOkMfg+IDHJW+NcqruvOC1pOs5w68NASoK//ClJsSU1THB00ldBR0SzNPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZ4dvVA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZ4dvVA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AF7C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716401602;
	bh=fyF9pxYgIzvc/1NCS/WzaRGyoiztGlrErSR5n95JniU=;
	h=To:Subject:From:Date:From;
	b=nZ4dvVA4kxRaw9JYhPLIwCoEXfxKCerFsXARWu1R8c2NCWeAlKlX3D7AnZLJykrJl
	 P++UoAPMnHW2UvWrJs65r/mfLoeS1MHfDtQ05TpZuUuIiWh7HJb0NrXYp4y/OAaaXZ
	 52Ta0vrrNUzh109O28ehdmKJUqdv/8xLXqmQQcSjfN1CPT2oBAhfkKb1NvusYPwtsa
	 TtAmMH/H87cjnlGaEX7ovDyFLyNNJrbXEWLc/Kpjd1CTVzkycBxyravR2QqaId6KGS
	 K2m+gHMjyYaTVvjm0cyfunaJX98UgjaUlfFGkoZvI+SLxOKa8T0XJ5EgxaDWFnumg7
	 3DG6MOjZM0HUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDCBC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 18:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640160277.27669.11641469029147511869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f899fa425e3d4b998143e928fcf874f00b48c58e49261c985faab1bd01a2a024
Date: Wed, 22 May 2024 18:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716401602
