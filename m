Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D494B2D5C8B
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756828193; cv=none; b=FsEBi0b7aA/+lR76LgsfzlM/2mcGapw4djb6qeKqKNgem/8bx6BtqI3mKDRjM0GDgWTyLxSFyJEydP5vJIKbXbV9q3NyKlRIa7JGIYXCSv2FzP537564q9hoPD5VeXLKmIXrBzAOlsiteEG2Igu0ix6iVmzbxuCJw49G4DFha9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756828193; c=relaxed/simple;
	bh=4sdefNBR2muNl2fpD5XdO22GZ0BdkJn8iF1+f0TeZkg=;
	h=To:Subject:From:Message-Id:Date; b=By+KiarJENtvd8sSH1OSNNvrWSpDo1F2flWVOUw7b1Q5y9NJcLBFdqAHKDK+AxTCByEr1gxVFyyMQBsG8lLCk0yOFD+aJS0YZtlThnXe/sdwEVy6VabMy5PcLTaygk0FmITtBMOwmZlqxRZMYHrxzob85SJeF3hLiEVz40g44yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eo5tEmPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eo5tEmPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65C3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756828193;
	bh=4sdefNBR2muNl2fpD5XdO22GZ0BdkJn8iF1+f0TeZkg=;
	h=To:Subject:From:Date:From;
	b=Eo5tEmPqQrta6UCdXlgWg/FUKgPyVomKx+nu3HGU9RnYuJ5JPRcw/l/NpABRrJP8l
	 grxECZ3E6Rm5yKPi58Rk24YKbWPApe9h6ZbScS7YfWawZ5ExXoQvnTg7t/fdJtQDEt
	 1I/I3tgW3z40FsEBLmLKVJw1yTteUgRM+yUFPLCM6ygsTCa5/qjoEqAeGsu81uQa+u
	 fvgryJKt4TDmeRhZbXQR81b6DOx4X913/lwHuqCTwgCPy7Yw8EQusGdOT8stF5s2ra
	 n4155p5x/kt3TKaHW58u1Uh7ckgBCR/O+egQKkXZWZKm6aPIYZtA+x4yKAjdvwra5m
	 i+/hV4BTs6zNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB7CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682819358.14072.12797515032076733607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ff9a28eef9a391951dcef967f272ab1ecaebbe2470281c44ebdc30bcfa297b
Date: Tue, 02 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756828193
