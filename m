Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB66F1F130F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745302794; cv=none; b=sEED4zTADMTC+K41sJr+v4sBMT7IgoeXT/YoI7yPbFExlCgHnjBlFsBscGYgtpkw1YJo4dhDCoNKJFuOy8vs8voZw4cwOm9rwelG6obnNm8yzffojK+doeN0rhkxosyJ0uC1ohrfe/MP6GMkDFTgaKvmURS5J8N8mtb//l8Mad8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745302794; c=relaxed/simple;
	bh=p74FRVdwCb+TbhMHx73dBkfxZo+b04pWszPfZT+PVG8=;
	h=To:Subject:From:Message-Id:Date; b=SQ0zEboqz9gQP2zWmXFLpH6PV45cGSjNqmjh2dro+/SYnqTExu1ZSIr9Z+H+5Z0C6mDvTqNzDo1GqqhW/x3pKnjpkRQh9mBIhsgfqO8BqrHr6M4gVHFHLScHioYF7K1I6ej9rb8lbJ4qJQB95kWkx9hqsD/FaE3lYSprBQ2Qo5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW9VUGbk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW9VUGbk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B293BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745302793;
	bh=p74FRVdwCb+TbhMHx73dBkfxZo+b04pWszPfZT+PVG8=;
	h=To:Subject:From:Date:From;
	b=MW9VUGbkUUccZ3t7Yux2+s14WgezmaIZKXG7YIVJCdu9HvaUPzX0M2XpfCQ8UMweb
	 J4RbZnqx7KKPQTK2/p+5WnEj0ALs665nCxgcWJCgplBnXnDdTo7qZNOUkPFRA25jyt
	 QBj8yzF1pfF/9y9GviCTsJAXzViKt24ZFS+oOr6q0/0ksmFPSm19eGcp2dRysSkRU2
	 jS8tHKmqwYx2tz+TGUOZtZPV1ySZsy5vEOjyYK2UIBQBDxlrGfNo9yyVk3XQUCjB54
	 XG4QXy/N0AT7Y7InfgK2cCBQPtCI7HilJe8t7juHAqNv3r7Fz0YnFGNbniPPMaeZc1
	 ZHWcaooAyXnVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAC0C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530279364.28241.723647903663923675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a4b9b17347f597f427aafc7415d5d5de60a4a1252ee574b908176abfd777e8c
Date: Tue, 22 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745302793
