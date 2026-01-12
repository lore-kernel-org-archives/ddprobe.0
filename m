Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FAC34888D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768234434; cv=none; b=Hbarvl87KjfPm4HfUs3hRrK8HwVHAkjCRbUAVtsSOWHtUw+lbs3t7O6ePbeNsizJvJNr0IhSd9v1pjFP3m6o15r9wW468fQHLPidPxqi4K7rOhU0i2IhE3SsWQJAmfFwRdeLHmH8gOC9pdEKIz5n/OlsKUfglBwJsmxZbR5oW60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768234434; c=relaxed/simple;
	bh=Fvtw9eQAuBOa6IdLIggdEWkbpNRDNkjSkOcxntdjmac=;
	h=To:Subject:From:Message-Id:Date; b=SmK6fKOuXQjhhcbyi7oFWtzdPaXgKML+VCit5tFM9igi4vg3394bQsogHiFgkLBEEghavl6Z46kPF7mcZObt1/FW4tUs6xxtBUeOGoILrm89mPX7/IHlSKDg+OWQAKpgMNZwitT35LB2dmtK8p1WnpSknG42PejXS5LTUyY3sv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9u8vKMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9u8vKMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5710C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768234433;
	bh=Fvtw9eQAuBOa6IdLIggdEWkbpNRDNkjSkOcxntdjmac=;
	h=To:Subject:From:Date:From;
	b=e9u8vKMFub5rVflleNEwCZeoUnaYnn9dn3okmshJyWpk9Ec9GJJNF80rZbRtFhnXe
	 kUX7Qn6FzpT8MSydRsiJCnSuXXmZsJSre74FWx7XQsNa1hCGpZh9DnJLehjwclp8qy
	 aymnPM2OuDyIqEBrkgKkwraMQgfVnSYxFpG7umrJj5ptsOt5DBie49sAT8KEJxuxNF
	 yfNu9q+x9/4pelD9hDZdMaPPi+dzFas1aj89v+XTQ6scIJE0N/3+xE43ZtvSGFPyVR
	 TzMVOHH88ma6ijv+pfqD9LW10XXsaEilIG3S9FMwZkhrGYmjwIPKXLbEmpxj097fi+
	 TCv2JcO1QcTOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D9DC9EC8D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823443360.19565.6125135198004219112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d9f579c102ac841c4074cc0e275b4bdf347939aa7a531645f32212edf6c8da
Date: Mon, 12 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768234433
