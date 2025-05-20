Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E58925C6FA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747764594; cv=none; b=tP1eyOrjtbCNsu4mWqPQ/jF5tFBG/n3v1lTde7ayWrWOIUn21ABkX3WgrJElqhrZVFv9dswEvhr5bZ4cIMxTXGuQdb0pdHVWNo8El0X2CytHAcpqv3Cjdj9HUa+0cQM/+1U0ntkaMOWBJ0Ah4KD9kV5omVIHoucgBEi2MEeKuqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747764594; c=relaxed/simple;
	bh=qfJ6vRr/lk44c28OrMeQ511R+yUcKOnl8WanbcMoEE8=;
	h=To:Subject:From:Message-Id:Date; b=YSNIgfWKPdrBQ1oGqK/nGoYZ2bBN/xfF268Brv0Fm8tj8mVHpeFtC2E4eF7zw/iglfRAM+Igsjd1KwhgxzbeBt2ygTkzr/UVBs6+s/Ur08ghRT47VHS5eoeYZd9oHQKF5GGxL7MJxhcnlTjJquNzkN0cKiWhC8yikcon2FHxMhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuMJh5qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuMJh5qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020DC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747764593;
	bh=qfJ6vRr/lk44c28OrMeQ511R+yUcKOnl8WanbcMoEE8=;
	h=To:Subject:From:Date:From;
	b=CuMJh5qfLUPtC5GorLtqCQUDQLQ1yzMOzg7yd2somLB+4nfjqL58Esqt/65pZJ3/r
	 R8qeOrybfJvFzfP7icnBFCH+PXdiehWlKpf2E3vYnMZgQi1kMruq2TAqdH45IJzutv
	 RavQjuXGohrgUQGfHIGiR4zDXPHx3cIZjyDLACvXSKcG6m3Y4ZLSdN9VQ5QCF95NxO
	 GdWAszOVlVDELsEIJfqI+WJzdvrIdWGPI0dfrtvXZAQR6K0HVcoUqaLWtJu4rlG67N
	 XOtSSwZ1biOW6FCr5hSOz8bUf2l3YfbRk2EvtQZoMy7W4/8mxbjL83ffb6iUbBadwY
	 SLlCBBAvhk2ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3DDC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776459357.30392.4762608649186123119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f83b8ab4588a5a75306eb53a61a39534d61d0e92af40252e65d3efe5487be3
Date: Tue, 20 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747764593
