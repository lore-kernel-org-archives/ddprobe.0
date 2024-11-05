Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EDF215F7F
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730837154; cv=none; b=Beg1TGUTqLogDNh7eP3fst1LfX+Ozy1ltxTQ6Zjc9nl1nSVbOSHU0X7XBBWXvEUtAyIgwoKKaYC8m6exNggkhuxu+KQ5I6sfqnUInLZjMHpZbv9bxi4eAif4BicomTksP8m9P9Nc/EOUqA2eqJTcRZaDwMy6B5edSaEg8QfGPvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730837154; c=relaxed/simple;
	bh=A7yjIXn2qyCkUp/B7l+jWrO5YoHsg9SJYj6LcH4a6bY=;
	h=To:Subject:From:Message-Id:Date; b=cQ8ZEcZLRRwq66wxA7Ew7SLwso+Smac9mno60lylg2LhjtrKvsi6kUqpzYHCjQetyYq8xwrJlnkEsy8bJIjPmuUc2o0zoHmzvshyAkrGjADz/UH/O1Fltb7TkRZsbE1SiflbMAQonNf9xIi6JlIl7UiD7EpSjlOD/NOpfNqjDys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLI2pfWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLI2pfWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC837C4CED3
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730837153;
	bh=A7yjIXn2qyCkUp/B7l+jWrO5YoHsg9SJYj6LcH4a6bY=;
	h=To:Subject:From:Date:From;
	b=rLI2pfWc4+qlTql/NnT5EPYPBhb9anWB/pq28yaStyZqaudCKpU4vvYgR910xM5dX
	 v1Yjfq63MiD3lmbuECmZLZpLx2R3iyRKVfnLtQDjGYxSQBMniTdwyXmzNILxujx4bi
	 by1LZcfE7UAOvLO/uZMZWQBToJlGDEmvd0By90MpsCB7utXNOqywu43j/9Zhih9DRO
	 +eQQQgZl+iECOp1mhWr4/5IFtrpfvCScZ/7QoWD6m8gXVyAPcD8OxtoRM7Oske4ld/
	 D4VW8QcPvE5hH6+97WtnoQfoy/3vK24/xpQgQ+82ty/6frsZnP+71+43ctMe5rtOwC
	 iAKoQGefj7CCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B5FD36121
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083715359.15605.8294430741726334564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e7e1778017ee435e37fe6a5679eba24f190dc9118f4745779d97c6832634e7
Date: Tue, 05 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730837153
