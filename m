Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D1937F315
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790259635; cv=none; b=oRqHbyOa5PilaQOtGUGa4ncLYRijOZpDqxlF19s8AJ194gwjKd6eqcA7fT+CBTdvdPpzfXNS7d7G3AgHuM/9FgIAlONrYLpY9JtbVb3mt7Ptk8+jE1oJeloEUUEtsaIr1nnmTa5DYaxPEN3Mi6FLANPJTQhpbgZOt9lYJQXbLz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790259635; c=relaxed/simple;
	bh=k43ClQFFU8HWxaOLvpHGMy6CdkSoORRBuHO5mhkDkJo=;
	h=To:Subject:From:Message-Id:Date; b=plLjXNpn8zaeZAbU5unE360D0MO43nynpR7MAgFtSLkUbIhmn/+RYLPDgNCfPNX8Nsw4EA06rKL46SFX+YTqVXkn83ICaOmXuFX+yRq3z9f5+odNig/WqGCr0gfyBPvt3Nw0E7XC95dP9ePgHX/09eq5VaVwIyiAh2oOlG/A/Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvkkJc6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvkkJc6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7651C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790259633;
	bh=k43ClQFFU8HWxaOLvpHGMy6CdkSoORRBuHO5mhkDkJo=;
	h=To:Subject:From:Date:From;
	b=KvkkJc6zhZMSho19lDXw4YsZVnE3GyKGRyBx/foR1XAXZITrpUZm1rqcXZXEavCnX
	 mRkMCRQmm6nnnuYnV9haEMg8A4OIZgpBw4VOy32E1UuSw6qOhJcvwdvw24rFWWmNjG
	 T0TbVcaYGpXdql1SxpbpOqg06zWb/eXjLVxz0MvNjZMbadP0FO52kDLjB+63IPNboj
	 I7x+5sQ11EyeW0Mbh97ynxEPMx4U9gzUjkdNzvkKai2W19hKXdYaHBV/DDNr0oIDOz
	 8q1bEtyKLQ5eFYTvh+LaUzwnkz4X2EU31PemiKXbfmmb2GoyrKHywQvhN2yaUo/Niv
	 iCB61VZOseelA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ECAC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025963371.15959.11347333849191046290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891f93e01fc0002da0e94bc7a36ffd387b58d00866d0097379ddff72c6ff2ed2
Date: Thu, 24 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790259633
