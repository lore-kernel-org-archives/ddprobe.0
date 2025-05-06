Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BB486348
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746504594; cv=none; b=Wm0prZnkJLv021M637qIG6hMF2YozIG1ZjvUcqn6UN1taBBNzWQaPp4Nrh1Xq69ox62+XiM6asMPjvBvW5OVdhlOsMIBGryKVtdLzSwoRqEQvpBMqgn06vlOgqnH53UH5xDDDxIGGovfRR+s47uWkvv1ev+riv9+7WFbd+NoFZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746504594; c=relaxed/simple;
	bh=5QKhWeJscmURRdcmzV4ZB9ENVBpKTC5jgSIT8YCj3pI=;
	h=To:Subject:From:Message-Id:Date; b=kGMfBP3du+rTGtMZfyc8Kyn+RZt97AjO1CcE5vUzzDWs8ABxV9f91Uj8mijpY+Gq3ol/hT64lczAo5aPDj+z7B3ew6Mt0UBgTFOtXjbj1nX0gG2k2IWhHhV76HXOYrZBAhQpUywm+4d1CishQgthgVxmS5eq745o0cyHDo/njlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3mrUsVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3mrUsVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3C0C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746504593;
	bh=5QKhWeJscmURRdcmzV4ZB9ENVBpKTC5jgSIT8YCj3pI=;
	h=To:Subject:From:Date:From;
	b=M3mrUsVp8DftoPP3VfZbfSMEtDn1PvYwap3KER+zDmGQqe2uYKpxxdYRa5PB/AXdz
	 sMyVbp3vrl/NzgWT8TmATmeEvjTr1qWtFpB2sYkJRFeFu4s0+Yw1rCSAEuFIhFXywv
	 c9wsI6eVksstQLOyfgsw83RZcvBrvXLtxNnchCUEr9kmzEPsXYIIfnTJU1TizJmHq3
	 F2soVPId7L3/LuBMfGk7DqeZsUt6dEi8Khup2eJdys/WqPGbHGGE8FnoyLqabSfzFc
	 fi8j567rNfVFZnKBYbn1dIeEl8hEWg0JbN3KPz8VPbeiDKbX1UQihrfcB/WGZG96xV
	 lsRBJ2Q22Ig+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7EAC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174650459362.24838.14208843849924792621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5e1b685e9396b9e379ec5912134bd55919d8a93349e873ce33ad5bba7b28cc
Date: Tue, 06 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746504593
