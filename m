Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D41BA45
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785032434; cv=none; b=Guvj6kDfFlKWACoz1GEbzeL8x9gJPmHhlyE/2h0jfUjJTGeYYUre0AZiRohi6g2v2GeFNaqowA9+k/PxwKV44jqglB4MAovqc1UuDNvJV7OgfTmWOhykZpYSFbls64DmlEgx6QVHFtiOZjIPPUF9SQchQ//joyM92zfaj1I241s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785032434; c=relaxed/simple;
	bh=LtZ13BJjWB0oeYLuoOKD/15vnnrIZoUUmu++U1OA9g8=;
	h=To:Subject:From:Message-Id:Date; b=cPHrQsgOiOcbX6Fa0W4UeycjZIxD2TqqL8cpkAcLOc1jlGy5UMUlPw++74Dl1sTzhaF1pK2qoI5aj0VZOh7xGDZvyZeCDMh77SKf2wUSurpBUjwCrnAV2+9s7Q/RUNF8ojVXO1WDgLrdeuYTCtfMeuYefUNTRyBKlVQzbYaqiVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7xNYEss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7xNYEss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B39C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785032433;
	bh=LtZ13BJjWB0oeYLuoOKD/15vnnrIZoUUmu++U1OA9g8=;
	h=To:Subject:From:Date:From;
	b=a7xNYEss2Dvvwwi1dRhHBe84E845yZnPYB11QJ2pBVNNgf52IZNVlT/BBQv6VuWXO
	 kWlzg/tDhn2UEAuvOcZBF8o81HKzxf9fF1ARJUmLci+9vsohthhiJJYqtj9c12ewBT
	 //6GEYfGwGBQle9PCyUe+M3rtoBQi1XZL0Wmc7O/gmEXhtQOtPzHGIDBwHgAnz7BVy
	 fOeERzIc7bfye8wYN/HT0nIEs2xyOWYi2vDtugD6q3jliZg9mVoLvtxeghSzmWO0i8
	 AiWlATIIak6xmkUrAFIDj2TkjWOACmXH5gQTvHL6NTCExAvBoosgXDDGksltd9rqGp
	 ega3LrVwDNTMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8047C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503243368.11443.7665442770838427950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34477ee9bc2d3ea5bdd84f34cd5671fe018bdc78c4457b1ea47d0adbc167630e
Date: Sun, 26 Jul 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785032433
