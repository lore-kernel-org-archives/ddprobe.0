Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459301D9A66
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786126234; cv=none; b=m1mR+WKoPUOFXOhzzBbPLGHQg79UyxzeR+AoVt2vKvfHuRv3a6+mS9yQ8PHAhhXRFnModTM7ieTHUi5O7HSAqpkAprnKm9Q5oNn27g7nAItQ7HWAlIZeWJ4GNszkj9xx590g+tDepSyxZTrgnXt9CDSS3oejVcuG5KiG/TYcHM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786126234; c=relaxed/simple;
	bh=HvpBSdZr25Vem6z9UfTLh4+0W2NcFRa5Ix1K6oyaWbg=;
	h=To:Subject:From:Message-Id:Date; b=d2rYjwVuVCRINc5bo+HiLNajtkKOgegRgslRtt0Sa5j4bckvXw7qt/UI/1ML/XcJNgaLbr0B/oPwtAa0cbKelHuxMosg49JvqQ/CIemd8hlZWtcbx+vGv3nsjS9tUQsoAQLE1+meaxgd0HtJ2xVxMcqTKRmYkQD1zEJYDd9C5SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNvRtdFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNvRtdFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2849C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786126233;
	bh=HvpBSdZr25Vem6z9UfTLh4+0W2NcFRa5Ix1K6oyaWbg=;
	h=To:Subject:From:Date:From;
	b=pNvRtdFNQyu9JXoN2iM5CdaJ71TostqOtPNDeq+ebJToLLOP4SRFyT7ndjNtjrh+I
	 NSmVu3gq8uzBLFO4odTxfWIxcdkNW3W0T6A52cuh1DjhylAFDgpa3sytHwNNSRw1DR
	 +uaixjPZ17hL45GTAMILwwMsUP/bzHUY5EexTxix0H7ZuLC45NGsE+xedYFF18rxzD
	 BNGMP2tAQeUThOTgFCg9o7yQPsmEb4ht8mitSbYM9+ngX7pTKg9kPF5lrPuNknkx4V
	 5a+DF8vMOWStNv9TPDYHr3MpNEjdiGJdVhOpYANwtUh8L6J3CcsA3j7hdKLHXk9fBt
	 x1iL2XviKubNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB922C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612623369.15418.3107063687380786322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925c605c07cf21e32ac35c87ae73216e4c6349284e8cfb4b4bd79e22c8e3750a
Date: Fri, 07 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786126233
