Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576151FAC4D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735917354; cv=none; b=Kw7Yg8PiQQnioXEZquGQHUYRb2ldxp+Aug9pActexnXh/66Ssbx6NrkytV5kAZe9p68/7DqDapTM1upaXbFXcM9DUVwWE0R1YrhFuRA0yA36gMloircpIgOKlXfWzhOhKsV5pt+2IA46gunj/74Q1XvYxYLPD2c+JZPjaGZDH7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735917354; c=relaxed/simple;
	bh=LJDKZvbU/a98CKvTyDnK61n/nDQ170I4DhX6qMjaZc4=;
	h=To:Subject:From:Message-Id:Date; b=dzB1zYixXFvIALkBsEfz7M9iIv+wpFqSRGAxDdPtiQ3DDz5GjT8wVj6os8V8p4K5NWkK7pyzGLFIjAmRjCip/qx0YbsQKgmxgk2BI1lihn8qDvcfccgB2+SKqExFsPY0jdtcLDJaGR6T5cASIEsJ1Btt7yOYXnsDuIAqy03KZrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkHjPqos; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkHjPqos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8637C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735917353;
	bh=LJDKZvbU/a98CKvTyDnK61n/nDQ170I4DhX6qMjaZc4=;
	h=To:Subject:From:Date:From;
	b=GkHjPqoskWEJN+VkuUOqldgf1s5+dbp2Ae+Gj6lrql2eiDtagkbcd5hz+hXNpQMKa
	 BMj0gYf3XUm754MTU2WEzceSVQUPD7iKo2DzhALxJPokol3Lh9ZxnD+MCzmQlWHZg4
	 NBoBzQMAJtJY3sDMwo/kOAutrq4ktNTSynFwlp7jlxQx/kKv0g97IBoQPekmccX69C
	 rXTtYHM8By6UF+PwrrEt5imM7DZDaLx5wsjoThVjPe0v9Wz78iLp2IX0BF95A/KLcT
	 H06uuBIK2utCVyCU8ttX1EX2yR9ttOkykRwd7+BeY+V7w4vOj7BdETd+WXvqAxfBFq
	 2BHxrP92Bf93Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F39E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591735359.7990.8725658410260184028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7fa58e32df6e516b1692939718a6a7107c01b4b15f58e2b30a143c4a883b60c
Date: Fri, 03 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735917353
