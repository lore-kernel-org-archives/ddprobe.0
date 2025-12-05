Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716192EACE2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764958374; cv=none; b=PbASkPW1TxPiwagIGJxqza4HO7PJa0k4MB8f4FWW8yvFZ0IlLsoRAIz0JjxG6D11S+2AT3FNiaYhrsK9zuxBcgxckItpsdNA+5wiW6nxWVJnNzvkUmZ2nXglz4mcF+jl8WXvK7DNLPlAOnJz6/r/4OP6qNTI0pduNsXlmM0Drc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764958374; c=relaxed/simple;
	bh=CrpEWJO5X+N3JQjVh6IjsXA/oFKuupUBIQnYPq85k8M=;
	h=To:Subject:From:Message-Id:Date; b=FLWrAMOoH2hBhgsr1WZgtglYJrnOUqKk9mk/Nm6+WhM9W37QOTuN/Tbp9PgQtEQvLCJfNGvk+Ln5ybwNkqlF9vkZXA6ekjm6zEkcBgrTSD0vqX7FFyG6cvsRZ+Py07Pg66L0+p1ltfOtlRsExx6eYH7l4SLj75vjjO4sWhua4AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBHNXyKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBHNXyKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7045C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764958373;
	bh=CrpEWJO5X+N3JQjVh6IjsXA/oFKuupUBIQnYPq85k8M=;
	h=To:Subject:From:Date:From;
	b=VBHNXyKzhVusX2SsOYZJkmFjWvDebMLWX8C5sFRdOWpiMZQn4cNp9xxB9h6/0klnX
	 WDIL+PHtPdh+3BqcQViUyXFsMxfLZqY7vPTPZ7MUQhLkVbgkJb/bAPTeVki0Gu0IeV
	 0tfhX+/c3GSMuWE+8EHzE3PEwpMIqKtP3TKUEgRFOxizqYOd97u9E+5sAuVg3hHnvN
	 NaH0sJfdpMoUQT9s791YVSVGiOLxiFfMTnsRhIJycpHa1UpX+yeh1rEO1gCS8KoFe2
	 rWJhNXhMmyN6OB8SMSJVddsUxue3AO5eYOJOGkwUH4/sw17hBBMKiuTeag7Tye3og5
	 qz3lov/lqfCZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95559D339AC
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176495837360.1706.4933434469882092939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6aec496a3f377fac777e8acc188aecb8f650755a41ed164756440688c92049
Date: Fri, 05 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764958373
