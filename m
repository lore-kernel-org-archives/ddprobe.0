Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24A8242D7D
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757407193; cv=none; b=hs20BytZF2p/ZwGDWnm0jlw9uuXRmzJvpx0VXruOaRbPoGcBd0kOxjTM0lUebyUepMFkKrhTyWmmojGTpRcbPuF4ydxGFuLqu/8OYdNDd4kcnU1OS1VGAge0Yq59pwPmdbNByRsILMZDUW+8OZVSTeNkasy4Dk4CpCudUEBdQfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757407193; c=relaxed/simple;
	bh=ugsgLY/IQ65+9+hWFsSp0Q0TDP31cqblJmy8x6W16c0=;
	h=To:Subject:From:Message-Id:Date; b=A3L5yaoJ1MI7rPTyAn6XScUsCIkEvenqKsXkt5OJv3lRBOeUfZ4GKC/agkzzxHR5UTsIZyAkkgHLf5Gejd1o/PdG9s7BDXZ0B+X3TyIMb3XmjINN0C5DPKy/mankVI1Z4mRBIUfhRJvkwvlTfaHjNLldAVppj04E8WAN67rK560=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIiJtG9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIiJtG9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EA1C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757407193;
	bh=ugsgLY/IQ65+9+hWFsSp0Q0TDP31cqblJmy8x6W16c0=;
	h=To:Subject:From:Date:From;
	b=JIiJtG9bQkiMjwtruUkJBJSSFU6Zbh8m6NwL6xGHdJkLnVcEh3D/NShVsrIBTPRuZ
	 oD7aoEmu3G0YtdTKWCNdBpmJ5jJcsoRFOsiWnEFf2W2jA5y/j3/EOB6lL6sl6mi8WL
	 zlHKpbEKlVcVesQPw5cu/S/5/DF1E+stPil9klu2JSJ9RNT/iOujUSL8xIluU5GXc0
	 RQ7oLOOD3nRKW+NPEuyOFdpFKNmr0QJmcGqq02XLMq7mMk83nnU5qCzEzx277k1OZy
	 6O/jAwcyhX/J7OzNlUGOaZju6A47+EaiADlSUK/3YoPFCN3ZgCWCcKWY7aPlQn1Q5/
	 nAM9Nk5VO3uhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91705CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740719358.1324.1753303569302511466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7261ac4e7a3b75348804bd52d491d5b1d654c9f458bc2922d40dbf45dfe9e006
Date: Tue, 09 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757407193
