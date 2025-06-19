Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CB830E834
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750359596; cv=none; b=SunO3aL3g6Tj45DRRY2wE75I5yrY7JVTugrc/eiSIIuZbpPU7LNR3uASboy7PEr+HS0gNFfyq7IPvJLMxD7PBQNZ/ggXlvHY2ia6xpfEF5ggzxnyBtT0NrQIoDvPEpauAGjS6Y7/gpg9ekBc0M/kxMqUz6TCZ/TIBbjbXvu1x74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750359596; c=relaxed/simple;
	bh=NbdXTpEDS/GDVteXRVGdr8NUPAwaLM/KJK7DSYWBWPg=;
	h=To:Subject:From:Message-Id:Date; b=lr0XjQrAq7wPjcRhul3npp4g5uksecKx2+4rD/RWGJGtNMUssAfV3Z6lYB16FatTQlHRGcQVkSFs55XAchipUTv4MxUQBLJoCAbZU7FavybZWoii7WrlcxvrVa2Ss9zV89h2GNy8GXgh9W2HRm4B3dCeg00c6g+8W4SxwsYB/s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bb7n5FAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bb7n5FAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF3C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750359593;
	bh=NbdXTpEDS/GDVteXRVGdr8NUPAwaLM/KJK7DSYWBWPg=;
	h=To:Subject:From:Date:From;
	b=bb7n5FAJ7xUF3DLXvaB137+aIWdToOsopq9p+m0DoBQDeh706StcUcApCO9m3wFWh
	 AuD1OlomRa3FJS6x164EklkPkAufFVDx5useFxO0iorJNhIO/lTvzex/da/kRnyLf/
	 mMr1j4LvNXErWju1roO/VjBJqc99S1dQCScICz4tGO1fypMHTISWrvJmC++s1yO25b
	 TLdgaCFc3NMnhVVxXmqJP4vHaCsVYTlVm/QKVLHn14eBTxP2wVlDZTT3y8SVwBm77F
	 uAInepiPu3WKWL466/Zr+71iA0BVwxRuQyU4WVxbejHaLatKjkcAdoVEK6NTK0Z6Nl
	 0LA20dw9rN6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F9C7115D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035959357.25441.1920774871536454986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebda035cd1ca4e130535b4ab3633e61c03f8ae671f48c8ff0cf065cfb0049079
Date: Thu, 19 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750359593
