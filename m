Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A0012CDBF
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717421723; cv=none; b=SvkF4UDiIKEpGf4VaYjQcvI1HdBt+09ultwolsc73e8puE4DLmiXIFY0hINkFtkdtOFkvt+ttQnI+r9hwzaOlsSZGADbN+NWpIbFZ29p3Gog/QpPnjsyef1ZkvkjPCRHrhleS0zcLpMdwd4OodDd6VGtr7HqFAUJF+AVKN1IrgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717421723; c=relaxed/simple;
	bh=VYAGMRSDtFAVozdumKgrSxVzCR6bPxnYXaCKcbAliw8=;
	h=To:Subject:From:Message-Id:Date; b=hZhwghRfvqynExPGuRNj5LUwFgNkRGtUgjEKXdHzWgSqpCDHvNhrFXdsIEHGc1mkA77XC3qSZafnCbvPWE1/gPacGVYo3M0OBzDKJfCCqqhXZ01Zssgq1H2kutjgqaG4s6vdEj9z9YS4HgXPQ8P6m4kip7ahAfXGqQ+lLf5FVws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSBm2wGt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSBm2wGt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05F4C32781
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717421722;
	bh=VYAGMRSDtFAVozdumKgrSxVzCR6bPxnYXaCKcbAliw8=;
	h=To:Subject:From:Date:From;
	b=NSBm2wGtGglet3PvFoe5APc7p5UijR4o/tZBhwA0gC5pvPKfp2DnZr18oiYvK8mGv
	 M7rjjTFIj0yJvRnRrZ2SknB5Y3NIogQ3dYm22cgdOEbpM0amgZqvmFpkhU8/T+u3s/
	 bbEDV0lNdLGRlg1FOcV2/0IBzyxoLUnLytE0MkLGzNMiuyB9WWkj4SG2SSMLNear4X
	 9/tUsDlOssnxxN42e4VKfASnvAIlzazb95IJbhCae5/dA/Rm1L9EvhbeaHITjh57uP
	 fynkpRSwRQF+tKFDZr+lN30vM6oQjUITNHwYoyF/TsEC56Uqf3ZraNLvaJVDK/KsdG
	 q1kvMtcTpXYEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEBDDC25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 13:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742172283.3857.17903482641413923482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e71c35bc18f4800f72fac509f378bddadea259a362ae79c691a262ed2a9c461
Date: Mon, 03 Jun 2024 13:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717421722
