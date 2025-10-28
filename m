Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E6A1F12F8
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761637194; cv=none; b=HFqqNk6vND6b/CYkLHrO/RC3nPay45grbq9VIsJ2V14UgQfJoloupByvy4LkgYytJ4XZqlJ7HWILv5vWJh0mR5q3eDzBDSpF7HgEmKee+TaosL6lp9l6BieaSdh1Mt+xo6YN3XrJpUcmlpKJtox5acSONST6uyZEDkVZtRWN1Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761637194; c=relaxed/simple;
	bh=au+B1gz2bBJumPwPCrMzDXq76u9w9Q52uawIJAYFRh0=;
	h=To:Subject:From:Message-Id:Date; b=W5WODs7FceUC2B2wbtNu5aGgXeSM2cOy2OaxweHixCGsDk0TwVCeXxit+jLqqyXomfLkC/4VY4fi16QwzvdUD0eIU1/jLDNPpArJpx4JN7nmRVxnkJsKADZ3UvSKt/s/799IyZNtc6AUTbCdUYqllPPvexHAwBUiYr81HO8QX+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5EOJ4xB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5EOJ4xB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F75C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761637193;
	bh=au+B1gz2bBJumPwPCrMzDXq76u9w9Q52uawIJAYFRh0=;
	h=To:Subject:From:Date:From;
	b=L5EOJ4xByxnyiTuLOw7eFM2JoCeVZJEkZTDKcaln59Cnz62yjSH1EP2xQb6S63C28
	 97AHe2rb9nIMrtUyRkuw92xB49Obl0NDdoGfEUiSbc3+254LrIFgxqLxqDpK420upj
	 YvGw3lrRNashA/Edbu4TKeqQXWo1U/PDHnYw4AbW2y15mVDoAQclDwr15QOdCjy6kz
	 rPLqrakJ6X5c8OoYCrEtOtJy6SsGNxLkEif3Ts1+4PbLa0i/A4qbSUkAEBivohqcTt
	 mwY1qeNXINVBybXpriCQ1f0yM0cPduFfCO8/X16mHVsbQB/4DYoP6tECzx1qh192S6
	 zUsPiLdvU7ATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161FCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163719358.7433.8905903975534828132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03980b78db92031e8497eb6f1e2b6f71d85ea56d32337d42174a575ed815c16
Date: Tue, 28 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761637193
