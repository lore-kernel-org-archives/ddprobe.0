Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519703DEACC
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780557274; cv=none; b=ZKmaZA3nEV2mGVhVH6AHizwI2q5JBiIKMglbFdS152jwQz92EzsadqZYYqzch8VBdrA1hyuqOjM/zwt2hde+KMjKWXr9JNbfmWMNVxtAb5x4S0kGEUAYSUkmRY+gnHlVCw9/bWfjswM0I7jbvscCSQZjeCNDJKFy9M+rMknlNEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780557274; c=relaxed/simple;
	bh=egrBuwsQHF2rnqyOkKv389GIa0kGB8Twsg8x0hqqcgY=;
	h=To:Subject:From:Message-Id:Date; b=caewVbNIciTqFckl6d0nVyeeu1eEhdg7RqwB4JF5ILiIo39wR0MqkQXySVGoYgot5g0/WIwN1a8astigVw5fISnjoSvDhZHk+nYV6ucQNSmfPUKnqJAF7TO7+H+xCszondgH1mWf/oMvgWsxfYt89Jg/p8MOSP/vuTqnmTa9tS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJIFtg/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJIFtg/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BDCC2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780557273;
	bh=egrBuwsQHF2rnqyOkKv389GIa0kGB8Twsg8x0hqqcgY=;
	h=To:Subject:From:Date:From;
	b=fJIFtg/suda6U3j8NUpOS7v0N6penfqp1lEUWhaH58pH/DaHP0tQpqEwMaCFkhAj7
	 AiQmxuqL9zOrggQaMMyyDtqaebSJkSowdjKxyta2d92AsZcr4LFftm8Bg5q/G9tjrq
	 x++IsRwZJ5t7+TfNDBPgcIzr+GYN0H7Oghq6JNNSqc4089UoosexcmpXlobRgnwsqi
	 nRZfUYu/SxtjjQut5kYbhRJJMZhZrE2JgF50KA98V/J22n0/td2pR+jBhL71/L5KPK
	 O0UG+xOBaDpaSx6nEIJazDRUe06R9J53Mha9JjrH2BxgB7HYlSsnhtSOvlqKUNUf8c
	 nhnxMsLVbeJaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E90CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055727374.22181.17175834487523208646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dae853f56edb723eda1dd075a997091adaa318c03f338372ae89e4adf4ec0489
Date: Thu, 04 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780557273
