Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B2F2EA490
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764318774; cv=none; b=pLBHmaN45c/Y+IQ8BU0bcz2cMAjQmmV+IMDDqOxLW57yfK9OIsVYRiBdJfbSGAScyPFk/0vbSmi/3MX4Gk1SeosnNS9E1GiqCZmrTxwJO+V/FI/UCw2Peh7GmMIcvy484UCR2681VTDFwbCBcZDTyOYE0tzSboJ5IO0H82v5QlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764318774; c=relaxed/simple;
	bh=6jWAsUXNFVkde9S2hdpZeTkUt3xREKOePSyiI38lhps=;
	h=To:Subject:From:Message-Id:Date; b=m4OZ6DZ30EX7nd0ayZtHIuY8n0F/nNaF268GS7CzV1moncmRwkZDr9PkD63kUe2IRlNwYx/AJN7srK5BxtXDWJfa1xT+2Xsj6NoQhdLe32qwpJbjvtgvAXb72oOwvxA6jcEqcIVfPFDyZYTIS4mBH2g4kgaDY5sEZk/q8AAhnwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBvYoOsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBvYoOsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59D3C19421
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764318773;
	bh=6jWAsUXNFVkde9S2hdpZeTkUt3xREKOePSyiI38lhps=;
	h=To:Subject:From:Date:From;
	b=TBvYoOsd+tuqxOzS7dhe8Dw/Rixm9yy2IV+Nvevn0v7tXptsSgTDPtM31RR+WibM8
	 z33g1J697OEuGEldsytwAjw/vAKflsJdnDZRyZ3Xd5ds72Qs44VFJD2ltStGVGVdyD
	 2E4qMtdxY4aQoSOqBqJeFNngZ7azzv16khLuBA+2dHFVpeMLXzECD83i1hE0XvU9sq
	 HOJrBUndnzn7a8HBDXPlnpZ3MP8f9GNS4G2Zin/2fSBSKonhlLef245cfRjGA8E97C
	 V9QxpoKyGQUGiz/M0DpudXdU6EkrQamWfAGAj6a6kgGQo6zBRbD7HTqbvK5zSbtFQD
	 gPVueCsQmBltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD3ECFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431877364.5161.11617455996186399495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9647412d22209fbdad7506d49c764a301d5a08687d3bd1a4e40c9d59bc1ec4a8
Date: Fri, 28 Nov 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764318773
