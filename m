Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED372F291B
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758274193; cv=none; b=FIU+4HVwlK5NQTuz4c0nNIMwR+YFiV+sSmHemej5v57EVhsMpUs1auJzN459/e3ZtmUwMO0/m2cjF1ECLBtQA6lhCBev100p/IFezlVMJfuqdqC/MIt/sohy99pQMmDo0K5q7N1bVJBpuGNKe1FeMbp61Gcw4X+z8Tb3Lx4SK5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758274193; c=relaxed/simple;
	bh=ovLfV2DWy/LIwM+UJvFFhHn3ZYKWcDkTFpvrzJa1ryw=;
	h=To:Subject:From:Message-Id:Date; b=QexuiavkTQ98nu6IJLjatBvZdFLK5uRFI0M1p+UQ1vT1iKamGbpxNulTLGOfjlTlbUbq+Z1HoX5qGs7KF2SE5mNzRKs3HbgnAMDiuifXziL+JY42lwpt/Qxh2leuBvmrluDqDqA0W7A/a9sT79UGVZGe6kxrjRJLFh1fVehGFuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZmw7AUX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZmw7AUX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6514C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758274193;
	bh=ovLfV2DWy/LIwM+UJvFFhHn3ZYKWcDkTFpvrzJa1ryw=;
	h=To:Subject:From:Date:From;
	b=UZmw7AUXk9Ou0lRykq5ARljXHI8BzZrTz1i9ri6wBMhdMTpLbfjyZ2zgQyK1e6NkR
	 lNfn7Y7V7TyynPuEMj/LL9PFKL4lCY5qoXjyJDDsda7f2dFzIRUSOeVU3YRpikBG4S
	 DX0wQVUvGEiNJ9/8WHichVV5+fFWCAyQEyV2n0HAF71s5QxnMvc1GBUXay2KIRPgU7
	 WMBGbISk7I8bmX9EtRIx7MJ91IpispY5RnV5/ViAkienBip7S9Dx5tpcd9/Sch8U56
	 T6a2sgUM8nMGFgQEcsiNzOQefE3c/LeiDvB+qMlJcpLT4cB7WRts77XTOQ831XTBjk
	 N0S955M0j9HmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CAFCAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827419358.13087.8940334492944248054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17914983a0db4c46882a9b8f4f628ebf99698e59759510edc46623707f2b16b9
Date: Fri, 19 Sep 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758274193
