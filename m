Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1076426AE8
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726820154; cv=none; b=PZjYr7Sd9rx7vdAv2uqUXIIE4To6B8LrJHDxqHo09jH+4uJ2uDPg6640xxVVosNQozYFFhTzmdiCJ8bluLlPeYskQI7g+b6a3FqzxRagpo8olAfXpWL2MMWcVp7/szq7V/EYa7B61oEQCfmz2qsM2Xorbv/zs3be+JRh5KppgU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726820154; c=relaxed/simple;
	bh=57Jn6GGZ9lWiUrH6LcquvS3Vd5fJsMTnrTANeDnZ3ZY=;
	h=To:Subject:From:Message-Id:Date; b=ZYuqrnet5y6AzgNK7IhFqrcFDH6gNg5lG6lBQyWI1IIn6J7fl64wuhVZi1FrzDZ7ljAQYLgSRZG/6DTt37/9ZG/fJfvDrMMAdt9dX+Lxwggn4eJfEzmH4QLyquInapqL2xWxsxtYnyXUuIc88K8fUfY4Zsl7GWuob7pgaYccOUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxuNNiVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxuNNiVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F774C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726820153;
	bh=57Jn6GGZ9lWiUrH6LcquvS3Vd5fJsMTnrTANeDnZ3ZY=;
	h=To:Subject:From:Date:From;
	b=mxuNNiVBnTrDIOGw9ELE8ysHBYUMnmEA+N/xoJ7BwKfsCL8IMwtM3kT1awIWE/K0c
	 TUboLf0xCGBFQahGC3e0XX8zqT8hXaEhZZc0qqpiD5Zmy04q03XktaXb4Tta/1pqq3
	 O05gR+t2f0ZXukip7d+dZ/l2PKxmToXhFvPEs82bLM5XZcBGUNdvcyUowQq8OQMdpS
	 WhtIfFA5i8hGLmaD+Pru/ZesZtKu6JNhnXDhRexxUNlsN0rogM0rFQkR4w+ytXqxLw
	 YQ64SsGG9pDIQphuV3EeT53KkSvZPuHsMlWtKy6V6VIGa6gYWxSKvikHQKm4hxRqQn
	 4d4LDdijP1PzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91013CF58DD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682015358.1061.11054346720495394810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9935c7c0f9efd49996de8054ecda92281bb06614a7744c79a71ab01aaefd2898
Date: Fri, 20 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726820153
