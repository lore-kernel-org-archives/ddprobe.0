Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8603C5832
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788424234; cv=none; b=Jdpijji6YFP5gb0/llmUMQpIJ6uOquBuERNJRa563wgkz0UDKY5ou3BpZdn6o98ETWK4rB8JMH7nZXKxvP0bqNMdfmghxPAriK+zUH4SnKerZHU7MvGOpwDh1V5LFeD7jAvkI8B6nLAhWL/EXjpqkynSDpGGiVuLxyJXrErOLA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788424234; c=relaxed/simple;
	bh=RmLgJaQvGQbr5+FQ2qamAcRgSNhxUXtcxzcyuyvj9yE=;
	h=To:Subject:From:Message-Id:Date; b=FbI+yfJ8CBZyTm4/2BFqcJsScUJrQWAo6XzBXPqo/j59biFm9JAujT7tdRZKv79VFkGEdY5LYwikx9NSqy7U2DKXkUDgtw3vLN7VgA8XLNkaWeMC0NOwpUJoHfOxJislTFKKX+uo7TjSPjBS4bY+IK4w2VQ5LlkgF0RNfsV6kqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npBTnO8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npBTnO8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D28C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788424233;
	bh=RmLgJaQvGQbr5+FQ2qamAcRgSNhxUXtcxzcyuyvj9yE=;
	h=To:Subject:From:Date:From;
	b=npBTnO8d5HmREiPpeOgxVQuv4jtOpDGLhZKX2GClhuwMQclh1IgGkUKoq7Zi+P2s/
	 ZuIxYyNiW9mfdLtlbFbJfPms4aVEIrpYmgmjsCoZdwpxOjm9YZzQNaQFf+Qj0+uqQ/
	 reEd5HsjRbHsBcY6EXkebJWTuZIU5jOAePxHkhBGRK5pa+B7ZCA/xafsPkGs4sExTP
	 XFX5nILlR0uwmhR6lgz1nKuGRsGAH38hr4PxQIs03yxPUi4YJNnSGinn4PNJiTMWE5
	 YJNxKLxFpJ4Sq6y+CzWuOx3f5xBb0vedgy3MMTw5vE7mlVSQAqQI2hVyUVEUDE9oOu
	 OBDR8Hn/t5feA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE2AC61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842423370.14455.7926672729659577974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e116d33cb6ac07a06eec8ad99d11be1280fbe8e124c60336a5f88c5c97b2bb3a
Date: Thu, 03 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788424233
