Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABAB309EFC
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790946034; cv=none; b=XjCPvqtumNiEWP8cL7ChRc/lrE1oCri9FwznimC6aFrAvqGhQEstQhtESmB+lZKyXz6o/4fAvGKSO1RDJswPFHvOfanH2EQHJIDxV8NbAH/lk+PRoggnrb19cu6uZAK9uTjAq/JjPEst1bY1ADGaPT8XqhNDUAM4I9vKvPN+w8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790946034; c=relaxed/simple;
	bh=QfqFsdBm3MmxDhdtjKWT5GgIIo+sXdueesJTOAiIeUA=;
	h=To:Subject:From:Message-Id:Date; b=cJMNk8oCDPYXxiUOsUKg+DQwq8bsYYAB16ATYo4JyGNLouK++ml/FaFMbEMFOeWEgtmilQf2GBg0ziCoTIpt2ICvVpGbbhVX3/MuGdQ6DddIrTCvFQXQiDV6CtKN6fpAAa+4L+0m2C+ezluFkK0Imh/zOuudksn9FyAozI9cICg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBi7C2Bv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBi7C2Bv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6C9C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790946033;
	bh=QfqFsdBm3MmxDhdtjKWT5GgIIo+sXdueesJTOAiIeUA=;
	h=To:Subject:From:Date:From;
	b=WBi7C2BvIktK6ZNLB0XahLu234BxEp7Vep4TGomGVqIOByrB617Tft8XzRv0hMbDE
	 sbe2sBQFQ8OB22+kNYuhJxrZxe6z0ws0cFIpzgmc98U4B4+JkUa7I+y7OX7snQxpby
	 EfAoMdksmI3AkrdXvyQfsVMW3mxmHXI2+l9ZOuALdDwxgcuDQkSAk5ZrqxqQHhF0Ev
	 C/+1BPazOm/+vU6jTR9xPKzI1mdZVU3P7eJ21BzIWQ+x1xcN41U/e1n73HgVyNxN3E
	 CsVEBCUqnOvD9rehGDIQy7XI/N1QbZVGMZbNJa6QbwrVKE+WMdepytDexTroySHsn0
	 mkJCP/EFh18Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EEBCA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179094603368.10741.6267766957984866803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1c1ff61a246f3c338f093dcb7b38e88abe2d06ea06094c12deb7ae03873eea
Date: Fri, 02 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790946033
