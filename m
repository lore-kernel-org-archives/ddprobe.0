Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2129A1EA65
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760234994; cv=none; b=gWFpe6Qr+B9MeWVTW+rij6e0grPlGEmtaXLylaZxaPbqbiGBZXZfrE/8IniKd9gY4hmSABqc4oDZajBRVGsxq85Di5pQ9lzs5elChZkWh8g36upxSYGpEUvzcHCmDGUUN26sGZF4Js7Vr4ai9TtkuUo426iSFJ4P+KXAcn/HE8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760234994; c=relaxed/simple;
	bh=l/bJITVFsbxrwpPbgWJiYHEuaSDQXNbQAZkEjZwNSxI=;
	h=To:Subject:From:Message-Id:Date; b=Q/h2sIBikifuVGaWWcdqnurp573pXx1/vGucENijUvIbdvHMIB3kcjroHjUEG9c5MLS/b/Nfdsk28ZYY0TCkaWe1rBHY/C2wCO0TaION4jDLcQqqa2CTQEO4D5vj8h0qwWXKvWmZvBGW+u7PcU+Nfhx//nG4OS+ti2Q2Z1u6n0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qjzr28N5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qjzr28N5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F75DC113D0
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760234993;
	bh=l/bJITVFsbxrwpPbgWJiYHEuaSDQXNbQAZkEjZwNSxI=;
	h=To:Subject:From:Date:From;
	b=Qjzr28N5F3CYBd/8y2ZWPhmMaGOWGEBzUyeElW++1AslIV4ObZgv+cMStue60UoLs
	 XGGPVz2SQ4mqr5KhOlyPvPUx5Ih86amKVAR58ULocxesR84pXrV6HhNjSoFpYBUJ3R
	 Q330m1H6vcZzQR6BFQSkWj16L2eV12UOtn1Kv/Fl24Z/dJh6apGe39YT99KnY/6Iot
	 L+yL3pTZshF0nhhIGqUIJPi8SFsmC6mi0rxsY0h5MSxrA0k3HnQVQ90wR9t49LbQvO
	 HASYRNoz2ewJVqIT2RHaw9mmaNWR8OB5Wyxst9sg0QvJ9nErgo6PRhEHsZjhjTc5jz
	 QselY7c1bUBTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CA7CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023499358.29296.16147737129468765849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3d3e24e4e09be24d139450ce03dbecb5fdaf2fa5cb994182ec83ee361633ef
Date: Sun, 12 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760234993
