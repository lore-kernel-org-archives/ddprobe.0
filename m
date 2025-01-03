Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3551FC7ED
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735931754; cv=none; b=S59GAAs76hZiBSu3tzn1w8jh60iMyMsTSHlLn8hmmbZ6H0j0OeiNDnpirHN6kzfonw49rHel2d0cP0fmqbIplJQM7zvhYjEwzBiO8CHSWoXtTfH/z+pSq+rXjTakJd1QsHsHk+MTTpL4ch/K9fQMGmF0GCKSLq9heoQ759faD64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735931754; c=relaxed/simple;
	bh=m485fE0O22gJ7o+bP86ou4jj04QCrR32+82HhghNvLc=;
	h=To:Subject:From:Message-Id:Date; b=t30cQbc3MZA4ZDVxuH3CsVtt7s0ZFHOL4bWCu6ziLMpBCBQ9NPgUtI2D9WNNKC4/VYJwC6HNtOTIHB/htD1SN1Tp2tIHWeDjZYt22uv7h6SGAjOhJoDyp7T5jMG63LmIVqQYvC5Sctag23GPeW9w3LEcSo7VfQGhmv9jPPEbrmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZzD5F+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZzD5F+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1680C4CED2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735931753;
	bh=m485fE0O22gJ7o+bP86ou4jj04QCrR32+82HhghNvLc=;
	h=To:Subject:From:Date:From;
	b=FZzD5F+ehehQE1Pv6U5TTIowZNfKFtaU6bbHL/lRVmZXmzvgOLsDGYpDF5nyDlF4j
	 KOHb/2Qbg2VY/eixMvN4NYfLSAix49dB0FdSG7eVVDl5vOq4JhsvbxPSLOpvGArCUW
	 wIzBKix/bhU7jCe3SeybMuCZA5GmRKm2rqgmnDHfsMyNHUIeWwbrKEmTWVDpI2DIu/
	 oy4i+JZHFEA24QGij/LQ4eXNzL3tOLeqqjKSlUqWWk7TkG+fpaySRNcwTx0aKWqXpw
	 tYr6Q4OgajF7KAHTrrgar7QWF7XO2QhUTXTp/qPXe6izSC3mY9ZXBudV/OQIItStM0
	 x3mLMyVGwV3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B6BE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593175361.24854.2199157248193904341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a69785a1ba305c4ee1264d30d6a25e5d7e858479bc3159946e52305def5e47
Date: Fri, 03 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735931753
