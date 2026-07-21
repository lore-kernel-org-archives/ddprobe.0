Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEC053FAE11
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784598514; cv=none; b=FJQXdZ4YDEhoHPERew95gQddN8gcFeaIz68tCB/Hzuz5rf+6kKsqWjB7ZT3zDhp92wffiEQoI12pgqRfBiQuSOH3lfe1rpvkdMkSYGoenldPwyJolJ0o6vMTexW0/DK//CEVs03bgJxbfoKzwyIQCiwG5k37POHI/QHDel4lsHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784598514; c=relaxed/simple;
	bh=ORW5nJT1ARU8/VFdVvZu6MC7ooCaY+lG1h9B9hI/Das=;
	h=To:Subject:From:Message-Id:Date; b=CuJvwg4Mk2Ifs02mqwvfFqXEaG8BDb4QKKCI4BUwr7/LHfimN3A62YexF4/mCMQ9cgvaB9B+yibx6991oPD/UZzBQ1bxb17QOqy2YOeyaxrGYnnnNXIlJHmagslgzpNkY8lD8D3MNn7eR6pg7pvDVI+/lw6xOWEhNJAJuee3ppA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEc2L7gW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEc2L7gW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE65C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784598513;
	bh=ORW5nJT1ARU8/VFdVvZu6MC7ooCaY+lG1h9B9hI/Das=;
	h=To:Subject:From:Date:From;
	b=qEc2L7gWT5N7X32aQ5xMlEZ5fVm3uBFrlAfvH//SMw4ElO4BeWqtBPyCdxk0G3Bj/
	 FQML+FnfYd525kT037FN4CzgZoNVn+5RCNfiVJX7g1Dj8OhU3L6sGZMb/IwW/7Hf0J
	 2n2bcP9amuNN/QgW8hUvFMANZFx5CMwpFI+iIXuGSjrvsZTxwfeSGQB2Wopu9V0tdO
	 NzES7o7fIaP0aANQdpjgKUHThaFrx6zsI+Oye7PRUS4Lxy57/Tb2Pe92rT2ANw75bj
	 HYlnHYLeHeaLlKNy6f/OMISpTfhW3w1iJpM+3kE42vryG2yDm77wPoIwnoYzo5xj/P
	 bXuVt9vuRGI7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B37B7C44515
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459851372.11807.4994555449669077135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bfffbc2ddc2345da636878709a3be7b80c3b4b5d5f33223550441c29dc39a8
Date: Tue, 21 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784598513
