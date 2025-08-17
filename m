Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A062FFDFA
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755450594; cv=none; b=dtRrt8G4w7y5kY3fdHh0kKqfuHzUEZBVSlfi1zKz8IsOqNCaAtiDXO11MLUdNq92aSyme3SQ4LMym/knEDuD65+RhF6fjihQam+OWeYq8U8s+3IVrSI2iyROa0SMEbdoHSkiDiB0/IApWCRKOyRiaKGv2KRWfxChdt6N/RDqA6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755450594; c=relaxed/simple;
	bh=m3NaWvrB5jdUGil44YgnUAfot2Y1t5CBfYBG6YMrTao=;
	h=To:Subject:From:Message-Id:Date; b=uVSAryuCyRBmT6fZgYOUm4R4mD0FUX8NOfA3ySb6y2r+d9m3+L4Ikrw1UBsb+4J/8HUWEV3qNZCrGc07KEKN4aBUneHW3X36YQG8t2uzogtwiITFu0Vb6rGRmmBSfzMqQuz7+OYziXfspoGRV+JnS/WFEtC1u98be/oQLdkhRYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axhWLeJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axhWLeJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96BD2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755450593;
	bh=m3NaWvrB5jdUGil44YgnUAfot2Y1t5CBfYBG6YMrTao=;
	h=To:Subject:From:Date:From;
	b=axhWLeJsl5GVRx1+QOLSy0bCASD1Goqk2PIyWAjFmkitAJXQX/3pg5rbSRfe8bhej
	 bMg9It/DNkAoidIPWW8AjSVSknSs2B8TR7/U05wNOFFQWj3OKw8k7TZeScGAb14wzI
	 ahFwoRF35Ijuy5fPw/tBxvndXnVGKUqXy8MfSWsq4nVaqRy6Yr2wC0yo7HyhIavVX9
	 Xck5JE+wyme8vbKEMos2ThCjtMdDgQM46xjrKJnPKdqAepWYmogTnYim+mgdTXOAFc
	 qAA1dBaTNlBnXsqYvKkyQPBJRPQJaKiHu3YRycPzCHFkhe466mekjgJNlEjT7i2It/
	 uwtpVamsVECcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A3CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175545059357.21383.16531079081881561855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41de628d7ed776a73efb70d542c73b7e8482be50a5e0ed7ff813856ca6c65c52
Date: Sun, 17 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755450593
