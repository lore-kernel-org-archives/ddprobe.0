Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221D71862
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771140294; cv=none; b=DEWtqxnpy3mcheKs+xZRODYE6/LyJSOwPgz8GhBMSaaSBYv1mx3Dh7tdBrmdtvByt/5tjvEy/IwGAraCXCopDX0RuSlgHAwcbdx7ELmbJckesEMdHtFT/yOG4AuHDE/0yYscVouZ9MUKAXiT/o0rtJaMrI0wo16e6j5094eiGiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771140294; c=relaxed/simple;
	bh=1bBJwu0K/e2ZxlHN9tjw+nwM5aRnI3MuFr524UMllBI=;
	h=To:Subject:From:Message-Id:Date; b=DqZhQSbypTAjTkfKo2rtAVUd8t8qrq4K7CsSwnSWlQnSM//hWZoWbDz5vznUBO1BJyusOwotHwp/R1vAEnpyRquilxfi+wTo5znjQ0uuMWJd3MocWUXXfm7MpeIFesW4XR4Blxg9msoA042+4zwSNw5p5vE3hZ/YTL4CpSCTYSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5SjNRSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5SjNRSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE77BC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771140293;
	bh=1bBJwu0K/e2ZxlHN9tjw+nwM5aRnI3MuFr524UMllBI=;
	h=To:Subject:From:Date:From;
	b=Z5SjNRSl6dd1zjskG/GeRE6YIW1S+wrML4MxaeSrGvKcA98qbVSetggVcxU60FUl+
	 xtTpG78qlbB5v13NatCjZ72VH0+flcfSHZgjFgvO+B8VHAzcXel30WMwLbhrPUSvwZ
	 BUp7ETXJIeHzLt8v+RtHTkLzaFF+AKv/melQVhIcl8Cv5B4+J7cOFnPB7//BCzGrRI
	 SmSbp3gKMgJd1MBAUb+HDUiVSILsdPMNf9MG6U8d6NTcANBC8Ts2i6A/FoBu5s+Eib
	 zkA4CDV1YLSSIk3MDuEqz4Wx4TAxk4qlgEYQWHVOke2Y84kPDCj4NvJrCS3B/yE5mw
	 ADUCBfsAVFHZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C88EF586C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114029358.27505.12151487928929294585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed83a8d591e09ce2e22ae118a27c1325b2298794369f3dee097e25626a3e33a
Date: Sun, 15 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771140293
