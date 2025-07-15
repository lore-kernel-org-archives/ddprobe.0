Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2351480B
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752562195; cv=none; b=TsEYmlx2Fvc4L+2Y9P1Sl2RU9QTAjQUv6tjJavlqJscqAivKvvlyuodNajLDuV4eOO2ho5aS5HrJfQX3ocAdR8VmRLf2zXUi44tF90aYeDFwOgsQDHvM/L9ZN0iH+iWhEUCSRoaGZG4K0uL4/ncyjllA4PVJGIdNZg8hdIimHOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752562195; c=relaxed/simple;
	bh=udavqqHr8vFIcpcgO2XPQUsKbQC3opGmjmS2m1dVQCE=;
	h=To:Subject:From:Message-Id:Date; b=rgQD3YfY1q8J2c0ywOD9ujYSjx8kP92KghpYFkP+vBtn7cLufkHKdq3id2YvI9RzrJJCx3WVuMWXhYtgQ79YsdUVL+K5Tm5WEnh0R7ptrq1aW0ZMnMjBIEp1ugk6wZq+5HtflodA7GmXGmc+j2Q+Xe6BfryDLktipWpmKrBbjpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfFsap13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfFsap13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D02C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752562194;
	bh=udavqqHr8vFIcpcgO2XPQUsKbQC3opGmjmS2m1dVQCE=;
	h=To:Subject:From:Date:From;
	b=UfFsap134q/ekPdOEISf9iGqg95WPv2cEV5OqBCuLFqNvwc25LhZ+3FJcBOr4E2nK
	 z2DGHEjKxPb7xvha/DgqeK6BS5MpT8juo8js/aOXKxeDpp7npk9BYzPUACWudtIxzc
	 WTix1vACWYjyMlb8ylftWhCxUuequrFddOtET67MkMXg0DTA4OoKsr0Y79ROdGSc1m
	 RaPmM9X+0PA8CJ3QwII2nOMJGpUlHOMldy/xN382w+huYtGxX/VOM7xn1Z/Ib3gr6+
	 OM3YMXagPZnZLfz2T9MovVqTRPhNAd/1i9UM6Psj8/L0N20lGlB76BAMIgSebyY6Li
	 jEABhjRd42MXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90259C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256219358.16438.16017178040782672052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2606a3e20d9ef71d44a84ec447b5509ec80220c9c0725ebd3fbe567473e86875
Date: Tue, 15 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752562193
