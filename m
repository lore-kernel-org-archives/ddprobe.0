Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFD03161A3
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782234394; cv=none; b=YbvOi+ufJamaZBJaSRvUs+4EIyhL6c7Eblav6k4iFS8RDLmmrZ2FzNRC9SmxTOPZmG+ZR7DhT72dY0i44gqi0zvLcO0NtLaESz6OVb1GEbF69aVbXqUxANfUCKH2R/wvs/vwu2aFSAHgSwjWSby/2rr1CV/ijmiWVOf+GVMl4Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782234394; c=relaxed/simple;
	bh=MyOhF5trHC+AnrPy7kSF1XeNBiPlthRacGmcHEowzSw=;
	h=To:Subject:From:Message-Id:Date; b=UoiJtodSuF83ENl7Xb9k9BzGc+e68qqi0af0uil7Ha9yByHDSZ3Rjf4q59lcUNN0YUeYBh/8p8+UqnX8fUqS/62IAw5XyY5vMsehmRxOmfXQuklUCOCB2msSLWYDe1XVKtkZhRzQe3OxOBi1H9UWlh60ArHd9P5c1+4GH1v/Hjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Efpd7wBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Efpd7wBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C57CAC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782234393;
	bh=MyOhF5trHC+AnrPy7kSF1XeNBiPlthRacGmcHEowzSw=;
	h=To:Subject:From:Date:From;
	b=Efpd7wBnCfa2EXC/qtSsvNppid0UnmL6gEk8HnrJA3keG5sYd7emVnkZEfC7qQgTd
	 1Q16Ctv9c7PS/amIUz0f5lw3tvkkg2rrVW9UWNXP060Nd2woHKkghj9EQ9zsJ+Eys+
	 XCSo806MoN1ooNvSGFWBpq5TBLfoqUVclVDNFYaqRihgYwUv0dj0KFCUkNzOhuFAEW
	 iwg6o8yoFe46d4Drbft27SK1jEOfL1f9YAAbtCfL3TfXJDT2cyfiOKiz+lMZ3WmQfG
	 J91HahTsOLTDSoZGmQ5vum52hfD7934221pKHkfAE0qxnTDHkyYHA8RrxHcZ/6eHG9
	 cJPmKCQ0PdIBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A955CCDB470
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 17:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223439368.23203.13732719191674535214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e94a94f3870c124443e5a4c232636c2eddee781ae2847de208e53727069d2b4
Date: Tue, 23 Jun 2026 17:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782234393
