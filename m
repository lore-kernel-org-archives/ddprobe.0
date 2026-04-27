Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BE6372EE3
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777326454; cv=none; b=VG1ChF8R/JnNXbnvISjQQbe4ANPceBjok8T7Jj+VTYBuymtC97G0vPwD1oSPsS089IIlMUzc8iVUWhRJHPF0i2k0HRManrgV9KfnqeM/73Do9nIOfBmvBBZKfzrG4dU8Huq1rC2ClFpn0Hxyi4G4VPlu5NdF4/hDd3HRCgLDo00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777326454; c=relaxed/simple;
	bh=RtKOZIa9oKRAVyso1xHKXAiScyCVJMz9JGpn+n/j19M=;
	h=To:Subject:From:Message-Id:Date; b=q/PmnPVrv0qW9fQKlR5w7jB5fqe41luHRnNpsF3MGwhx0q/shLqJuSSDoxHft9dnKLMFEPmcGv4YX2DWNhJx0klYKAlXLEsxTCfQXMg4TmH/FbeITMjoDje81tYfBGS1udIWN4Qz4PYndPQBIrsk9qZ1L4K0HVjJzgjtPVetIHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVMPFeDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVMPFeDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC788C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777326453;
	bh=RtKOZIa9oKRAVyso1xHKXAiScyCVJMz9JGpn+n/j19M=;
	h=To:Subject:From:Date:From;
	b=iVMPFeDtVhvJG6WM1yGRgfclr9z2zYOwCNPHRUE20nFRjGoz3sJLc8VcRGdvYB4x9
	 C1dtRY9NNuitSpcG91BzKU8lN83cWxnmIf7zsMaExMFQ1mhaNkIs1/5OX9mBUMZQiw
	 chFXn3L4prJEuGhjQCOpC+z/hHaM7zZSdpKTFpFO+6HVv7io/fuW9XYto4771lCTk7
	 BjHi1jkSi62PyQbhgvvvtaCnJa/n4xGz75myj8V0oXpnIBWpM0w4NIJX9OMWjwe8mr
	 zDpAvun59aJjT63Wl7XDbZE+CTnD7vmA2q7Dvv9j5K8VnfDBCtHp2aSTTSlMGv/ySV
	 v6uqCDAzaEa2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9747FF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732645368.23153.7295052539122478793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4fd101489bbe6252a84b741e193c9f339fdb1674bb4c78127997dfbe2f94ad
Date: Mon, 27 Apr 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777326453
