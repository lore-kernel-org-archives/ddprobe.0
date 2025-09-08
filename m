Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2564520B22
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757305194; cv=none; b=XfN0qN2E/8HV07X/qowuLZ1StdldosJUqFBTaE0r8cIpibdXRQ/Ai+kyNqnum3rfH4hzSd2Lm85QuS7cUEBzodM0UPUaz7YgG81hTSZ6OKGjrHf67m9F9NSH6IbMhvJVZMQIRETfbxcdGjun3/BDXi66mOi6AtGorp3OEft9HKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757305194; c=relaxed/simple;
	bh=kwI9AmMPvgPTOlWN5gTkV/TXLs5hmD1cXkCbzn0nTb4=;
	h=To:Subject:From:Message-Id:Date; b=ZjYiTfxqlUnTFP/saHVHwz+kDIZTil66FXcB2dqlkYd/g8y8d28gfSeesK2eiH4cqTbGvm6YgUsC5Io66cMwIxcdqOkKw/S6JYxU+dARSp50+baYXm8plfPVCj5b+nwhLuDcCK0hfwhwBmpHXsrRKdr+AIPyz2z+b2+0aQzdhxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FL02UHbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FL02UHbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A558EC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757305193;
	bh=kwI9AmMPvgPTOlWN5gTkV/TXLs5hmD1cXkCbzn0nTb4=;
	h=To:Subject:From:Date:From;
	b=FL02UHbYtYBhi8fJQ8/WC2A8dGyjcpvKSrCIx5cAAsVgEaXvliv8UN0Ri2U7PMv1q
	 qXPbxD55By5CZqxe5Cf2rJwpjP9u+ic52SZg1NeDVlHQMaDPOB1fGiYxxB5Nw7o2HY
	 JcoYJq5+NnIKLZ1ZL+ZEgVuXwJw4AdrznLILPRkR0r5FctZANSSh7DiiPIw8pvRnrS
	 5qwm82BtZGIoUd8vesIvrNMpj+0Z1P+pyerP1qXU2Msd3cZsrEvVwRXqVZ3Q49GjD1
	 useURs3xGSu4DdBwFypY2dDfREI/CLETgdy6s51qRTgGGVLKTL39rLpB1Ex7SGQhds
	 1jljmLU092shg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B7FCA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730519358.26350.1856528494292909805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546663db5007b1f9417b479298ac1cca0c9799814cde91ff714222a0013c699b
Date: Mon, 08 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757305193
