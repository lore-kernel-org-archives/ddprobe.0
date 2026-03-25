Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A8818AFE
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774400694; cv=none; b=Ys/kp+uSGVkMaTtufAKR83w1CiQZafcmbj11qrwjO/grqhpEv8QEeNq9IonkYmfsVCOtuRy+abJ7jMjXuH/HbcddWf3hxhT8sWFl91HdQd1HlLUYcTFtuDKWZS7x2G+gQA28ReOa0EBj3yAyoeR+LiaRXx4bWGPhfjkdNWaQlYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774400694; c=relaxed/simple;
	bh=uuUXLEWMOjQKzUBvvDhKgzt0Tma1FIhNNjlUtOYnDic=;
	h=To:Subject:From:Message-Id:Date; b=m1zgNWl6bf0dM1Y8MqMDjmUpS1N1WHSgGglXYKFbEBC/NBJTX5ZdQt8aRMjkseuHouRt62zfIpdlfMTWGT7BFZ6jgEPfUEGKVV1tvOALzPW4WcMQNHTt0wQ9i5vPVssTfmhyqEGnp5pZDAwmJ6x6q80t22WOO9HQmUQtWOO20Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb+Dz6lm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb+Dz6lm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB45C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774400693;
	bh=uuUXLEWMOjQKzUBvvDhKgzt0Tma1FIhNNjlUtOYnDic=;
	h=To:Subject:From:Date:From;
	b=Kb+Dz6lms0/cr8Nfny/Ya4Hph+mRKRnjqVB+Y4pZwFr/lGZj9PeJGx7vZeeHUXn2x
	 WVwrhQ7CDrid9KTslgHBndQ4/VlHjaRhJToqdcEJ9tZIV2l91yXgfso2mRZf7GiLN9
	 sH1DVGYn8TmQU+dEa4epN8W6ED3gi+bkeLi+cRLU+2t7ZaQHE+yCyDJvWHW4Bf7kxh
	 ZIAVqJ1Pn5HLXsAggNgTGrSS7GzBDmIJX/w3CAfmanA5ZAnNUAzw/GsxuEd2Gl+unH
	 svwaKW5oAVAK5nIaPOJaNObWxZvv5I52iiP9WtKWTF7qyZDgyjpeV+Hz/qlpgiIZCA
	 h8q8VbfPtnnpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C37FEC0F4
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440069358.1788.9804141779915591500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b5e3b4291cf44310457084ab7d271d3aa5c0b1e9a7c6eb1261e8504e7c2406
Date: Wed, 25 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774400693
