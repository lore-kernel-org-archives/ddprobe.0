Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1769D136358
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763284254; cv=none; b=aIQeSJ3l6seqvAGDHk7BjDRx2GswR6MTa5c+SPpafAdl+c0b/WAsX95t8Oe3caBeu1ifUTW108wgN9FHh/UY2Uq9J4PTTLvfOPchca5W1nfhanPmQjAbpVTBF0qyEgxX5uEez+v6lUtI2y84Z46fea6rtZ7DcC+PmXhruUVbFYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763284254; c=relaxed/simple;
	bh=uVuoUlhqDY1hns7mCE2xownOAPByVv4SHcUZ+lzwRHE=;
	h=To:Subject:From:Message-Id:Date; b=mASjQxY8phuGGjAXYZDz4yfnwPl+niNEZrRcGXk9YNWiEb+xF/rCuiassY58/tm9dRXDuuleLB5DAQhgdRRtiYm60SJ4h/1w0LHWye3SBTRaD9GF+kKoNwC7kGCC7eU4l7DO6BmqATiuRTRWdOj1R/i1iC/bo2a37M1O/tUDTJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKRemMLs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKRemMLs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE37C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763284253;
	bh=uVuoUlhqDY1hns7mCE2xownOAPByVv4SHcUZ+lzwRHE=;
	h=To:Subject:From:Date:From;
	b=AKRemMLs4Gw1b9rLbv6hBZ1pashtT8Gz1Ycqy371RyqV2snCXxLFMy33/5jpMHT8x
	 RnsceCZzu02Sx35+JvHPPliA0jLTN74ctCdtHqV+hiWxbCgAW8Ol0V8XvdBRdKGENQ
	 QJIOZaL2WrXtU+td2Bqios6g7vVIyeVruqsNwfxtq5wiOep/h4qYZLWbsv38p3y5yU
	 Zbt29AIoHnAszsRARXjsZq51vC9oOAwWY/q1DH9PK8KtxJmwrqyAk3nSen9awOHZhp
	 AcO/JOCPjVa1ukaTelsUPhSuMPwRtkV2+MROMSCWYH5lf/8wtixOe8gUgOZDOGGRL+
	 vGIZPL8hj5CCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92181CEBF8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328425358.27805.4832571222674973647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211cbce7935080ebd618f815df35970c881b970cd1b6b8648585e84e1b25471c
Date: Sun, 16 Nov 2025 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763284253
