Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6EC1643A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721109923; cv=none; b=GVpRKYKcXZQDEakddq6eSttZIOAkAy8yGppi7k3vNu3IN+aLwl+UeyimmVtYkj6kqZwEhhHNAjA2GuWsJ6DUlrIG60NiUKgbqKDrG9hVgdvKzPsQq8mzYYTkvBkpFnBy2Sf7eFmcPBbZpq0CdNQck796hxMsqaqmeo8bFM5JLlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721109923; c=relaxed/simple;
	bh=+4xX9SL51u8T9iybODLhwEwaicDFodFEHehguhtRUOI=;
	h=To:Subject:From:Message-Id:Date; b=QfBFfQw9+IcmQfPIs+ZHRTKcgNaRahIQAdP3OUw/3kYTJo5kM8GaVHIkODCOC7RULGanr/KPH8cT+SCwWtIMRmnOgCNDOhuuIUgwZ0nt2OX/wieEYzQRPQKufeSAx4GhMhNYAT1tpgB2CX558QTf26ouqq+9zX6gzb5l4mfbhI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCmESZLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCmESZLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED78EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721109923;
	bh=+4xX9SL51u8T9iybODLhwEwaicDFodFEHehguhtRUOI=;
	h=To:Subject:From:Date:From;
	b=JCmESZLvUD3xI8mOFHo9w60pchb9jAcaY/YM10df8TVtmJ0ldg+icBmtzwV4WpCcI
	 wxt8x0FoNbm8jrd8Us4ohzSrK9MtwKMNRrUcFqysS4NTi2jlYfmYVw8Lh7C1Cyhq22
	 rUwYQz8UqHcXRwnTSJTmoER3HY25saW2Ps6yOndmgaw3lZHW9XCRrhia5SonF9f1Px
	 vsjjMuuuUNVcpAm6jJ6dw7SOzpxhpUs0VbOT6HRdVUF7hpgXMpdGMxx/dcSBd7txyP
	 HJVlyUvCa0nNFCdOtN5lUTBqE408b+yrVBIvpMBXrmmoCHN5SAaVPAy+m6wpZ1uTQX
	 /B9VXTDFYwEPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE36BC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 06:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172110992278.29142.14212784026792453704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8775aba14b333fc959e004878cefd7b5c0f75156e78b528e683982de821f6fcb
Date: Tue, 16 Jul 2024 06:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721109922
