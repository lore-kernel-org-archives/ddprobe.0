Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3366F1F3D47
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736285154; cv=none; b=HjNb4fHhJD0tAphtX2JjbAzDDRHqTIgUXQGid1eqpbj0aKa7WBMot44xbNNnUWovsdRs/lmScZIPLFGSxJYOjKvCbfNka04w0MjM9O3+3Kv4Gg0qyI9qv+3dTIGskLTlBKZLVNoBJJvqxwD2IFHlFHrGYCqaA9bCayADrcIDmk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736285154; c=relaxed/simple;
	bh=v8FxLM1qCNCzH1QW4kF43o0xjkrO4ifgPQ/rwSr7oQM=;
	h=To:Subject:From:Message-Id:Date; b=ZtYl4AnOGyM3zeMHNQEYQNRdQ9Wrb23lh4qEj4nijIGSHUpyNKLehU/g77XYPz+II0Nk0X5hugC4ddobkbirQHnEHlGPtwK95kVV+ed6ddNwk9ZWA19f1RZ/zSNDsp+uZvCAJHFZ/Z00TFKoXzvR/SoX59ZLXotyalc1pId6XNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCGfFlIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCGfFlIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9C3C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736285153;
	bh=v8FxLM1qCNCzH1QW4kF43o0xjkrO4ifgPQ/rwSr7oQM=;
	h=To:Subject:From:Date:From;
	b=eCGfFlIMmdxC7zTYCObiCCv3S7PXL34P81jKrjHoxLZ40GmHiiEa42nKssRurAcmU
	 aRcrDQfxAWSOXNF9lbTooqVYV32XX0NoK2byQIQMllTNoYhNW408VxOGvbC9BOmPrt
	 HUP+R8lhBZ7EPkAnB9b7ktF8yDumhkqPfZ39O+M7x0NfGDTmJlIb+yCQBYjYSLX+6Y
	 Zxv/DIHNz29h/QMFLPYIUOwrnePwpMIaX2uESqobhcuwrtiTBKhaVShbLwrFCngLyc
	 vPlmekvbZGPpokwkplH5EiR590zxBLr7FF9jJjmiKpzo4WB8jOpgz/l3MdPGsaNz0n
	 9L0u7nsyLSRww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA7DE77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628515362.1360.6270175264480301015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ceda8468abcbe89f53f29b86cfd215874c34e3ebbe8ec0347114240ae1cf2e
Date: Tue, 07 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736285153
