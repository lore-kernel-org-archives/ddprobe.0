Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3370A7641E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726574154; cv=none; b=IhhazYrBxDxnBsc/uY1ZO2dJ4ARVxdbPKI0ClZ3niSzmU9Q68AsYBe1ptDvgT/lwCVi/DYjKKlqu5WntFKDmo5vyyrgmRhVTpT96e2reseFLs03nXFMhofC021AJcJgAOzgCgn/1kqPcAAjMjrG3J7PEhQzZJsf04o+6OxtScVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726574154; c=relaxed/simple;
	bh=sW8Vo5XkqXFXZoalO80emaWOld5ANsgPOvSsEVzpKUo=;
	h=To:Subject:From:Message-Id:Date; b=A0tdb9l12Fve1dIY4Q8rdWGH7SViDR5QZ62yZAVeO4MnUs5wEeLLgARzs5Q5WWQM5Q1IGPjmOUczBEnRKGth5y8y+EfSQW8nLp/rtHUUDPO0iGdQiHlzq5Q7Gz/Zul3dd+ijvlURJMv9N2JyfFJVDP/CnyUrLCYNKB5AayqkJ90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJgxvJFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJgxvJFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B125DC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726574153;
	bh=sW8Vo5XkqXFXZoalO80emaWOld5ANsgPOvSsEVzpKUo=;
	h=To:Subject:From:Date:From;
	b=IJgxvJFXA6j9ajiX0FsGJoDSg3G1afuYNY237y/7PPwBaWmu9NRXJnWQ1a0ezNdAz
	 f9XFONsm0MYkF52DhaLpCYQYPn7hb+sYKu5wbhIUiIYef6PkOtHK0kJQzmIe0X98UG
	 5JrA+W+OkcYQvjmeStgYVw47wEhHD04i+qYt+yqBGWwIBv4zxhNlrzA9M59Ii1/4o8
	 aU/R0OuUmqGmGXR1koqrEdKa2G6s2jwzcXf5Hu2Z9FHCX0BFM8/E7Z2mSkrdNKid6a
	 cwlWTn05ulNVQ3/8+amhDLpvSw2+qO1O098cDYQLgSVZ7zp36tPk47rUJWNKbPkjr5
	 QNvsLgsmA8flw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C56C36015
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172657415365.22043.12024676265623789581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a80b3d7d3f1e07ab10346f244e0b8453ab007a5067f3d361d989c6ec45fe0b75
Date: Tue, 17 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726574153
