Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356AD20B7F9
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754467194; cv=none; b=j+HhccTRkPxesv8yCwBUOM89p96N8bJVy1MwHxIe5S2GugQOO2EW06YWC+Ot9D3yNZsGJoe6EdvbEO8htFgQQ2E5Us/N132lJJgxG43JLUDEP4NHyHCtvqQ1R0Ie2vmN17mvVLL7dXOl4fTzzLZGiM6PZ5NhcIlaH3tT2EA2h3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754467194; c=relaxed/simple;
	bh=r1FykmSYlEBYK2P85FEXUF47mqP9dp2etDVt1Jkbbvc=;
	h=To:Subject:From:Message-Id:Date; b=QVcOm3mH4JZA0t4Qjs+E+nu8QyIIhQJZOISSXnoMgWBr+w3sw3c1EVMQcRjAb0nSmN0jr4X4PWYt5D+sV7O3yy6eTSDBRPtEza2UrhLXSxUaESIoUrZKQTmCZWLyceF/n5wG8WdGTkyEKmgjfGLzjePaeQ8828NL1oV45sVGBcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HccVuvKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HccVuvKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B121AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754467193;
	bh=r1FykmSYlEBYK2P85FEXUF47mqP9dp2etDVt1Jkbbvc=;
	h=To:Subject:From:Date:From;
	b=HccVuvKoMSAGll+3fXqWlxWxUJiGwXmFLrXOtqNR6iQI+aOCTrL14rjzr4BjZUmrZ
	 nyRi2+ACnF/eGoE7c3wRYJeVsg9svqGBGUQ+99dHa/wTLkhamOoEX80N0xVKBX+kWz
	 J6GC9yGhEFykiK+ty9mPFh4ptWxm7fv+EWSaB9bG+7XcEThWoko7Z3/5f38QjMxzLz
	 8ifeOGx2e1HiIZjKELE23iae5GzLKDlqWo3F2DXcsXQgIeU4FYtO9eNPAzJlu3QpDr
	 gpcWS4jGLHOeYlDlgXupN5GYjo9tAc265xD8TPw7nc4L2aj3Eg+vQHxb6WodMd/71M
	 cgBkxOykr17lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFAFC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446719362.7309.15840140994046119670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2438d0ab76410185d12caf693dd2e86df16ed05cc75770529de5a11ed2975603
Date: Wed, 06 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754467193
