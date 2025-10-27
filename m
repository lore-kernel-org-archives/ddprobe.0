Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA22A1C6A3
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761554393; cv=none; b=Cf6xk5vm/+X6cqdnx/mEKfdgi8Qa4xnpZuNCfIan7koT3wHKENvu+b1/IZn+VH5ocybfwZd+9fz5V/UhcJLTuz4OyyhNcsiIMGEtWv2ccQlQwylMe93xtIS76Q530rsvaux8FpopDF5bciYq/sxCOHDc29BKG1LeBrCTIPP5Cn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761554393; c=relaxed/simple;
	bh=m5nWTOKxDi1ufrtwezf+k8LO5h3IO6xnOPVjiTVh/VU=;
	h=To:Subject:From:Message-Id:Date; b=AR3vbrkjGDc7EMj6RFXfzPCVImpzPXDld1IvnSOhl81eu+IiJOKJ7iMlU/fwDc7bpN3giIiRO2t1WkJ/CV7LUTDzy+BTP7CihFRRBrqvvuwFqDrQJy0zkidnNhwGaZTi4cEFg1wBuPtZHnyRo2GK9qA0xyoDOzq3dlA2vqGKlEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMOp8vIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMOp8vIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761554393;
	bh=m5nWTOKxDi1ufrtwezf+k8LO5h3IO6xnOPVjiTVh/VU=;
	h=To:Subject:From:Date:From;
	b=tMOp8vIylYdNfA3bQ5tM6XKFYPO+BMUW7ErM9M/K71sku52r2/Gi4ZOhKTfKc2+sQ
	 aVcHQN63rpihx2Bx/3E6GKUpEPsN29ojGMmhnfTaPwb879lLSRUXY3MUCmvw98X/eu
	 F5Pm5vVYOGGkFfAJC1Z4iJZgw/DGqT60txo1+8sWDMZvIGstfAZkQyQ6ADlNC0wNH8
	 YKRkRzNXIcUyCDeTcJsFYHNu85lzUEDlfaOHvmwEu9SaF4/kBWItjfvx+Ih3iHLbPR
	 HbCvKaOYVeaRs9tKNQYcdJe0cADJIeeNpOTRE6stdjGFxYgyR2sjy0JtzkNLWUT048
	 KBfNIjdCsgOxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B72CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155439358.15991.14113726247678039792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0262a521ec6eb850d1d5d6875898d1d56ea6f7ccafdba7830e4b77674ea979
Date: Mon, 27 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761554393
