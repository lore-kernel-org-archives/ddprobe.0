Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188873803F8
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772185494; cv=none; b=CWAv/DM4amhMPPPq3SQ/Ldfuv4ygzxUt+ATCarYyIBp42i975ehYJyq5vAL/g20yKF5PjRG3raHJEVSX6NzchEajAm48TpaVZlLDxst4att97Bz0uH/+DBF0CVEFMbgTCw56Uun6voRZwZEissHEgZWM5rkMMpM9ifkkqXnQMzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772185494; c=relaxed/simple;
	bh=Nrqgo2s8llGrmRuZZ2/Bg7rAkFqnbbdfGVQEKX2Jwt4=;
	h=To:Subject:From:Message-Id:Date; b=YRZ0llTs58UqHxQ/DHSM2Cv9eiDLNHvYx+FEiyltOuvK/WFNox6P5R5/xGipjG53DlpYbUVgZyQHWIcsItnxOsH6NTOs7XGV+USoeM5jAJzvW6S0Fz/7B3vQ1EnN/tMCQuRG3lW0pZCJquWfwy6rxnYWyXmf8YBM61zc6HD+Q/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLmT8C61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLmT8C61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1687C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772185493;
	bh=Nrqgo2s8llGrmRuZZ2/Bg7rAkFqnbbdfGVQEKX2Jwt4=;
	h=To:Subject:From:Date:From;
	b=WLmT8C61P/Gc4yNkp1J6CRRtvLFvuwX0lWuIyowwOH762xepPhqxeMbPT0ANBOq6M
	 bvvWC5Lxtx1P5YdZceLpqZ86dZRVRUn+RTYP7hkrShRqPn3mTMedR9MvRF44llblQL
	 enBaSNNIq+BUrOquhrUQGTHK4nXfTKrpPIJ0dfwABgDQCr8x7wjw3xhL79yBq/jAby
	 7i0wGrIfnQjK6ZkW6EHugSXbMKOOU5Af6vvncgc+21JepRytLSVR+VlNPIOhP/CzFW
	 ASr1rMN47MwSASLhzrdv6chD0NbGJpNKQUPgWXQ57CbMuG/mGvhe59cRpPasVcCbRx
	 um1+yyCyaMTrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F488FD5325
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218549357.5474.16930545490833391603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ea6f578a51875473fa2aba2b9a2d5a0eeb6f04f370a674d69a754ea281c04a
Date: Fri, 27 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772185493
