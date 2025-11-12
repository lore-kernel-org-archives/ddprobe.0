Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E6A257831
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762915794; cv=none; b=sLGF5JFdrweANw5jdaNpu2FOIdyjq3Vw4WJ+F/b01ZuHr9PPqx/KhtThvThso2MGKrTDwQ5a4jto3u5tiT4hVAq9pPe5e+g4dCmEbG6tgBHtfswiwHyVoJQBkR+JsKF9mTakL9F1D5JYoZguGbkrn3ZmginArnJawDRJewUIgQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762915794; c=relaxed/simple;
	bh=XRnz5fvTsd/IZD9ZKqGZi6UsiA9KoLCZa5pN+ahAwhg=;
	h=To:Subject:From:Message-Id:Date; b=cj3RzcAJRB5xTYrveGE+wshTM80yJFsE6hJpRJqUpgQpJ75X89vvdl6idck98Fycn5xjeL1di4sJDUlpm9X6Iaj4u1G0XZRPW5YwV+dIRAb2XlC9ot7Ty5S2+sUe4YKabmDtiXJY1sY0eRcwYIX50VpPUpmDf1J1CCa695MQfFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL5EtwVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL5EtwVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70DDC116D0
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762915793;
	bh=XRnz5fvTsd/IZD9ZKqGZi6UsiA9KoLCZa5pN+ahAwhg=;
	h=To:Subject:From:Date:From;
	b=NL5EtwVW2QqXkj5IX3w5EyqYsbxnMetfLK9TJdkJ7jpXMLakYIE/U4l95KuK1my+M
	 j7UtXvuvZvfxXh1hVEHF6FXdRnEIuV1J3lwLPC01aUFwIR6b4oysxD+g3N7Tig+7VW
	 iSJT9Ma+w+XVCZsy9ns/hGmS+thq5ObTE2euAsCrQ9o0I4aNwfzFymi/92pZHyj6qZ
	 U9MYF64XaTxPLA2xuESypQvMCf0CPlaOiwH9pfGSX0iGxZpQK1KxW5QELRLkIxz/Y7
	 uQsDTzslnQOLHKTOKFCJZ6QddxWUuOcq6Ge1/HgIfBWxauBv9anXqIPMN9gOn894Sm
	 dZM2nBH71UX9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AC7CCFA18
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291579358.30830.7166585136400842857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc1f1bef8d268cbc0f7cd1f785bbf0f07703c0eb2141d628d823d920bb439017
Date: Wed, 12 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762915793
