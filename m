Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1145721A459
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773551694; cv=none; b=RGwejMPska2BVNra+QCZrhc/VrSU9DESJdqk0lic+bJjfpH7aunCTHBBwmYADuicwoQ3yQs3iZSojn0eOiFFSSPuB20Hm0iSUO4I0U9E6kHOH30cM/09YUoZ/vd1u4W8demqsEhCNTJbS5LaBtDX29B1H0iAEAsrI99s5cnXEf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773551694; c=relaxed/simple;
	bh=Sd/gSRO4BZdcM8DFf2v0RVBqEZYprC1tyPjObynQMm8=;
	h=To:Subject:From:Message-Id:Date; b=jZRLumw8US8lQEJeR2Yx9aTK6YEnCtjaGRyCepdeTHhnZRUh4VNZjFttUNGqLLzKbdTLDF4vWZf4E3swVQe8DEEm3GMTSU8yDMOcicueESQLZ20GdQwKFxH67JwVJk+P23AXIzXX+0mawY5El4HJAv4JpPkEsk9W5V2z2rVXPsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuAXtq69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuAXtq69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A4DC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773551693;
	bh=Sd/gSRO4BZdcM8DFf2v0RVBqEZYprC1tyPjObynQMm8=;
	h=To:Subject:From:Date:From;
	b=cuAXtq69beopwm0TU8KeXJnPoHPQLP03KeKoUjKKXcPRuyAPafQUt4BJ3eW/4lI66
	 DEsBAx/f8ODLVe2x8sPtT56D0IuIuGx/RHlm4WBR+3FpGaKrC0N9hlThtN1bYhHmZG
	 WwlHPjmndBPePR/ZsNhboBE8SrwMNt0mVa6kNgRs7/syeLxRXAb62Gayd+IrQ+eTVk
	 vVClqBlSQQTgTLN6vtop/sjpe3+gutX9cH6DMVU5LvxDX9F2aE5AhdreCwDO2DQvNG
	 CMf097d7F4XL5IeuyUNFfEH8PbEHsZJE9EzZBdzJIwCOhLvYzaoabcsZTaUL67me8Z
	 jds8j+Mnn5OLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C74D58B0E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177355169358.8036.18335078791598919340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c6410469af81eb27148f9d500475b8ea5bbd5cd52aa43ceba6fefd131bb670
Date: Sun, 15 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773551693
