Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDCC219FC
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750606794; cv=none; b=tIlwA9N568d1J1ROq9HrbTas3KlcqU1GH92DuG2A4g6JYmZBOka6KG3R/VrXDniw9ejMTX4Ww1mvNWt4NfphIGrN9Y4YsN9HHpgu1J/xuWMObwraaBNeWz0dFO2c35hoc0bqI0LyFuEQp02zTYUp1couNAkL+ZueonbWV72KztY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750606794; c=relaxed/simple;
	bh=Fiw2Hjn9wYnysGMvr3GYdWAGtB9VWNj+UxZ7EYlzQ9k=;
	h=To:Subject:From:Message-Id:Date; b=IYG5BOfcxSPCcrs413l0HCj36KNEysSffLPjvw/rhZuC3OMkDTJdCS3VVr2u5DM6zGSDP75dzKGvvUlgDAGLu65XBY1srVXm6qlvPRFEJwbox61dtwNSl02oeTOwxqckG0MPf//fQAVgazncGBfLwpErEkCsvEgK2vEKVX8+IMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEJTDC7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEJTDC7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD968C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750606793;
	bh=Fiw2Hjn9wYnysGMvr3GYdWAGtB9VWNj+UxZ7EYlzQ9k=;
	h=To:Subject:From:Date:From;
	b=MEJTDC7hj59hFOyB+ufRfcHmglsWJJMRYEAPWa/fIZC6Tlh5BzPO4L8JopWxHs7z0
	 qePmKp6JnpXZbil41BSDEOzrujxubmiHMipPWHodr0EdeoO/ftrJcAcaO1CSQqlI53
	 l6pp6dofAM3/VsDPoO/R+gCqLW/qdszqO1Ltd8qQwagrLhch4G0adU4B+u8L6/aMCo
	 ArnGBztF64BKpyBQebidQeUY8V6k9saarimTAq+BY6xEguyjC+BQEn7avaJ+GUi07Q
	 aF1upGiYGt44cBGlnbKnMMWuNA+tXH3sONufFZ7iQnfH4bznKkpSpwB6FOCnnfNghH
	 GruD6YFWs8Bng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A65CC7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060679357.26023.13374525706942766703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a683a005ded95df5b9c1589107540b86c4f25f62dbc08968a73d71c7375f7cd0
Date: Sun, 22 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750606793
