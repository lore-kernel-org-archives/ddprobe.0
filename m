Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC57145B1F
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721406954; cv=none; b=K/j4omKLQslnAvygTzrolcGfRkqzJZebG/lXKP7Bk5WSE35n8DBdWUxQxushGGhkBTbIyygs5NUqjL+5vGtsED1ORIOCKyiysTfjQU9S+mxt++pxrA2e8d/7uL8duPEnLgMOIqUQ7iIchimG6xUT/YnN9hIa6s4e01QljY6LFWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721406954; c=relaxed/simple;
	bh=Bg7Es9ZWDIAdSl7oiZCYIcEbbXIizZzAe1OCpAA/+a4=;
	h=To:Subject:From:Message-Id:Date; b=LXfzb0Hg5I1crXmnNkg+rE0BgdLb+q3kt308RuNCbxWTgjVivzq52RU9MV64AbTWvrgbYyaUzll1pyQFuq37RxOCRpW2ZdCHtpouNn3C+0cUsbWEwiJ4YVJxn+kFXI9kMK/VxjHDHtASjga+wUYQiuWEQ2sFGhwrCOtnAatAcuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u43Es0SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u43Es0SB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDCC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721406953;
	bh=Bg7Es9ZWDIAdSl7oiZCYIcEbbXIizZzAe1OCpAA/+a4=;
	h=To:Subject:From:Date:From;
	b=u43Es0SBvsOtk/hGF/YjvJ3kOHoNoAwDbzC3Zer9G/+2abPibKSGQYCQgl8m3afVE
	 yb7KfZv1PCkp+2lG1iI4X9Awyi0jD+wAVGk0z86Ep5UvQfJUqsWjlF27G+XJJDq+F6
	 o1L0SO3Livo/3gNGo/uwswjE0INld1eeQzGMoBWezllhtyw32wBHZsezASnGQ6dg7z
	 k0OeG6zupp+7anWWNP3KzezNXn5QTGne5OMVxiKq8iF33FllYiQ4YqCo0YaraC69I6
	 mZWLAu0len3G2VupxEIy13PkjRaJ44w/G3Zn4NYwvPsOFHrEXzckhdP0o8y65T0vyr
	 xmHDg8RIdrpLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593CC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140695360.4525.14842746198347671380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7aca6bb8bd007672f1a6a6612f69415e981e3a7e86acabb9573ac0005031f4
Date: Fri, 19 Jul 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721406953
