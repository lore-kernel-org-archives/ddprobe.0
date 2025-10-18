Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1066A208D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760767794; cv=none; b=em2N9cWy2A8g80759NFUi4KX2zfjPxPP8zyniXtsHFplmtUf4YIdsEhKngdA+mEO+EXAG5eRzzFOaQoSd4x4KoreOqdiDdc3OhtDKvIrZ1o57dC5l7HGIkXqTMf9h7wF264RH1IMgGyJwi91w1eG6zMKrlKAGOA3MQqFzF0p590=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760767794; c=relaxed/simple;
	bh=LImiTmcAE8I/ZMyF5z0dOrJVDhNhXYsIWZe4L6CXEAg=;
	h=To:Subject:From:Message-Id:Date; b=BDRh3TjC3K0kazOuRpoJjjVZQWMOwU8kIRo+TWSf0ZAC4bLhXU+c85b2WiLcv8oeJJje9aDvHCQfR76UbShyTskEr1AmaqVI7sRAmbQtaBYUwu1XdWzMvhqb6pa6JDcxZKKlj/lFrxP+7Kh8uIllXtQ17GeDo/3CDYYv2+8xCRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl7ApR1e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl7ApR1e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05BDC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760767793;
	bh=LImiTmcAE8I/ZMyF5z0dOrJVDhNhXYsIWZe4L6CXEAg=;
	h=To:Subject:From:Date:From;
	b=Wl7ApR1eQmfASd4SrmeieCTZN8qNkkDQO/nbaECI/gk1pCKDyDrHO74e9HmFH8zxg
	 L28Ond/SgsWJMoWye4Cr9zNdl5wQvJAMB7SbryPKZ8VfHCwmryhMqECr5682HaYeqQ
	 6TIDHanHg2YK9Zb2N6HjhkcVi6aK+I4GDx8vB9hZsNAKL2SoB+7W8i+fG+hwm5WTsl
	 JTzNcoXHic74Rr8mwAhcgIIdww13ln/me2G5G2deHPJWntvMVX4B23RydT5/Of36df
	 Mzh6kkUNcJTJ8ihHj244IDwnJh4pl80TAzkVMF123jrjKMqDgr4Qn8zhSIWeOgR8Rx
	 +EDJmwv2HVJ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA30CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076779357.15577.16971053424762232548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89ed044bd3cface973c4a3fa6b31b1c5fab95ee927096bd8df2fdadcfb2ccc2
Date: Sat, 18 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760767793
