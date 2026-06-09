Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA673FA5F3
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781024134; cv=none; b=utoJreGdohMe4lFgVz5aIi3b6X9G5KfHwcaXEFgxoadB5rjKL4yKmU/U/UQFW0llq84PMMrwsp5YKc1OreC1DlZcwfDPcbYxW37VCMVKfwsuLwh1MJ+ywKAO/8q/F8rirIH/QnW/kUCyHSBIQvRp7WT449EVvYEvAsk/53r3nMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781024134; c=relaxed/simple;
	bh=J8nENJGAwMgS/PL62F3sUsvETxL0cZ0b/HY9Q+mSQTU=;
	h=To:Subject:From:Message-Id:Date; b=LUUZx5ZDPI0po2aks5Mn9QhXs8yvdSq3AmWpxzPHpBovQTu/I3Ln/4xSA0MPiTvOTIS9bLAI5HUViw8INXQ2t8m3tTMROgg1DcOAyyQJXwG5/yv5DG6BAksRx52hb8JQZi3H45CSeKMJXaYVtk+QwW+7sLXYq8lkneVBaN+ymzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV23Mh9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV23Mh9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF4CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781024133;
	bh=J8nENJGAwMgS/PL62F3sUsvETxL0cZ0b/HY9Q+mSQTU=;
	h=To:Subject:From:Date:From;
	b=MV23Mh9QfyKDM+BtR01Jg2Z78xOL/cMH//7lbJdlF1is/Bj3D8dXMpJOYVzP5vCUp
	 JvIqVABqO9RDiES4QTEwPQbfBJfNoJvq2FtWnGiFaOjmlPOPB1T7Cr3x6huXXFYIbb
	 EVkChUILwvhSTsVPdrFn+N9UYbdg1gjn6vwlclMb/20E7CpL7dLTamcPxAc+htzliF
	 po0peuC7ZF4oIFbIaWaAvH1u5zZlKbDCJYBagVPQFpD/Qbn8VBb4TpuPSCyjcREyhO
	 F9UnKebLzSk7keun5dVQeUylZRpClbt0bpBwhL7sa7AjvcWDgOoSWEGRGhv7NOsFcS
	 1pM5S6Ubcd9Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFACACD8CB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102413370.11999.10317958218604236570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8390748fd08c134df91a5eb1db1317ab9fdb294c8d6730cf98f1caa36a0ccf12
Date: Tue, 09 Jun 2026 16:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781024133
