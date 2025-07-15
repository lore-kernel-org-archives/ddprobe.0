Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1C02820B6
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752612594; cv=none; b=a5yZOzcNHjXgI7Qz80ZMQAka/F+x37anWpvOuchh670fQdoKGEE2wThOTBlIlVxbSZsAsax8TMZkI1wWLGbqS7wtP0bax9qgI5tBV1/my3EldBGGOwtW51NRZrWVFRFTd6/UuFaxtgJjyqPppiJJtlcM8e88rguUa10cH5haUVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752612594; c=relaxed/simple;
	bh=uXPnN0lnWKWlgo9iLGJyeIuWaU4HDQvlHgatlPWiKSk=;
	h=To:Subject:From:Message-Id:Date; b=booJHeQ9FoE59WQhrww8YAZY6s1RynanLjf4opx0aBPapzwEGKDV4vtr+ehbGYAzG4fBBPFQUOaIUo3erD9xrr8s5MKItnxzKBd506Imbp1acHk9x1Fr1XTQoKaDDfk0nkp8+L7IWlrMNY7Gv0zqdluHppQVu/aZ0GT8Oad2Hw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzh1BMAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzh1BMAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A666CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752612593;
	bh=uXPnN0lnWKWlgo9iLGJyeIuWaU4HDQvlHgatlPWiKSk=;
	h=To:Subject:From:Date:From;
	b=gzh1BMAwp5ggZ6QFio7ok99aCIP7q9m+zljHv1R6MqUgy5s7n2J0QT6CVTr9AcXCv
	 SXc5DU0XMCMysT+0K5oJCOv3fi7IhsMv2h/vK116sNmlw764t7VjVBdLMCSG4vgL/c
	 VeZV6QEAFdJ+sgVRZ1K+85G0m1MQn7fWOoxjktOdxIHKNxR8GEgBpzGWSuUbnO/sJv
	 XZPTxL/SUiFRyfTKMtcyn0/D43L9/BUbtitm81um/yQYtQvXRu3KwOeYOc5sgXA0Qy
	 NELlPF0tMiY7LEPmbStxvhuc1YuVpdjm0ydd7oCSfWs2cx2brk/0egNjTwx5DC+zFo
	 6enUKQNMGhdAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F96C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261259358.31364.2906376621906037946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec517b6a8e3cfaf48ace9504bdb01a850093f4f8210b67ca815c8093cfbf285
Date: Tue, 15 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752612593
