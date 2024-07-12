Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E86F9D9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720760843; cv=none; b=P7batHqza5hcqB0t7kj5dei3tOTM8SILu4y4WuCQM331TGSIjibyfEU4Y0NU7EVvKVoTiuBOP9UupbJXc1aVLLWjlF7CiqyQ/tr3tzzQIonYUHWUSsYKnGiSAaXVfBzbbc2fRm+gaz+NNrzssqwMwGrooXeSLEJ5SRHE/jCBBPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720760843; c=relaxed/simple;
	bh=BvW6kBw/GQX5z/7/MguBrjP1c9iDJrfQ0xBPMPXLrn8=;
	h=To:Subject:From:Message-Id:Date; b=L9HZrfi7PSeKrrI3UTnJzzvYKzZzdWm1zKSjpVQVQPkTERGQkj4uzcqp+Ds5TpHV0hm+bLvcoXOhqFqHDp0TIp2KwSeG7COdi+cSp/d8CXdK4rO54nFjakSNERXEgQK3yWfdwFMx2z1fv26gzFC90g2iYGBEL1EZhAfkTYlz/J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/s3gzSn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/s3gzSn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D6FC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720760842;
	bh=BvW6kBw/GQX5z/7/MguBrjP1c9iDJrfQ0xBPMPXLrn8=;
	h=To:Subject:From:Date:From;
	b=g/s3gzSnTh4JxENLY27VepMvqplFYhJFuQlIgv2R55+zhgqkc3LjJrmJJk6LjDf+R
	 WqJGmNOn40g/nY2B4RozF+L6u98jLFOrPcV8uAswEoSEkZUEe1YhG2o4JIN2IGGLXv
	 94Gx85xyk5FxYD3yohZ9TMa6jJg+w6nPKHcLxyb8EsV1O/AHxPm+rFyqAuQQNGgZE2
	 dgxwK6UJq+kGZledw2TZfGFL77QIi0Vka4C773pZ0d5OOclRetlsnqroplM4hdiG9A
	 ROXipJZCSpX6J24nL7rkCDsm+T+eOKWy4FLqOgcRMZmLnbRTEc9ege4ea6vaYzG8xD
	 5yt+48/pBVhVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD778C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 05:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076084276.7453.4418398350373162708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe835aced76733d4dcc9b2d4d3615b22b88eceff8ee35fd9bfbc8130cb1cd65
Date: Fri, 12 Jul 2024 05:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720760842
