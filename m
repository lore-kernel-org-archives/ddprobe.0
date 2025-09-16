Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D28529B8CF
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019194; cv=none; b=k4yykgVVeUY5JnHsyZnzIR9Ig8ecMjIgJF2nneL2eu6RSgj/HV27jfbtpzVb+hgNZHtU1CmM3BxlzGjl/DFK9Ha7KRS4WwS1DB0I7GyEFuXU9tuCxSem6fWhVIv6XzPEznNgo6gAyejaYGBhBlKPVZe/Cr9p5RD1tMoou2gflro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019194; c=relaxed/simple;
	bh=hWvXZko2brg9HyJJocyDfYrCrganXF42PfjEL/M4B4o=;
	h=To:Subject:From:Message-Id:Date; b=otCboZMdCpdkg3OPKrtQihZThlIkgMp8tyAebX0SzzAPf6pbApoPDUt23vNpAPtwpBSV2sS3onNtV+RFVIKg6A4WJTbrdusj2le+uJ/PS1DVA5d36fr5tmO59m/cODpCtJYjbBmLPuQIG7J18y8YwGYyqMGEuwF9qYIn3lKAmng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDziI+Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDziI+Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E051C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758019193;
	bh=hWvXZko2brg9HyJJocyDfYrCrganXF42PfjEL/M4B4o=;
	h=To:Subject:From:Date:From;
	b=aDziI+IqbLpzYImOkX43ZKgp/JaJuofiXXKhM09ZSp2kGX43GVf576vAdo04NnuFp
	 0L6+SbM//GW9DvCSkEcfjysO7YTbT+TY9DacqhBGWVBF0jMfLaAjjQZ/OyFd7rMf+o
	 1yUW8Nme/ClQrWvof978mz+Z6qH3VaeTR7Qe6AxT/O0LeHmdgNjdCZ98xoV817/vR8
	 KpAoP9dQDG+kGArSMhLtJR/fQgQVo+JKPoQfAyWQDB8wB7BLgnLqkT/MqUIGMztN6Y
	 ZzMctlkxtPGqkct+NRd28Cio23Ir/72dKbnYJZ+DEjsb+caYnLpVeOvHJVd6OQSmuX
	 FnA9BSiPzgfCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF41CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175801919357.10697.946776414381848705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce5f2f8132eb5eb2a03518616518bfdeaa19409a334fb417a1418fb5a9a6b0c
Date: Tue, 16 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758019193
