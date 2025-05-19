Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1801DED52
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747694394; cv=none; b=YnEc7f73IQdVPUy56gNvNq75Dn3M2jDcwrjgQAYUFoQh5eGU/Rqwj3S0gDvg/ZnJj+sbaLdC/7fytx4UtQM8DMiT0+u+a805MJ0u8DJvvXT+WPCd+Koe4RFZRAdLoumIcdCd81mMqpWyumez493Ih0EXTpOZ4XV97YGMRkfSfSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747694394; c=relaxed/simple;
	bh=Vqhn1VQq2jxMonXus89VDHt6imdBgcpNsDGitKur6BE=;
	h=To:Subject:From:Message-Id:Date; b=L+3WawszKc0f8ipHvmDH063XJAlItIAtuoxhwspwHxWlkn0mpjR1SlxKWcDe1gT9CMDiK9lJsgxn0ygnfBebXEAN/qmVtNuyud4u5eVXrCrxNkdlHpjJ01R2SXzWI+QPQpsatfKsh4zRu+lnWtOaoP8ig/xye1l63Zt1GjaLc8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSlTyPcm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSlTyPcm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747694393;
	bh=Vqhn1VQq2jxMonXus89VDHt6imdBgcpNsDGitKur6BE=;
	h=To:Subject:From:Date:From;
	b=eSlTyPcmk3jqhWbgw3+3h7Mod78S64dLFssWl5X0cHbT2goQktQRlrNatRh0ZUdo3
	 6fi0xTB10zrFN3fYuM1EkzaZ8MNUrIevZob9b5PW3cgRTvfL1Kdke+eE9+8McboBtK
	 QVXHL1A/q5zlMVdMsrGkK9m0JTPWEFlIMJmLGgpP3wzB17+ImDPL/9d1gzzy7kOMT5
	 erkgN6Qrbv3Jn5og7UGiDOp7jsKoD8G0nMh9iQSJhLutaeKr2ICvdSM+hUfkqeUl+M
	 IoNsa8yJ8no8vvtOAw6toA6RZNJlFCXXaAVDIAa7k23GUFSh+H9IEBVd0GVsAdYHce
	 fCr1gmhx/O9Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5CDC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769439357.9141.4991879716497426105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e627bd0f0fb1216d2927582df1ba713892f5684150ff9aca41ec678336d668dc
Date: Mon, 19 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747694393
