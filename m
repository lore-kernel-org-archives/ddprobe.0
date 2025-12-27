Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275622BAF8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766864634; cv=none; b=BdBlngiQW+1h3P15SAMpr6jaCYWfQWQgJm73HCfsZqp0jzGqGDAeLBKgNMdADogR1jkvC+KGw8fe5Ixk12JVTQWEpM0mJj5ZuE1GvXAlypdwvmV28GypIpFtW0yHx/Tx7DXp4YTmB6EdyzI19ENmXotOOJA7sD9FmyhjvQLsxbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766864634; c=relaxed/simple;
	bh=ud7p4GjfPz8qZIb37FgZOTnnW6W7pJkvshGyLdvL7Dk=;
	h=To:Subject:From:Message-Id:Date; b=jmASe/YDRC/YgWHP+yB4ot2nQCgpZ//L/BzhbHCfx0VgSsTPWHAFSeVZAbejVYvRYDIN5YyCHS0QqszzGAcRXzIXTrbp8S8UTxq3ZZmi5Gq6lUYO8e7Q7Ytl9uMsvimqGe8kXjK3Cmz/BN9EEH+0lq0d/wEuU1wl9vByrETTCIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6YJvVqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6YJvVqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40A1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766864633;
	bh=ud7p4GjfPz8qZIb37FgZOTnnW6W7pJkvshGyLdvL7Dk=;
	h=To:Subject:From:Date:From;
	b=H6YJvVqP4RepQbRJCorXdIzmxAsAa925tUhk8LMOuAv8Ddkrh86GpBTpAl6gDZBht
	 B8RsPIr5TLg6KtN4O/k6CeXkzzArZqt+83ec8e7iBgWGNeoY7l79eqv3WTkopAHCU6
	 NxCy8sVaF9ZvsMfYggeymwh+4C0GpjvSvcLS9q743UFHbtVU4ryKml7cgnF+LqyG+3
	 GaTvRfFpcqyPQ+oYH7ikVppCj4RgWsz0jYMFydSstr5EyZ2wg35tOeCHcgqBcygKh1
	 AtbIJrzI2Q4RMrp5cFJ2oJd6vjXsV1lwNcPS+E9/8lHyexgRUu9EnaMdBNVZyo7E6M
	 /UPPMv8t+nWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E5EE9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686463358.2883.7499410472566759775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5611256af87b7bef0a15f9abc07d75034c7a29f731bee25cf2f80e0cd86cef56
Date: Sat, 27 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766864633
