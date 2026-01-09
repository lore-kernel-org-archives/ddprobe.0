Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBD411713
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767923034; cv=none; b=pZp48kd/cC0pOlvOf0O0apc17CPbfDmQBOfeneyRdvT5IfCjIr8Q4RdgU/eTyma1Gf1ULL1t+f6ddDs5NXPHVKICAuue4rZHpQo0DrdPzKWLmDJhY/8gvC9/Yg07OwBd83rWfSVTRbFW5bC145nZfi6Pr7d7e8UQFS7M6NkVEAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767923034; c=relaxed/simple;
	bh=A/ET6ClK+RJorh5/EfzK1qP0uGdKd8Um6Yg5qqBp53o=;
	h=To:Subject:From:Message-Id:Date; b=qNqloASUCsj0BVpefZosHg0OY1/ZlLnfsjTc4q8GLdJWkpl2ZZ18i1rn03x7mlMj/O5yyuWOWhW5myetAK/H0wvYoicW07Wp2TpJZq5r97INeWiGv+UorzlvDgWs3bgHl1/YFnfYSRD4VFuAFdMomnuXS7870CzAZqNgk85fKQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsNqLfge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsNqLfge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A034EC116C6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767923033;
	bh=A/ET6ClK+RJorh5/EfzK1qP0uGdKd8Um6Yg5qqBp53o=;
	h=To:Subject:From:Date:From;
	b=UsNqLfgeaa9T0ksHO/Wbo3iIGoWFUYYKGxtrtzOM5dnE1SY2TlB9eW/xwrmw9a0sp
	 Ocba7Dj7ecol1QYnkWlDjQvEwAk2kaF6LyDanUP8KWMLDdIdY0crXD6qrDR4CzIbzT
	 Jgekr62kNNMJkgQj0GsIExRl6G0qMXOLBwNTzMNj04k1lq6Y74HEVZHvdL/+yvjcDY
	 d79JSPeSNrFAnk4U0gVSodwJER3kLxTYIzc2OZBNoMBOslFNxBtp//f+xPnK5HChv+
	 ORjbT/zniTXtVR6/0BsQo/s+jC8oAEshEuVzg+S5azm3b+Zz1aqeI4omkB6qDQaTPx
	 IUNTeSd69N8cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F60ED232CB
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176792303357.17206.925074793623151916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e91b741c7a04c2e741f8d85fcadcc0ce3aecdea641334d3f453b9393972295
Date: Fri, 09 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767923033
