Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA54220F26
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746698394; cv=none; b=OTJoHl7eFNhmfXCv0V21p2HodoUw6HyChylxhXUHEAamBlwl1DYoq9vkEQMuiRneb+Oz9eKI4nNagDLtgeM1mM859ND9LeYUGkx4Q0et9u49BhSI8W6fXgDCmTHndEt0s3FlEfjOH0JUxyrO9SA+mzLigOw7UlJXI3eNYgj9C6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746698394; c=relaxed/simple;
	bh=++SqiX/qEi3dQfqBN61xtVM6vqWQnKMSLxGbOMTqfsU=;
	h=To:Subject:From:Message-Id:Date; b=qlJ8cUBmDXI0TMfTiIkTHciRLb8tEY+RwmJJn5sM85KYApN7BsQmOhReA+J3AAFht3mydw6GpjcoHETfS91Ymi7Z1x1WIpiEjI0ntrKTswDF8QH4W/Sr3Yp86ncstj/LsMc6hvkbTfmsSEfG/iLD2Ddt1xXd/kKbeiHzpLzkuf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUDLWu8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUDLWu8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC47C4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746698393;
	bh=++SqiX/qEi3dQfqBN61xtVM6vqWQnKMSLxGbOMTqfsU=;
	h=To:Subject:From:Date:From;
	b=NUDLWu8+hIFT/oxKdcKfB/L4SL+mxwKTAtjGmr6mtr8Eghv0a58B0TC1LJ8scimfs
	 e+H0LTwHosrdmTV6Q9wMCMPppribcUU/uhf9UeedpJwXXh+bqwO8WDwiJbCoSNa0T0
	 PAhxcZp1zjUiaXsrBndstfrE3S9UJApw6rY21f32GGA8YoEgKJX4u9HzyEc57jQy7X
	 u/sqhePliTZo/sm/k7uRQ0KDKrEyiZ8Myh/lfqR+WjPmBHntTGngR9CzMa568H0cBh
	 GOSfwDvP6fbZ8Woe8tG1XxQuNjauScXZQ5yB0DfMFUTvAYwvltpiWyVSqQcDp+WsO4
	 tC+U9qGHv/LsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E44FC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669839357.27482.881992461799338758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120623ac09c3fd76abb4e6a4dc79bd735cdca3831f1744026e1430cb3a54c5fa
Date: Thu, 08 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746698393
