Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555F24690
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741517934; cv=none; b=WuUB36IVqnDmCI5NiOdgZGwoAgzHbW82VnVOmJUkqX3xVgaQI4fNaBpKwK+oGKUKN4pmcAnVN54Dq/1LKhv4wyAl2T1gOmlZ/TJGBZFoBOGcKCoj6+V4JMqlHfDnjg9KuXBwc2u1dLteEgOyaE2xkeyJHWrrgQBUl3D+Tv3+Pa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741517934; c=relaxed/simple;
	bh=A8VVBY6CFvESUQB2R9rvjqwu+xoOMaCOrjGJy/VN02M=;
	h=To:Subject:From:Message-Id:Date; b=koFRvtiEryxVKYNoAHH82HuO///0vs8WN0Sf9xhaalR1xbAHQLNNzJykBe3mic0FkkpyDNnAcsU+n/iJCEasL29Qrcklm5mgMd2W4oa74ctNdJsyJqDykgquKG7cEXV94cb/rNLyoV4D+PUJEAa0uZuXhdITQ5KuP0NqhXOkI48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKsw2Z5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKsw2Z5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A3CC4CEE5
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741517933;
	bh=A8VVBY6CFvESUQB2R9rvjqwu+xoOMaCOrjGJy/VN02M=;
	h=To:Subject:From:Date:From;
	b=sKsw2Z5kvXTiQv/WKDPES4OrzsPKXZTleXoho+OZZd124Zs7RaNpIjEyOKAoQFmuc
	 Tpebkmgvikt7riDJJhwYct+/ATO02KMIKiu/AnRmCEI+F/WkHU6+IYuBctZnyXiEJn
	 rvnJY8OT9b2P1IM74CSWgusFCAf9z7utwoCpu8CNY7y1S9m8+uq5Jrov+v+XV7QeLQ
	 C8qc2lI5iTyAAqX6kFRR9+zZC1xzKOEwxUNgdu9Ndw2aDhqlrQE7qwX1rw5sX11W2I
	 6rx+K5hFcrdOcPWtrl7AwZahC66eMz/csVe9X64vv+OJpERII9mzoqcjYzLh5LYrmL
	 G5EBHRBLjznvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F68C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 10:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174151793360.24260.16331616067549859687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c432cba3633f2dd389fc170238c31f7c877ccb0cd679e65c725eb6fb1ddc9449
Date: Sun, 09 Mar 2025 10:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741517933
