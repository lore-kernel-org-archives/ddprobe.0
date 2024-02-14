Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040E3C153
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707889097; cv=none; b=n3FbAoiqfo11NmeUo7oa/EVulGKqGQL7z4/c77Js+Q+Kl+fDmZauUtnyHa3SgSn2qCwt+Q4ST+bi/dJ6y1dWCVPQXec8vLLlDRhPboG2vpL85TJBgMXgA5mc78k52eU4av/jqzF4ToEkuzDRz590OP91jGP+dOuRB4ZqqOlHXXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707889097; c=relaxed/simple;
	bh=OzxuzS6y65Tdx28TM6dZuaFZucTmUYr/3h/Mkob1cXw=;
	h=To:Subject:From:Message-Id:Date; b=N2UcTyGL4zxg9eTJ9hPFZ4tmydJ+89eJAU4VFTmAaAmN9kHwSJlDZRsVxae8mRG3KkhY7IgcJkElFJFSoV4y+B8bCeouoZMJNsI70zhU8jyggGS2uLCKwMFDt/pB4TfnVYFvqilp/tu8238mCnjVV12Uby7yCXmdPlAsPPkyZ5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HA1zScTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HA1zScTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C99CC433F1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707889096;
	bh=OzxuzS6y65Tdx28TM6dZuaFZucTmUYr/3h/Mkob1cXw=;
	h=To:Subject:From:Date:From;
	b=HA1zScTSvic6SwhF8W1EBOctJxhU94i7l4emiRRh+VvROsA/QkXCR7OzGZCRX1uqm
	 ifNp1x2qdKrAWHRLXkyd9fJcwhMc8xRhRZmZwkQAg5kir2QKFwfNjTBmI0OwIvBPBv
	 K4SC8F97IZbR8ovAK007J3LV+SsJKAcR8WvfHg5dw0ZmC7semHVfnojszgknERH1v4
	 Qae6mNHbSudieZ84bTLVywHC0cugkszmI6Mx3TRY+1gnynwzz6995WDpp8cgl7Ji/8
	 xIqO4Lb054T0SZry98fKm48ev+WNodpBHYPHz0nT0PnWu8ExzUYbHMQslBS6MS3NUF
	 A/VOxUqP404+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F7CC4829D
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170788909636.20102.18114413168605193736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacaf4ae31dba67ae78fd3f410ffcce11c741304199c4b86c3b5774f9a9d2267
Date: Wed, 14 Feb 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707889096
