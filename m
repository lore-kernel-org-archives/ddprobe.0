Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09B0E571
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770945894; cv=none; b=sCxT/I9841mdb9jC/FQJHTLPRhApmw2U0+ZWQw+OoL1q7yN2Kd2NSrjh1oE448Ep78c9Zb7pmirx4/Dfw/++9GCyQKs5tAKFAT7cAlVBI4WTL6hsc75BEMjaG4OcY2lzlzXikqiXqORfKAPk4/rCSrIGY7D4gz51jcxzn5YZGuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770945894; c=relaxed/simple;
	bh=2JuJFfWHufTpNF0H8oBHMVPbQaHnjfqe6zPUzSUyzHI=;
	h=To:Subject:From:Message-Id:Date; b=fUFNv25lB712VUK8yAUqyqcVh5Nou/Nu0IlIRn3fylTkEoDw6/QV7joFGdPgmE8snuX+Hgrf5D8ncq0HpJEJe0dnriG34x20k2sWHTxMZr5bZ2Braf+TjXmi6Gz0rLbxl6ycM95foMX2vcBlsFFGDoj1SL/EnKcomIJ314vQnMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4pVvKHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4pVvKHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD2CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770945893;
	bh=2JuJFfWHufTpNF0H8oBHMVPbQaHnjfqe6zPUzSUyzHI=;
	h=To:Subject:From:Date:From;
	b=f4pVvKHwyu1MOhMSN1L2q2Js3XBzH1pQiO9ODTbglt2dlEToWiffurMzuZbbNpIf/
	 J6Q0SG/Ry0WL7F+VsR7FfgaGyI97APc+s5N74/dnMUPttT1jkldZTgXGF4Cajg3LMV
	 WHNnE6cNVM9hVsQ3w4AcO8V8TMgNJwYGFeFohvjV6fmB1ovbVoGjO/E0b//INEhlbs
	 7FsNam2fb6SB2xSgSapxkpb0ahRkSRfdu4JtbbARGRvrPe9MNeJxXLoJzVS+eRvksC
	 TvyCB7AQtxxT7sUHQveWQm6R5G3bE93rO+vCbB7de2DMvL+NN5ERnG2MZ6kd/W+cD0
	 VtuO3CgDDI34g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D6EEA849
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094589367.15903.12594056626076931552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69551e425d6edc32f10a934270815d6aeafefcd6bb74187407ead80f0ff17dfb
Date: Fri, 13 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770945893
