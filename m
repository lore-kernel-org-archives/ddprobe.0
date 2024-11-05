Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1059E1AA785
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730811954; cv=none; b=d6GKeseWjtGn9xCn7WhFCQ+0EPmRJtVED80FaIe0HUgXmG3NHfnMZz9MX1Yd9DmQ1+tsWODOXY6fpci0GbbiIdm0igTFW5w/l2JNvVneZyZTZSdQ7yXtAXuLsrweqpVOg/MV+MVxNVb04rmsRm0xFNcsR3wWuwMGDjuUN+AY3JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730811954; c=relaxed/simple;
	bh=z+eiNjq4HNDThjLBpgKuN77+1L7b8hTQeO+flM4dgS0=;
	h=To:Subject:From:Message-Id:Date; b=PUBHUL54KqXeJX8CcTeIxb8QhnVI15qNQS/92QSSwYUVonB46zwgEtpHV7w2kRb4IHOvcGH1rzOch4T8ub0IOY3igcgPWN9n8aaVxo9cD/iVigNGj8j9DGTO92X6h5tFJArFSpvWOz5HgS0QYivOiyxVRO0sqihaNOBUdtDkoIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPB6kfvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPB6kfvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADB4C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730811953;
	bh=z+eiNjq4HNDThjLBpgKuN77+1L7b8hTQeO+flM4dgS0=;
	h=To:Subject:From:Date:From;
	b=OPB6kfvoDIFpc8Fg7wJyVF5WC7YdCuTE/dsx2v2lJ1BJtzDWnD2dhO6UUxdZD3W+O
	 YvXKQ4zNu/U0tyInLySXO8ftNNf4xh7ev5XedEW1z33/Qaer8V3QIIkRpqdzb3Z433
	 ontXZvIPaVXhvs9KQKFdqlAyar7uy3VrNufmb05dzqX95QCnx4wtmtHIQB/Fead0yO
	 vOmxwD397Lu74bnVSNu4/vJWXLfx2Hri7V/90CAOZNlDC2XyYy6T4uzmeaAN+p6UxM
	 hDuVgB1hrSOz9R8bdN+SAXwgDWCDZu0JrTfLa9D5fSygImaX9Xb5MZUGYohoOCjbeO
	 sIXvIgjBVRuBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982FDD2B920
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173081195361.4035.17371262380236780343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78fe666c9ed4fc2253be115d01d1252a906d9df823afe29ee0ea915f359e0dd7
Date: Tue, 05 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730811953
