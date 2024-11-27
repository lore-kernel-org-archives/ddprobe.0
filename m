Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5941946B
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732689954; cv=none; b=uA9xWKlprgUkENtOJN3A42sW1mse7TzRXw5dtZqxZESgA8K37jJZDc65B4XjUepKAPW9UGsgtB2a1ksPHh+P0A7XV4YC2FLtaGmicmzB/QLUImbn+ly/hizqrkT1l77JA7AM7aSPqmm0HwuCRRtBhF7qZN3MZCooFhOrldl7DyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732689954; c=relaxed/simple;
	bh=fOOtyVfvoj7eDMq8HEtI4dboUhekYj0t7NjkAC0d3us=;
	h=To:Subject:From:Message-Id:Date; b=rQ7B5nAtfeFgrme4aC9r7hwqfZkoZxdgxKMlv5p7l9tbMW+MGcBKYqZ4PQfm9DQFcbGIMY/uXnAuzevdKZzxDwYjun+AgVxuS5IrmFW1xGchaWIH0AGjrXJwlqugzYPB9Ab2OF7RoDeDquzVL47vB/gVqPCsxbr3niMXRtt7DJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd9c3ioe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd9c3ioe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F77C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732689953;
	bh=fOOtyVfvoj7eDMq8HEtI4dboUhekYj0t7NjkAC0d3us=;
	h=To:Subject:From:Date:From;
	b=gd9c3ioefa+eJJhMgNToOlm3JG15YNjUISutNmihj9/wpdL6V7jnfVN3gUuRWDfcW
	 IKYkrO7nzi3GWmlIRmnYkfwPgOP6EIzSzmk6qr3jbe017+U83iYIv7rnGMFenmRRVv
	 lHZsfaXOCgwBwmWb0RFoK40bfxBHl7qHGaQqN0Jbgo+jqrm2RWdz5J0Tog/sGnrYfK
	 WithnjaobpNLLyE844NVSWJljVXxXEFERt9bW05mwLfXsoHF38r0fh7+eQfMNuJHGt
	 t5ywFaYA5jS2m0UbqKYZ5lRAL0dzL7ek0rllYLYOJvyi4Ap6SX0W3URTzph3iKWi0c
	 N+z+uZFIOit4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8D0D609A3
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173268995362.11285.9389736145272586434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a182ffa71cc5b91583809bc670c348b40eb3b5848b7d6f74eb7079522a50f747
Date: Wed, 27 Nov 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732689953
