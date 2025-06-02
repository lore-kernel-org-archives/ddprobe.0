Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B6F1A08DF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748879394; cv=none; b=HwAfRJ1fLRHHIQafYHp3knOWz1FQ+WtS/VfATj/aSGfOxbrU5tOjl1awUbY8u8pBNtkjqwtct48sEOr0tapwZFkKA/IJBZoSle38bqjqTML0+839vWJsNzht3ua9o6Z94wWSQEBdX0giSA1IQwyTbO5xQuY391JXESn2FhIWRzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748879394; c=relaxed/simple;
	bh=WN7oO5T9kMeq+Rpu97YO8lZdhJqHHsHdl+CLMrOZQ+M=;
	h=To:Subject:From:Message-Id:Date; b=AQLtxpEGIikYFsKzZOTUQ3YYnpBPnnx80peyTtWNBoWD2Ds6BVC7hN6aiXLXxbITHRolFEWjoCJzEpj192zmUGZ87yC9DaIX38uo/mKjIfNMSdnLgi1asysY6AVWGKF1lr5ZTWasw5+LSekIQm1y7wolt1BcpeAlrmRqTlgDoek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuteiEft; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuteiEft"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24EAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748879393;
	bh=WN7oO5T9kMeq+Rpu97YO8lZdhJqHHsHdl+CLMrOZQ+M=;
	h=To:Subject:From:Date:From;
	b=FuteiEftFuQiSJpERiaH2E3yUjbGCB5N/ZtGHZMcUunQ1mARnuYFdHdHGwf/XnwY4
	 zosqel6b+MMvd6BTK3SLhQBqFRSIZygoRQ5ldtlNDFc81fG8OqlAP9vQ1Ey/3X4AIM
	 khJaBEApb1WrCdr6AJ6FHA8Mo7bJUF1wliYxOAMN13Ep7qsx6rsgkgZoj/7H+VhtqM
	 zrXX/GpheIkjwODNZ9steHUMonoNkcM+jD/QGsZdhHhsrTiH9lr/qYxk67zeBozZlo
	 dp+yPSRii4P5MkrOmQUE7DlneAwSv0/IFAqP9FoW57QY5YVry8N/6lOtqfuPXCoVwD
	 RW73nUPujsapQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90484C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887939358.3214.5530405435632757633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812a96abfaaaa6d5462f011f9abefab628fa5f8b310b61d0392a99ff1276156b
Date: Mon, 02 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748879393
