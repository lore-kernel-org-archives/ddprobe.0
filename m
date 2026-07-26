Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C7A5464D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785097234; cv=none; b=PjUeUbfL/yrJd5w/Z+FaCyPcITgqpZy8+dvc8JEYkccLVIKViuPpEN2gS3CAsuzUJq/g41HmQnNW3g4GAPZ1QfV5HmQc4C+TPs49/AKgPxCJv6LiLYlEuk2yJjytnq3BBml+Z/4BVilgWqQgwYd9SGeQTzfKYEILkdTY8HHDlws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785097234; c=relaxed/simple;
	bh=cLowiLF4v2/FqLV7gt/o5Xt1rKLuVkciBWtXDSCa45M=;
	h=To:Subject:From:Message-Id:Date; b=WMbVTG+d4mGOMmcXqp2HEQtiNNwGorVUqOU3j/BUsxVJXeOEnRXHXaVX7VEisXoXEOkJn2F6fUpzEOA0wCvowOm7ASWjb8XtMfUR3DZ2WK8AEZen6KcXRqzbf1NI0lPTuhlSOJ83WAFNF4bD/WQ3ZzW1aW3kd1776PVXKB8M4uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbFRbs8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbFRbs8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC52C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785097233;
	bh=cLowiLF4v2/FqLV7gt/o5Xt1rKLuVkciBWtXDSCa45M=;
	h=To:Subject:From:Date:From;
	b=SbFRbs8K6aCRJbZ0HyrcNSkkhuHGYyFQBUIip3Mp4YlyIh5a8ieSdom3Z5eBhqSAG
	 6SFvqEVCeEBYf+OvZv0tGQaxPaUV6c+D48NndK1jtCRW+IgGOn/RFwKYmuADIXKs6r
	 t/n78qhk3WLx2my3pSxQ0149XEegYXb/1rymshGQi+Py6dbYEdPV168lsR4dDBBqOo
	 e6te1dPwgnfokau59H88g928qhzXhv7/T2/bQNIats36wlxdx4AfbD4f2HRhmK2PN4
	 /YizYFBS06BTg7HjnkKmkv6LCNY05O1KEq8OIQwyj0x9UzvDGdlX/fEIKgT8/GbfiV
	 tX9hLZsy7C1WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D3C531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509723367.4481.13899601670393966949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ce1f5b980b97da65c1a0513fb8ed190ec0ba4b58c972d241ae1d6cad1f45d5
Date: Sun, 26 Jul 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785097233
