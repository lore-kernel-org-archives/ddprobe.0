Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1555B130AF8
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708991297; cv=none; b=g7E1sQZ9kM/nGKNttMUsQ6RguN84/uirYEjeZopV3BVSL6ML3S3iO8zm89HAkiSk7kiZNhBC8Z7YIIHBdKz7kIWLWWUCmQGXVLrZsQKZAhvj3cnmb9JGG6F4R7TQu6mm46n9unwbEgtZ22DhwolG2T9eZs/PxfR8U9ggpp9r7/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708991297; c=relaxed/simple;
	bh=/WRdvoWnr69yiw2yOKMR1s8GeP7GXpa3ckWQ8siGIEI=;
	h=To:Subject:From:Message-Id:Date; b=YMGNpiCwLGKOOrfsPdNKTAT/Sdx7VXMrsITnPwlHmNr5d0VUL0agfwpqTwumPq+veDQ9kV5UQaOOzOb00akLWibX6ds1cwa0rsM6hi12wkfCiVm6U6R8bCFu36UMGC3xM42tlMoa3iREmbAyOyMAGBAFQpgwfa0JtOQrA0JpwbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOHhq0F+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOHhq0F+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B92C433C7
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708991296;
	bh=/WRdvoWnr69yiw2yOKMR1s8GeP7GXpa3ckWQ8siGIEI=;
	h=To:Subject:From:Date:From;
	b=BOHhq0F+7uv5Fub/Z3hPeTGIqSpQGvUfW6VUq4YyX/wy61htsltmlAr5wE8qf+MsI
	 iKw5V7ljcg1vTBMDi9Zhs+oE28JmUEEn8Ajd1q3uR6drNAz19DF54tYhaibyZ8g3To
	 rnEPTH8gohMpugaVTU7DiEpH0frtPZw0NyQIgkE4llazpAlY4CF8S1QfJryVrx+VgK
	 kZIsnt6ydcO0Ir0KZxN/KMDZKPKYzMwdUQt1FRUD/IMAedZ1eHk2kixyIjLpwazvRS
	 raIMIIetfqRo+5EuzttAbzvG+zqcBmcoUNavyDeVlojRVCxNRtUf+jGvJHB/bvPWax
	 X0ASxbqigaCDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F73C5478C
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170899129640.21113.6664013464043069546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c748d1062db5c726700e87402799824374a54e12f2bdf35a28b11e5db5e9e5
Date: Mon, 26 Feb 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708991296
