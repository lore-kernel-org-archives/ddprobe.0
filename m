Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BAF9377ABE
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790361634; cv=none; b=hKPOJa7HzkNnB0HYYvgjuuSd2ABzNHXrccTip3Z6G4c6cGj1iRB56NF8c/V/aHO4TPrDW60t0Yi2VJ4iPm0BkRTxwSwLCqewVAfGRCqQzhZM4Q7cRkvnbO2Yklcm1Tzyk55gi1ffZZQQwW6EK9DVkbeWY3JOl1P2vo++fI2sj9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790361634; c=relaxed/simple;
	bh=5dNxSj8lIKYCxfpl6x0XK/yffOdUFk3/YVu3DdVKczw=;
	h=To:Subject:From:Message-Id:Date; b=dWdAtlZrqwB0liiZmAyo72jdm25MuXt69dgzZluHh+84GqPhs7MIM2Y8lzqYQIgRn1QGeS+ijqaW+J9KCZM3TH9UlTcSRCx4eFhfjwSZlgZTFSEDEHwLQcgZ5fUMtKEdyO5aEvgU+Hu5aYg8+jELbmHeEwC6awONF2www4yOcvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtIxQ6XJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtIxQ6XJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECE21C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790361634;
	bh=5dNxSj8lIKYCxfpl6x0XK/yffOdUFk3/YVu3DdVKczw=;
	h=To:Subject:From:Date:From;
	b=OtIxQ6XJr2EGp4ksaQAdqM4xhr7yasHaE9pZbyTWBmUdJS3hLald8/lGw3E782SA5
	 8BcZZuYi0A19xJuFa+iUSMtgvjTQw+cd4C7iRQ/A039egzVrZKGoyuN7Li2ZAwpGoA
	 bzN6e6LtlnGg9MGgYNxgOUJWZVZ8gG+ayZ0U9rknKiGvS9moQU2SKm01oAPMJXqfOE
	 DEe2goz/wFfsee4wcDdgDWPeod8egBV4CPLPSGvMSE4k4hvCb4rrRvm/XSved8w/3K
	 yEiwBzdCwZeiJsN67dKvNJBk8SCGSwACbL9JxHRn/eougF2Q0KzHpg2KZM+X/F4SBN
	 k0UiebVSUPL+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9036C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036163374.14134.10867886249762255947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2113e21f0f9275fac941693f0540f7f6e7ec0707bad13724cecbca3db210bbfb
Date: Fri, 25 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790361633
