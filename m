Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAEC12E1CD
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716567203; cv=none; b=JNcwP+2Wzu6JdSt4SisGPWvJrNADOVBFiGCoav6a3JKjEIxStwBJuCohyvyNIhOQ9DXXRxT+4V6W4BUyIY+Q78DYdoJlM1hilh22AYTc/SVxURDWRbaRKzym5oJ9Am+A9mYcaAeTpq2JuCARsXqZD9W+iSYiLe5FOxdLtQlkZBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716567203; c=relaxed/simple;
	bh=XHM+/r/rzUkX1Ljm4TdalNh2Cn5js2HGcnGJ/HFz60w=;
	h=To:Subject:From:Message-Id:Date; b=noJf5FutjpDEBu9+J+M54qizb+eK+p5nQRkOlO7lHMu/pINFRkWuAoHRP/GowkAiwtsBM5zhK6LWFCopa8xxvu3wH1xxbYZmefV28GvNW4WVVP4uzDl7yFnhTnWc6/0KIP/2eoKTz+pjDlgq1O+guG+CDNNK1G571AdOCtI8eJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MOS5OrmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MOS5OrmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67A9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716567202;
	bh=XHM+/r/rzUkX1Ljm4TdalNh2Cn5js2HGcnGJ/HFz60w=;
	h=To:Subject:From:Date:From;
	b=MOS5OrmJyB08ZcfqgxUP63a9+Eywq4aAnNkIuz3WKSvRYSYePFsTAyIDXyIZ9+upA
	 KJ7BzPQoYgOAl3EVkI4FjN4A8uJeGRZAe9HqDgTogVdYAKIHrO0yAIefL58Y+eBdDs
	 mbTVmDlZWRlYfCBO0Iq5dwu7u1ThMQ4SbhZCdTGy1ClPvbKvOS2fPsrYBUYzcOCBjl
	 gI1BYwyBBZOK5TPq5C1uFv2vTnbkGDjNXspyETQ2YMr00L4RrVq6g4vOeYZQ8/1n5z
	 Yzqi4aqw6P4q1nOosEmp1cowuW1v/nWwDkTiSVqYCYBgJXg+3Jusm45mrLNIzpHPkc
	 RtAZneVucdu/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AA3C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656720278.24775.41455005130605089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5161c3137aa7b3e5dfcfdce850adecce1f012f7a2cace7614e238891218ab45
Date: Fri, 24 May 2024 16:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716567202
