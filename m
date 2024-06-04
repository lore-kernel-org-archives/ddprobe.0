Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56AA013B58A
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717494323; cv=none; b=qbQvZ+lxTEtZ1z9+VHH2CQ8qoafCqBA15QuWuHXuSzPmuztoA3Myn04tasp04BW3fGXz88RgGNjaG1pNPmnsMD0WIvC0Od8HRUXMcRi182QKYReJPkmdseyryFCcU1gtQkjqSzsfxHeKd2j4Ez4ByNLqZ5AsKC953bqPK4ddu2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717494323; c=relaxed/simple;
	bh=CpIrFc997ua28Vu/IGMFkoJbpfT1QStyUPrIKrSrtS0=;
	h=To:Subject:From:Message-Id:Date; b=NG64Yz0AHWTozuAxPat/XFVusqcDccOF15prVKOp4E2GwrktcBUqPcliir8kqXUU+o7+Wp8ZMbHLg3WCHCt4UPRZy5ZaMtb2INxOkDYfCwBfXw1mEbcc9GyFSHxXqBInx8s3RZvNPIV9LTZTJv1uXGNy8vdm0l7+hz1REPG6mR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRPWoDFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRPWoDFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12F8C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717494322;
	bh=CpIrFc997ua28Vu/IGMFkoJbpfT1QStyUPrIKrSrtS0=;
	h=To:Subject:From:Date:From;
	b=nRPWoDFJkPSakVNDMQdUXLHrRfKgLOK5E+NC4DtHttrx6ZpEg+sT4s3Nevbanph3l
	 inCtDNele2SxH8xqCKwUiMsFqsaK7i9PVH8HUnMGdvtj3Hp+V+Tai6GASVD19zzt4b
	 UIewzpRgWZ5dXXElCMZLZCGAtjxDqNnXSzdnX4sxVEZycmXk/AgwZSV9zrqNdWpfoT
	 CZyomJalkEv0I4eUEvnz1sJsXSdtirUjCmTdq12z56Z6L9H0+LHryjS4CFo5rZR81Y
	 t86dglJkw8dGjdmMhtxoN4S6xWkVAp+MzO/qDzRXesonWi89NbY98/EgY9W9cWmggO
	 VAqFDMlzfsAEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD01C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749432277.16914.12851922818806053008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9186b3ea5fd235361848bd8531ac9f14d6b7ce1f6764c8b3d4e5a2cfa5786c8d
Date: Tue, 04 Jun 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717494322
