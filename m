Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183C72E739D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780940074; cv=none; b=gl1ZybCjzOH/pzuh7zr7EHNrxGbmZyaYs59gQFV3a7XTGp8Hgek9g1Qh/16+mP2O6/3su2iEOdcLV4hAKmJ5n05hJmThtY9UvNDmKHYHGpQqP/0jCj2TqoIoHpJO5Gaj3pKl7Q09tvABiGY6d4+a0pQIXkSqsG/BJ5J/3bH0UHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780940074; c=relaxed/simple;
	bh=Goo26Y/vJxSIt+tGplvamvrrv7/2lQHlmXrTGH8t4tU=;
	h=To:Subject:From:Message-Id:Date; b=PtrTrQEinXOMDiWSB+VObsnh6EAi2/3Kfxl/bjeuAjdMrOQP39qhdmF0DRk2sGc8IC9R9ll9ddSrlV0VgGkJHfQSebrTHLy/9qDtgSbPmM5g0sc+pVsC+jRAKgJyMZXT54MaqH0hc0/623jujilaX/sx2y7d4MTfd/8U75f5niU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjdJ7tX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjdJ7tX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A38C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780940073;
	bh=Goo26Y/vJxSIt+tGplvamvrrv7/2lQHlmXrTGH8t4tU=;
	h=To:Subject:From:Date:From;
	b=ZjdJ7tX/xVaoqpzX1jgvATTfUGV/v9waIbYbiY2yDUp6ox3/ApfBK0BV9sgomjY+T
	 FHwJgweSZvhJarwsmY/P4tp8OazvmU58d0+C12Sqbh2DBsuazNyoo7h37L8q/+A2vh
	 hOEebd95+AY244v+fcH/mG7ET+ZyUmLYYJxC8EGWE89rbNTINIUWCcXNZQlKeUXFMS
	 vRq58woIbB2lMvmAcH8LqoNgKrjdqie3euvMueJc8ya9n2gFLTYB9Q/ZzrVOe5Zvrn
	 b95Aq9pU8DigFH2n2JO2DTco3qR0hJrsq78fZcDTFeewMade27Ye/jVOokpqGr8WUC
	 4wXjooJlMbJ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA7ACD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 17:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094007369.8745.315977783075105158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ef0b42def5412e4f4a68fe40534a2f015e1dce6b899bb569cc52d72aa0454e
Date: Mon, 08 Jun 2026 17:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780940073
