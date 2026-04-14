Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6AD30DD22
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776179254; cv=none; b=eEvA+EdpH63hK7uqWp6P8SNe9on4xRMdjZ7QxnLoUIZ+o/uy0C1hVtQwpUQaiUXTGTLRBeb/e9YcKNDy5QNjITpSoTkURTA3fu4GNDQA71yMIqK0VvvyoxWqa8VIeS7ce1PoihEf8fNnerfOFQqMxxdL4OaxMSSTZL7S7DbOOeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776179254; c=relaxed/simple;
	bh=qcIHLyzFVk/eQGTTclZ/iK50YBuAz8JnP6NJj8in1W4=;
	h=To:Subject:From:Message-Id:Date; b=hTNqi23Yw63/1PycZ2O0D+8eZ1wp86ir3VvIuwdm3OJekm6a/JFSLuKFV/WeT34KRpXK6M1O7ppn4UCAKaV8+r3AJMUXzEnvoE/hmk4tnKNUxj1xQe4M3wEXUSUjZKGkpZhyOtYfT3UcG+Dh3I60NBXuWJPztlmN0kezCOyeVqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZNHmb4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZNHmb4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFD6C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776179253;
	bh=qcIHLyzFVk/eQGTTclZ/iK50YBuAz8JnP6NJj8in1W4=;
	h=To:Subject:From:Date:From;
	b=hZNHmb4sOwH3+R8S8j2/zC2+/m+5dPejWnRgPgf6Sv/5967hcTNnFTF4sNlHchSBA
	 HcmOOuRKx2kQw+wM1QEuQQ5IUr9BqGFSIqRluNVPHe0BxKK+c8qvrEBUyvIjIMffEO
	 wwKrYJU3YCa4iFpiQVZuqF3xuos1TipQBmjMWBQlIkZzcMyVl/y0SdLJ5ROQBcKOnv
	 9yxvbuZp7u1nImA4dzai5hUG82ay9qxuANe/v3O5U2au7U0g/u5VlFNNkY9UhiH1Pl
	 NRtbmJi+GW6AR3s0nryFme3gak5QlLkGzroetVJ/XZrLhbCSMYyQbrnihbImh/EHi8
	 pgSYqHEt0+Q8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5C4F9D0D5
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177617925368.18109.9896798547670961463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6eb61d2c604d97d09472874b4105dc0ed5eb8755a8582a9d2364cc9426c6b1
Date: Tue, 14 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776179253
