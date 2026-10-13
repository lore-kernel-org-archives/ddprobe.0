Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A743389104
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791892834; cv=none; b=ZgaeEBPZkwRHxz+4DszrI2w/Slf/orBM6nD6xcO+JX7WxkztykH/uk8o5NYEkKzJCKLhG7NkqaVzd0SjtHtzAJOUkVFLfBL4X1H8BbRhvYI03/hXIs9fYab/lDZ9O9WIcwI/bpsPfh0jPd7W75lt4ci02jPaRzDzXwGFbmXNwmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791892834; c=relaxed/simple;
	bh=tFWkSPhIfG3XZjAVso4cbFioJTcIF2gvZyqO/bzMfHA=;
	h=To:Subject:From:Message-Id:Date; b=rCHh7yHiITGAlgRfdm/zjqyjPYjzq4xogSDDdfczZMoVuRQ5MdERZx/6Xkm4CYKOrJv/Lu9chEUvDPCx76HQ0e5NLWGXZQAztsPSGmnCcxcbXjBvLuqdaHcPk5HbUzc2FgGU90ddkPyThE8qeea8uga/GYz8z8lSkx4bdz7RiBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TE3iNKrK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TE3iNKrK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8552C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791892833;
	bh=tFWkSPhIfG3XZjAVso4cbFioJTcIF2gvZyqO/bzMfHA=;
	h=To:Subject:From:Date:From;
	b=TE3iNKrKXC9GqSDfv4v9tIe3HujNrg1FVdExfLOirnIUOa1SlmVB80DInosBYzOyZ
	 lQPT5rQBeGLsCk3dl8OJmqtcer2jTWoIOXyItJ+Ic0piGnvIV+Uns3FFcRXu4uM0TL
	 MouMNtwrrrfy1ODGycFI4bECZ19UzmAJ10CQmsp7qtMALzn2DVxicHscwzEILXmS+6
	 Pze6mXwD/lyCNFZ54DLDTZOkSmz+aapkhKHdYniHRVHWrvqeYhaulT041bA4zkn/i0
	 yJfFNIJLdIIrmUTDDlQPsPkCI2tFxWAVx0aKpdbfjHCUxVfWFuPTdFaxja4etJNhWj
	 uUZp52dabeQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF40ACC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189283370.16470.2671145375507824866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1123f7a02a7e804c1de9480db75259bd4b3e511299c0e369b64a908256aff535
Date: Tue, 13 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791892833
