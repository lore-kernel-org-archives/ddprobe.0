Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300FD188580
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759448394; cv=none; b=iBGVFROd4+qmUPT5hytCpHZvCprs9kY5Z9NngHEY2ybftreA/Roh59if1EKUfHxchQ/Hy8Ua3N2DlaSjLr9kRvN2xVUdC7cGY6XY93h/jbdEmE575nPVI9SUBej1dZoLuv7LKUlVPFMxGxj1QsQrRNCawfCU0BT6J3nBMUB5DCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759448394; c=relaxed/simple;
	bh=HdccbiwJzxSyDLqW0Z3fjrRGaDt65RlJkago6u+NnU8=;
	h=To:Subject:From:Message-Id:Date; b=cwtRl26/h05tKxFSOy8hKt5LNeHtxyhtsASGw6gDqGPe0+gHsXKpyHh013Bh8LTi8pFluizEmN8jrHPqvV+4SKNmFnnUGA5+CITQYR/IEvknNmWsvKQ6BePcu0nVN9lNnU+DF5YR6/Pwd4qOlmfcv1A3nt4nrI3MZYoS/a9i3qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVFr0pbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVFr0pbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A195EC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759448393;
	bh=HdccbiwJzxSyDLqW0Z3fjrRGaDt65RlJkago6u+NnU8=;
	h=To:Subject:From:Date:From;
	b=QVFr0pbEBn+Ibf40cXCx244jvZ6uJwghTV2fsl/XAlojZEahmbB9YxKz/+YbSlPOl
	 QSo61qNhjB8XKJY3oB6Pt2/5qPyT94PuQ12DST9BOIcIK4wGeTraHZtHxL2C96sguh
	 DyXaYt3BxoKmjN/unkgO/OxsvzzVctMDIHOUOFvEzPzvNuvmg6H5uFhsqmAb3PFOvb
	 EejM9eyF4PNm1CeaSFZvD4ifQhieUOU7HV2/TdgFjoJ9wl4Q8l6LNNDogNYtmnocCc
	 +eO1nxt6LID/m5jJBq/YuUyyOATWQG5Iex33wzVnMTpiNnduf3u6o0CkF2HokWCI3z
	 bPegwlvvR8GNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F6CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175944839357.8034.13840437126360912506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79e2d2928636ffbdf68a71da5fc83094b4f5d29fca7341417aeb9b5ad9a3ed7
Date: Thu, 02 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759448393
