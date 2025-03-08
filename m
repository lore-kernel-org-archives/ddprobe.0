Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEEDDDAD
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 04:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741408734; cv=none; b=sfcXtjmVgQnuFX2h9SMHjbBXaWDNtLcKmFRCxgZK3nF8v43VR1Xouf88QbBdwgPg474cHJZn86pKCRI5puYCG3vEvkmX3kHP28eMyfZIiNPemsaQ3K3vSk063VGRpFEWDpQ7sFvEszwqsxXFTjkOKgLmf5hU7G/1Oocph+kN6iM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741408734; c=relaxed/simple;
	bh=u8r3iE5RYmzrdtLGUfJjXgS7e3T9nrFIxnHTuySA9hs=;
	h=To:Subject:From:Message-Id:Date; b=TC005wohJXQ9REATh2KeJRPpC7ykkMDUqAhmmw+EddWUtTBE2J7Wn1LvGvIITeXdo0aOw1Kaz4V97o98C7+EpxZlV9McVmOfauidFaLQ60SO0DgiqUKs8RtMvalVKZ0ZdZ1bg2OfmXjCsRnw75FOK3uHxw3lcgeIcKVaSbY8SdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6XflOKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6XflOKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18F5C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 04:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741408733;
	bh=u8r3iE5RYmzrdtLGUfJjXgS7e3T9nrFIxnHTuySA9hs=;
	h=To:Subject:From:Date:From;
	b=F6XflOKIEvx16mxQnE7HSoaE+v9kAHkUfBwJIC8eNOuMtT9K9Bbs/+5A05rC+kL/t
	 jssiZAdRY1C1GwOr942fT+uRI2ztYd7EDtxDY29QrUH78xiNVTe8sDu/c2YjmKNkTu
	 lXRAKKuBASQdGUTs3KPXLgd+euGF6j7do65t1Jp8XIm/j1WE1fObwGc37C/ERn/118
	 qI+bJV24wV/qCz12fsDA2czE8pKAM4/OGDhouwC/x8mFsICgSv/u6HTOsKf5g4EQTh
	 IJFRArAO5YdCNgk9PRoBmuY2hprpbJcgSswFkhWB1vsOFMtso13LzCktqsr+HAZXNE
	 fZHRJiXxSzE6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A875EC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 04:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174140873363.13708.17593781138739444517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b81a86519adc792399aa5d715a614274a47873fdee789214b7aaee32014969
Date: Sat, 08 Mar 2025 04:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741408733
