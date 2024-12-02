Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA078494
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733102754; cv=none; b=XvrHEoEBehN3JHbzioHPA2LLR0xYHY9BRJbu6EW3WKID3exrqm1hYppxfnqYiyPUNlDdLrWr5LlAlQvy6jBJ7xdFJrPZ8C4UaF0IjE26CBwbjJM2FM8npRYo2Ka6FnNhZ7PUbEV4SIXU0Vuzg76NmbrigVGLw9bISrR31iE4NA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733102754; c=relaxed/simple;
	bh=5UA0X5UV+sNBvlbfr9Fm+PyYisG5yknpNADShQsOTuA=;
	h=To:Subject:From:Message-Id:Date; b=YFexA1VPDUwPW2uEefW9Ic1T4xSpeGVRv9pkPPAMgrWqkFbJcn3AOfLubCoxUctb4kW7EyjDeUHu+XDgXsQDB89+oM+i9fA2LoR7eoE58CQ5QOpbZkZPS7u7N+8C83FBnaN28SY5St4XaUfzSUY1GAvYBhPKKXZKr+hw72g6qHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/uM7x2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/uM7x2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28EEC4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733102753;
	bh=5UA0X5UV+sNBvlbfr9Fm+PyYisG5yknpNADShQsOTuA=;
	h=To:Subject:From:Date:From;
	b=e/uM7x2taVlol360O6/qcOjKa2ut9xuSLd515W6Y387eA2UFru6WHbsOYAuEOrhCl
	 Q0zt8bDp17TKJZ7vi7RVoT8nv0WaPZrGSWCGcpuUnbxHr+Ftf50FIvWIbOyF2y2MSl
	 GnFCYnPKW6lkmKlPEpV75jRKHxB5Q27D8SQfQi1kddrJtxFp30BN7rnjCTr2jGmj7E
	 KKZK5FFoLbE8vfgtqzrsiHBX5SlNuyfhw2EILHdd2MHiIV5JhZoVAtvyrvKrfGEkfn
	 QX+j77jDDahrKxqcOsdNJzId+emz0E4QcZGFtC/lxNySikgYhSn23OieGSo0S7959F
	 iw0+/Z+Uk6+Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C217D49792
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173310275362.15659.6309054209231841501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f24000875fada3da86ceb559e62791e90444fbb23f571f1741aea1b4e813ef02
Date: Mon, 02 Dec 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733102753
