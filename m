Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3942644CADF
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781731594; cv=none; b=mNdfRchDEFfot85Wm4DWoDTY943iGyUbkwaOs9AgDCxR27i23BBcDo2fZbuWgrKL4kcGsnl7HPejdunnmDc6uLwN+aP6ElQTOB4TVEEe6IpuPySxWO8LpGIe2k5biDIVdi+4ga4TLFyAc0lMl4ux0BdBJScnVgqAEVllFh1YsLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781731594; c=relaxed/simple;
	bh=GBf+hUHgJiDlOthkxy4gYucKvQuswhKpcIVN1JDYbJk=;
	h=To:Subject:From:Message-Id:Date; b=SZBEHu/rK9LGRJHScE2SUFR8/xsWiYKsgZ4hQUzgc45MkE/7e0kXCNalng5crpQ6kRbhobGmwH1rQ1YPOe95DVXt/DcPUlbJSRmzL4A9GY31ev3jxjg1bM0KAy+Mq7S1jZe4UmApwychRmoU331roF3FB/r6zEYODnTs6LA/MTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOc7t3GE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOc7t3GE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCECC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781731593;
	bh=GBf+hUHgJiDlOthkxy4gYucKvQuswhKpcIVN1JDYbJk=;
	h=To:Subject:From:Date:From;
	b=tOc7t3GEix/9asxXy07pvznRm5VMwlZHciuIUIkACzXGssV35FT/eEB8oOvI8C8u0
	 Lt3QgJzEz1djo2cATrrUdyOSZFbR/DPfUbR0VL2yCe+q+OokY/q9IZsSX4MDIr0nG9
	 +6ncyq/byHi4p5My+dYv911wdCwMt7+MHL9cIvc5qM3k5ojsOkZjUEncapAyhcP/uV
	 V510IY2xeHT/X0Rt9ezz1KpmME7UjfYSvfXc75VAppPJCPseGcyjlb/Lry0SzWoNFp
	 ErKB4w+sMmWR4sKsx7B0erobl+VL/3H3YT/hN0QgRWOBHG4/NXECCnYGaV+oAmyX64
	 i5GYp/SXR8Big==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDDACD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178173159370.4723.14403576313420750368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9b317e3db793b80e5843d586029f61664d75b6f4447f5dbc21a11fd0c5db8a
Date: Wed, 17 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781731593
