Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F4A27F4CB
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750033794; cv=none; b=IJdk+fJPzA0WGqfDeuPzVBD55uM4bJ6Y7XbrXLcAsAlF7SD/wwHKvdF01Ay7eJzGbN3oNswsIDh3XB+lgf4JQKA9fgtpEpqBblOw0OsNQzb6aJedkLo4zNlGYs/it2CUwolewMXdhSfrmIgHbFLyM7ZBZPky/23wSWz+ZUkJgsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750033794; c=relaxed/simple;
	bh=qKpL+z2kDXkzzqXoer+NH7YIR8MKgc8Z5OQ4EqF56sQ=;
	h=To:Subject:From:Message-Id:Date; b=p1MfX2ty+hUH32xYm3utZjzSrq31ts6GKeaYyAIja7nWiqyda4ieLx0y3cJ/z580O071KZ7qV818eUef2TEryn20bmMPIO5w5RXO9YC4XVkzqXfSb3L5QTtEtUuliRvxEFY0GsgQl34aeOKhLnpiN8FSkf5tgzo0sR+Er0EKQJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJYuvOLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJYuvOLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5CAC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750033793;
	bh=qKpL+z2kDXkzzqXoer+NH7YIR8MKgc8Z5OQ4EqF56sQ=;
	h=To:Subject:From:Date:From;
	b=BJYuvOLWq0rZJeSIqD0ihFA1qO91/2piOeZorY31U81yGVAR+deuiAT2WwpFQGKvF
	 3eEuQdLmeNkf/XmXo8EcI9clc+HddpmAgrWY8CxLlYevdK7yQcCZhCRwq2Zuq3JNxx
	 Qv0Zedm3UntknChduEyExDktnc+5ZoP7KRJbgsW0yNSmZrhl5Ps3oe6s7uE/qmOdCz
	 xFo9ArNu7GFlx7gpsvJ4MMcILs3CQ24JjN9njVWsDFgOnXpTGeJyDY9WrayMGdubR0
	 nwvCGDjKgOSDoNwQZPzKguawsb9mCvvBcL1ABQIHVUC4fQJHHnJQMKRsnHIfLyBdbl
	 +jk/kPvZ7bSpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB61C71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003379360.14458.11864909359666383059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333cf76e58169350d9871c2c4555effcd661c0cdc0231b42a8fd842debaf464f
Date: Mon, 16 Jun 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750033793
