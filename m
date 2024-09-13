Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278824A06
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726256754; cv=none; b=g2I3Dqbc94PAq4j5EKSCnfJ15URBOyB0U+6CLyZuhRZdGppHfom+v3SmDje9ZrwnQv+nCkXzW2Wg565K8XRF/57VVP2r2+SrhnjgD+YXB4e2strFHgrZ2beT8YUEwGJB3ts5agM478z5rGuqBMTh5xycYELVveoBicb+1JASXUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726256754; c=relaxed/simple;
	bh=yF0Tei2eAC/kar4Tr6RdJMj+uzEwE5/9O5L6mqQjg8k=;
	h=To:Subject:From:Message-Id:Date; b=EgOw6F+6LaAZe8nnHKNTQH46C6sThdTETmgb9D++7ljBJLcSpXKUYD2Y7N//EC7fOdfZ2+UGSDid5PW6BGN/aIGh2fZXIrG8eF80dBzLbLLorFSIrGcMFv4buqZfzLozCcJ1UfgbPIb2/wg8PaKJYmObeP8B7k0P20nSvzih7tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1ppllq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1ppllq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE746C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726256753;
	bh=yF0Tei2eAC/kar4Tr6RdJMj+uzEwE5/9O5L6mqQjg8k=;
	h=To:Subject:From:Date:From;
	b=e1ppllq9iPsoITdwUIY2RRs/WY1EUKHVB0dSSZ7w2J0iXaN3Pq5rgroPrF1YL6WYu
	 n5Pneddoq83nq9JQpuHRIFMp85gaJNzVQplD6m0nhdvPyPTsxjZGU+/23kXpOxaTT0
	 FuaHcbX/w6p7XG3bcR1Bc6f0vU+x/D65nHkQ9RKV4eumHJXUQVuxqAxOzwaASX8hpC
	 cHL6RFE6mGGDxg2Wqdl6t2ui6q9VDzvy8hOfq9ZWoH8l4WVGNDcbs10ApNTiQv9ngZ
	 i0TJc1IuZp4/YuaKRWZ+Eb50tNvoxqnRCECAYk+ohnEMEV+lJKnaSSbo4YDM3LQy84
	 U+JAca3+i51vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCD6FA3750
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625675360.10745.9998748679474601961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0b16e968e732080fc0558cb68997a5774dcf398b3e9da7599c3d950555636e
Date: Fri, 13 Sep 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726256753
