Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E59427707
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785718234; cv=none; b=YyTZxsQ+7iIBO4FTYK6qACnig1HcxAzfmSJOwkKTm6i+K0E8V8TMn9tlaZItRu0MqkV6XvyqTchMlNrDoJ2CpO5Uxx62JiiUJZeKJ4C3fAFIvNFKz9CyZruHVT5q0JtB6E7xIo90kN1gqHVrIvv96zZWW++pq+UEuiQAACHwSw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785718234; c=relaxed/simple;
	bh=6VA/xHYyOKzSyWyzdqd5yS0ZSO9uMvVkzmWxfpWdHk0=;
	h=To:Subject:From:Message-Id:Date; b=Ecf3pgtCpsqK4KbF/NOolD6cnlapP3BiIPOTw70fYMVlRArfP80J08t8gPBN8hf/tHySjPp2qumhYqCWWQu8Vz2B6BrQ/r8mQqV5ZSXBJHpOq8O0hC3/vqGRwLRpjzpZl6WN9eXDtRznqIAY8YWTdPzB7UXsEdcLekvT8g3zfI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpmM7jms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpmM7jms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF89AC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785718233;
	bh=6VA/xHYyOKzSyWyzdqd5yS0ZSO9uMvVkzmWxfpWdHk0=;
	h=To:Subject:From:Date:From;
	b=kpmM7jmsITHIQ6drheQI8Y77prU6l0DVhIiL/I1brnRNQ+Qks/EH5/wuVsdxIU/s/
	 nHIh5CtwB+x6ykunHH0eorHVX5kITxPBdYuTPsuSzNJIezF+g2jYk8ZQ3hvOKL8qxg
	 sR5mhg0hwFowlBxXphmaDfY7N+wgA/6wrNiiF/zoT2wq6V5lRTZsud2FP+W+Xw55Fn
	 OAPQwrsOmOnrQFhc0sK6MWHB9dYqz8rHLWiLBTwZ22qlqlMXZ8/3C0WlUz9XcyM+72
	 NCb9MQTIf6XxZnV/nWzTczRJ/fVsnpbq3qVlu9HCfyJmj/i4gyC1kGH7R4erNnlA/O
	 j3tlzbW6VafSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB306C55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571823368.6905.182406070221866711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aece8322a9035644e6456f657c227c07688c079a70d0435743cd70a40d57dc58
Date: Mon, 03 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785718233
