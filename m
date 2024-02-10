Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076102119
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707532097; cv=none; b=u6wE2DgYyMcV1o+dOcR20j1tMtK7lm8CnGjvJaLgSkaUl+BGxeVLB9Z57jKeWrVsQh2SXsc4gAw02fmMoSfaHTZXWweCaF5+Tdusu+2JTidRLqeTELyTBCi5pDgk2XLb61IsYlZ9oCcDjDb6A5d3B+LY/2zjIrCACdRri/i4cw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707532097; c=relaxed/simple;
	bh=KjI+Z1h+8CFwntnW48HyeKzgatwZSai3cIFpbD1wkpM=;
	h=To:Subject:From:Message-Id:Date; b=ggCCkWI0nyDh/c3oz2QiijGdaUpT/ofsVA5dqwE8c0f6dTcpXQYOkRcEQa+RWoQTaSovVxEMKC7CjP4VmTYWpLvPBpnvUltlDCZMXDkTrhnJVvOLWVgg7USeeU21hN2vH1GbSpYkjnE3kos4T1+Un10/spM0rBluzaDLd0RHll8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2eBcfg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2eBcfg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EED6C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707532096;
	bh=KjI+Z1h+8CFwntnW48HyeKzgatwZSai3cIFpbD1wkpM=;
	h=To:Subject:From:Date:From;
	b=f2eBcfg5pEpOuM3V0DqF8jtM8FDStcQ1CO/Y5CQY4FBjNgncvM9knk/knjLVgeehl
	 d1QgCviDOe9KCj+VuPkX3mNjQk60XtZfwWhtPfP3EERmh0v/3DHwXyYbNkj6wyDA1Z
	 KeUJusOfcY2YU3Kt/6jkvLyccypGT2hm+qkUo9oxBorKz9DqPWOjxuFrauMK2hJnzl
	 bmk8oKhm7jbxdPtxqcaxFTHm9Fs/ihxbkGkS9n0GQ13aFHZTX3Km0aWdrhD3RnhApH
	 1tAIneNsFvbCFEoaOc3EIV8WqXT+FujZH+ds7yWD+4MbVROak4LFD3HfVamML+Yg3h
	 JO1x992qmuoAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63607C48297
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 02:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170753209638.28022.387441095526301481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b2db617c2da720d5020829e589b0af5c4659fea6e917d301e10a0ed8163424
Date: Sat, 10 Feb 2024 02:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707532096
