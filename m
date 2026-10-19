Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72CF368D40
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792377034; cv=none; b=kdjpWPLpQ7bNMTbZBe4t1/f3stylAHn6VWE5Y5mCJncGVW2zxIJJe56xTxYzmEIkOWPa1yuP13EK6ENF7K4WMugyJz7c3gq83O479raEaNRh5MAsJ8CHBctLwfc+61IiunbCEoEn9wfk0nO0+UZgmRqcBDy+4D0Y9Vlz5QV8KNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792377034; c=relaxed/simple;
	bh=4T/tjQTzLiewbxYnW8cylWwW/MTlX3MQzjbJG7xjBHM=;
	h=To:Subject:From:Message-Id:Date; b=ApcLyTm7E+4liasB+3icxI/bWMGzGCOJIgRPyXwMwEImzLv2FQJaT9DbTYoH/YZBsVL+fhqQZ8tuxk/4OY0F+OXKosNa9WQxfjT9WJjwRMoHmYrfSdUxTwS9DwQ5cYGhilmrZcHbCq1hoLd64oRRmkMF5uylUDE2qMemKLHpEmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3GW7kaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3GW7kaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1180C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792377033;
	bh=4T/tjQTzLiewbxYnW8cylWwW/MTlX3MQzjbJG7xjBHM=;
	h=To:Subject:From:Date:From;
	b=p3GW7kaEoxwELky5EhZKJzyRTcXkycfLiVssu1cGsBk8szbAScx4zNsoe7cDu1PVY
	 UH5xeZ+aSjYUx8i3pYAtlSAfakDWLRqHXnIs257+p3uCiFCg+vynWWZ9ccSJVlqp9C
	 e0pEKr5eUexqkSJvJxLYmTbRjT/SIJzdK6AbuVk6kVJO5s6gD/f2YDmhNk1Mo0d0CH
	 UpvN1CkgB4vr6vspy3ypDzK3KE+iKpg9aMY9wkg3BW1EUo6jV+wgLmFDQNBaBDYtQ+
	 oM+BQxZ/5lNfTCBdWlDdOYhdfHmg1Fw5/S3Hk9hais6yjnwidRihJ6AhGWO9xpbkQe
	 5kTjDpczjKZ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C8CCA490
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237703368.5999.7074406357031760938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b8ba771f0c8988731cc86395175682ded05daee5f58dc5e81798d8af70ba36
Date: Mon, 19 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792377033
