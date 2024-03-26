Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C2D5A0FC
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711453696; cv=none; b=SaluIpl0DyhUQaVJVvyzAmvN6VC1rZ1yEnUHoB9S7hiX+iE44/CduRTHTo0hFR80LGZ6I1CJ3V6mESa9Lf671qB4ddKB/3GKxpXUhCaZi/9ReStH2he3Gb4xiw2LzOp6Vm+Q+Q5Lp/jPeLJeCOf3ciW5rn0kTNF3BsfR+dDuUuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711453696; c=relaxed/simple;
	bh=593ziuBheAWbcxYBbyqpPXS/j+tErJnSIivHNcyltxU=;
	h=To:Subject:From:Message-Id:Date; b=Uf6CmtAfxDKGtVaK7G7xNe9WJCzM7AFVbG8h91PiLmfezeMQeywihFYxWlkCeEz8xGGkyObNuTX7gVwkTv+mv48R8vE5F9SKtbWUX2JFXJ5LmQdRKatMZ5rollddPUZ0+5QIjCGFooO/0MLTAA1laqWONbTwcVgDOtrbv9JTBNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do/OT5ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do/OT5ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7541BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711453696;
	bh=593ziuBheAWbcxYBbyqpPXS/j+tErJnSIivHNcyltxU=;
	h=To:Subject:From:Date:From;
	b=do/OT5olZTXOtImWUyB6efWid8cd9XIwX+KaPzOillnJ7JB1S/dj1Xa8wzm/fNSth
	 qCLtGeIKnCRhHXD6Gsq1T63NYpuZ+3UOKBgI6BYAuaOvJIj6eXD+GiarXvlkVNTw1y
	 CpZOSx0cnhEp8fL5azSSaM5PtzhcKBYPjV9HP38NihLn73JexT1nnhfQlP3sPm1BpT
	 oookjTSinjvz2nq8JY8BpqcVmyr1iMPGPAC+X+blPl/it/p+7BcTu8rwz3JJ4oz/sP
	 T/TvhFQ9NeYZT6q/oDMWwhX1v72xlDt57PJMsshQp2tJnC2b8RdqHX+bYznl8jRimJ
	 YWiIbZv4tHq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F5CCD11DD
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171145369640.7753.2645086999194380232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0c4d308fe861492e397f7f7fe79b22a310f08e10b4838bcfb451332a34530e
Date: Tue, 26 Mar 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711453696
