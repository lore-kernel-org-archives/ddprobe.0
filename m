Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE8124A06D
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789187434; cv=none; b=dz4DXUnezaUwGbZDSYBf/Y4kWYo0wRqqTtC/zzaq6fruNIi0nM/7E/P32oonrX+JD5CqB3XMdhwZJz2Rr8X4DzGYUkCpGtPgONh0VyNvRTzrFuAL6jFoMX/AXBLdHSideFhEuMVMaOJBn/oIXfi7VWF9w8ZW3HXm3Yy28jki+Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789187434; c=relaxed/simple;
	bh=sDtZeZzMDBQ7mfEPhezULPbwTkjREQdZMeP90AGr2Sc=;
	h=To:Subject:From:Message-Id:Date; b=dndPZ32R3pnrOrfHzHbYqE6zsLmaA42Hjes2L+wFfpz5Sr0OUETywA1JLWu45RueUJrTM3xln05M66W3mN9EVdAghPt+9+JhsuxD/nCgMjjMS0X34Vzf92wHMbRwgvN6Mn9ePAxv//XdBw0dr1k45/6tpLBIlCJNjHemU+ujKpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmLH/wrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmLH/wrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2B0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789187433;
	bh=sDtZeZzMDBQ7mfEPhezULPbwTkjREQdZMeP90AGr2Sc=;
	h=To:Subject:From:Date:From;
	b=fmLH/wrRPuQmrSLJhrXf5D+TE48b5clZk+c69Q1bFyRLUpqdqQ+/Gx/1wg8Jfh+kq
	 lOv34lt44cldBIgyQVJGcGRSOYOFpG3Ia5W7rZCY0DT6ABJDZQOC57WV7FQfPhFVTP
	 uL4L73AfkDK5hb+G3/x6qRPnCWq4YCO7I1iqmmoi1fGjmPtmSYbPDgYjDN69R8lHQ8
	 xZymrqrTThe1NTbAdBjumT7KWQsR3dlamwvaNyJNzwwIrqm8OGkLzeSRtjVLsYD23L
	 vdDMLAkZ/PKmGN8JCn3fjksO121lY+wfH5rrGjt7NNHhPWzkdoJEV4W/Z2Y9A/yImj
	 7Gyt9oYIKMBwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80BDC79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918743370.30309.8799680212300052344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edcc88f55649ce05c26241d77ddc6b0516126065732ce0dca9d3634e28e72b22
Date: Sat, 12 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789187433
