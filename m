Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EC5128816
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766691233; cv=none; b=b2M1hAOF0woe7tRhcjbr0J0+RaFQ9g4+zkU16uIcvg5YDUxw7nBr3F9F0y8LmMwju3+5lTDy95oZ46FD8PLal7kjtZjufdUVuD8OHndsrxjwVS20wUBMW3PW37neh2e3C8bsrFjyY//QFiM9qEHElPyZ5p1u3+EJeDrz4uaAAc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766691233; c=relaxed/simple;
	bh=imoAYItVIqoyC9uY8eTCmlU23VCR16d/+Kj+cA7WEd4=;
	h=To:Subject:From:Message-Id:Date; b=AjoxWZX8OO0pX8NSu8fkH561EGA8UZcoEAsvgiYFH2g5mm+oVFnxZoUVJ+YhzXDnBWeOR6/g1fWyWXrT4bvZFTBLg6jk3ywssBEwrnj8QPi0VR/D0nSIX+RpsJ7e4ZfDkQwc6VXOl0zzX9PHv2O95Vi16XW0L1I6ZjB+3pRFE1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6k83l9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6k83l9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CADC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766691233;
	bh=imoAYItVIqoyC9uY8eTCmlU23VCR16d/+Kj+cA7WEd4=;
	h=To:Subject:From:Date:From;
	b=X6k83l9mbwUWHBOJDW/Kg7af/jxm1WVd1ljg0NysqcF0JW+vq4FisnGhSTdiY2gYn
	 WKRYB3BRXwqEz2c0BGqvsGDPGs1pbLFPA2MUGQFjs34nDsQPWKdmb6vwN08sbUpdov
	 Up2xEHQjzrJXzE/2aDoxMVEjOEfHjHRKstk4P7Gmxwnjls/7/lLvkDh0+tDDyEvYFm
	 4pxabX+bOiK6Rtkdhr78b3pzxJ8ImEF+kGk4rM6KPtf3scY9KjiOZeDXLZmX9QJyKO
	 csqM9o0dvZjvgJGDOdzVDvl6xe/SkE0kocABkgRmKySTZ0EtXj5l88WGn2q5dYht/O
	 FN916FcRsk0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9691CE7AD67
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176669123358.7100.14162714132620117983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8355e16beffa52280786d18dbf1d563071784d6e9b44906dc3919b7b4872aefd
Date: Thu, 25 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766691233
