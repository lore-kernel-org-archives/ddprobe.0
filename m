Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C454E3259
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791546634; cv=none; b=NZ+obL+bKRyO/wBa2Ost1Fdg87N2q43idTwKZAPIdVrkbDRIhQ9uI9gIDSaJ4yKWyuBRdBT2pwIrkrKCe64uniEzdXMBtDdKUf44QG8fUdJ6SoZP/TpzqPq0FjDDJHyvyMOfyNDCifdGn2myZ+vll/C/qUTofNBnabABz64GiVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791546634; c=relaxed/simple;
	bh=XYAykNpmFTMbEybjuJmuy71gdLlG50Yfwbnnor10bKs=;
	h=To:Subject:From:Message-Id:Date; b=CR5OpQTDJe7JtGYzb8ZxuTz+SMVhDvHodwXL1m15x1Px0cJZh4qYzFYGYGJzEpoXIaV/KOxnk+1Mx1W0YiYnDzsnrju+24S1sVAdq1IaCiy/BWSw0WmPzgEnhTazCvxxI4zVhKew1C5+bCgvUmfmbQUXYHf4b2JsXyXEJZh6uqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAjsMOiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAjsMOiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C62C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791546633;
	bh=XYAykNpmFTMbEybjuJmuy71gdLlG50Yfwbnnor10bKs=;
	h=To:Subject:From:Date:From;
	b=jAjsMOiSnaN5++WKk56D1HyTZhVxbyniD49ci2vKLLL1tt6XgXYMOxsxQQxuXKEHA
	 192wfb3d4KaPjZJvbizyi0YBdVr4BmTazWRNYWF0Ytq1Sf7U4/SPWcPKf27iOi3EcZ
	 8zsJeZA+DkxU98ADuEtrZGYaPiL4+1uG2u2YkP3Ft+HlzLhw5693uO0HodK5tXiZlR
	 pR5rlG4/iZAzGK+Djqo9VaguwvwSAvSquV3wxdEjNvlUidFEzEsnFzEfNymW/5lqZt
	 doOmYYMP5gDuYofl3WGRhbdnbpHZEAVxwqZzVtYq4cGsAkFVLi5GxcW9YEFq1TP+Ol
	 bdf35PqM/FZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0307CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154663368.18006.2700245445519074608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f870af722ce19cac7d6a490b37ee06354084dc90d21064185d9675799c86d561
Date: Fri, 09 Oct 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791546633
