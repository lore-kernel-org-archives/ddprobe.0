Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1819D155336
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730564754; cv=none; b=VJSp00IfHkJ/zPaHUpLbdhC2eypj0SFOUpY0Jd+8oL/4HJBcRbYmq/yXgxChMQ+ATO/iArgL4/TeJMDh3CYw8TUh+DlUnIi+rc63Z2OsEOrZtAYVJ185s8FL/aYFgGJJ9Ry/JYxQF/8XfK13Ltaz2vA8f7BZmsXWZcF+oOVlSE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730564754; c=relaxed/simple;
	bh=WnY/E6hdiFaer1S2qjdd/e127Ck2jkPyZDAchDKLW+Y=;
	h=To:Subject:From:Message-Id:Date; b=HpVECuNYGA3wPGifGdZZEgFjCvNevOhZvhcGoCXuo8F9jVDyVjyRpIArunaQtlzl9WsSxdZzyCGasHr+w6fEUaa4Oz2nkTsk2p4yr660yiy/rx47g7QjCy0c+wQfTQpyAaiR39pwy+juhXZKgom0GbU01MKnhjVUpXL5+k39xGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af/mkWGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af/mkWGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20A0C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730564753;
	bh=WnY/E6hdiFaer1S2qjdd/e127Ck2jkPyZDAchDKLW+Y=;
	h=To:Subject:From:Date:From;
	b=af/mkWGrTV5doK4/FsQe87BMN70+P495cLaq+OQfSwTXyg19YJPXZTAK4S1BqiJNe
	 NeUPZ4rs0mMUOByJ4gROiw6Gye+l/Kaqc9yPT4azQ71XarkycuidH6YR0tRjbfvbrk
	 P4O6cGiu/Oi3ZPiR9VL8ebnCq+sFtfbyuqnYtwhco1f3M4GMPmAbo+qSrhnNBcuv2L
	 eOmsvVk4Bkx/yMk5SlmjtyX6E3Hx5azXhHQtekc4flbTYSUNpYH0y0+dovVBg53/3v
	 lIWoaDpB5hLrA+rdVSeh9UMcbjzawpc2Lz257aNdofJyARdrQDe503br4u81J7c1Nv
	 DYmYao35ulVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994F2E67805
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173056475359.28336.14962923244322425111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220df564d32d6014e10c7de18b1825d0b5d8154e20b49023b23faa36c874a12e
Date: Sat, 02 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730564753
