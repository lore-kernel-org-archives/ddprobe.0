Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2951E253F1F
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746191394; cv=none; b=ll9AzFm+4RwMVLo9NK/aEjZGlq13Mo3jOSbLwzY/yLsczkuo2mh+7Zw8mgM6CJVdrhztYqh1DCyZ54UFOIPRK3o33TtDl9xhnH1ZaeNKSOLTAkQwpl0aDCjuzt1SgcHj3ffReFD7lBONLHw9OjSBYzSHnzoRzAoRDf953HYAq3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746191394; c=relaxed/simple;
	bh=SEFPoiDYNuFtpjwOt8FeqWi6oag+fAzefARdeKTSSLo=;
	h=To:Subject:From:Message-Id:Date; b=iJctMmYehsPUh0uGUV1irTWGwesNHy+YlataamOpUlbiXqzmljWYNadhdRuF0t/hicNi2bq7BMHRU0CrWRCeyorucczEe7HIF1RXg6QyoExCyl5QWuHH9KxSLzvi0kCwz/BMSKyxISXXzn0FZM+/DnVAF7ljTBTrZDIkxfQLXyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAU6by3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAU6by3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D54DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746191393;
	bh=SEFPoiDYNuFtpjwOt8FeqWi6oag+fAzefARdeKTSSLo=;
	h=To:Subject:From:Date:From;
	b=bAU6by3gwa5U2TsfG4QTgZ5lvzsgp1iTCVP4Vdyrd4dKB4mNqQ6jDjxseqhF4PVhu
	 TAy+139OaHu3SAVQBWE+LTWOJGzblMqcuMhlM/oO0CtDvtYDNKYt6N2HPw89LaHG/0
	 hB6H75JpvbZXpt3ebCjVQkJEWt+Ccvl4rY5uc+Hz1Kkiv45JZoITDmQhwQqoxqnTXN
	 qshaO1p6zgnHlf8Kyipc3JlAONjFOUM+iwg1/4527RtH+FXotmSNhsIzwIgQfUdqHY
	 jwtQXMApGSOJtpFDVtEow24EwQ072wn0kgEbhU1bsiR+uh9gf/5D+BVVIKJm+dCzun
	 7WY8HxXS8MB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F9C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619139357.26824.8571791989502332654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c5a2cc7913979290012e3b10bd230c77e37c7716df1e01cc79677a8ba6b211
Date: Fri, 02 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746191393
