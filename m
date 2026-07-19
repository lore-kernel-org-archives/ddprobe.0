Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABEF1D63F3
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784434114; cv=none; b=A0rK6pCBPCZlvq7CmXewsrwPq4bftfoKDAkKy0QKfIkWVRseIHIuHM0ErvowbS3w6NavLdnT/YaWXYOaR8FTmSXsWmrQS+Lv49p6/ZR8lUcMyZPxVmkeyE0KK28fbX/h1vhVetHhP6XcZrmdJXQNX6wcL6r4mOuOUYvHgNHz2gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784434114; c=relaxed/simple;
	bh=9sagddEIqn63/NKIl3fg1jskjcZH7PHo4suIRA45Vac=;
	h=To:Subject:From:Message-Id:Date; b=qe8DSmUYbeWe6I0QwsWbhqrrr9dpIIuTdFtdgbfVP1+eHYPPoOWdVEIkIChaiRGLy3EOe+65Smm8o0rNhXV5yP2j76zdw/SlWdlWtlzHUG75LEcl0IJWx3vDomnJYxZowO+E5hVdUFFdfdwbD8D0Pv8SvtE23UajklicUY/8rzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmjqDhZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmjqDhZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72F8C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784434113;
	bh=9sagddEIqn63/NKIl3fg1jskjcZH7PHo4suIRA45Vac=;
	h=To:Subject:From:Date:From;
	b=mmjqDhZWC4WY64N3P/MMEnkV0doOTpocaDhVrWA18BxDPQGdquzEkpT3b5aOvRwG4
	 BAeWHCOf3kURnCMpM1NcVWwIAkG/mNDnU8HqblQDCujRjhuCEby/rxfVy0ZMjf+G2w
	 IeMOyzJ3+Y8TdE7lepzNeVCrPaph7qh/UHpceuxpO0eiOFBNUFKNhbtoqbnP0XZFWb
	 g5QK7Yc3M5+H8M6mS94LxxUV8uIYskCmLuQkyRhZssUqFW5IfpuWStpkkT4rgf9Wb8
	 zzJBuAKBpBIRSBLRoM/VdScRuH9MtoSi0mVE2IgrNG7av3fH4MCivVauYj0SGtpdjC
	 DDNl1gWoChkFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8DDC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178443411368.4313.5877420050679529971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1514009071295eee645d6d45891c9e56b85e5bf061e735e0ad38e9fb2739db6c
Date: Sun, 19 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784434113
