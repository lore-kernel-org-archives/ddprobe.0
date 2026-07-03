Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAB22D23A6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783122514; cv=none; b=UA17NUxct3Lbk8paa8J8KJrQ08nbCLEpMbwdiSE9INKPEhGkXTMUSbqU19NbmuxPafRZU2a3G7KD+6yuIrc/ShdeuKh02jM0m3FHaTDsU6ZhdTrV6gtFOmwOnVMTbCC6rxQ4Z6VJq9adu58u+I1M7ScXk8DuBIq3HP9jr0W+Xzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783122514; c=relaxed/simple;
	bh=pWeNguCvkbNUqw6c7aIpP9jDqryc7bmOLTZirEmTudE=;
	h=To:Subject:From:Message-Id:Date; b=ogIdyIj3Cw5ND+RHl31PDHRSstwr3/2IHSooi5o0nxRiHi7GMvJIDCaUiA/pOALg+nm5Syowr76Zfi70nYfvmEhx8jIu+c2+ZC/RGytT6qR4znN2T6BA8S1V5cMdR2wLyo9fuh0396DL5clbjQrFBr3vRTbmbnvscN2zzl7EuZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzPhUfFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzPhUfFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D108BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783122513;
	bh=pWeNguCvkbNUqw6c7aIpP9jDqryc7bmOLTZirEmTudE=;
	h=To:Subject:From:Date:From;
	b=OzPhUfFOLxsZp91vMDjo03khSvXSwbw/qljl4pZKcc8wAaYJK0wTpNfMn1678EeXP
	 rUNuDzDzDPRrJ54DY/O9uG9Nj+SsQu3fH+DiX9rS/v0J3WL7yStHV0XMP55582vN8f
	 vbFThjTHdMij+jP6a7iW+yP5STv/s+BdBhRCHZE7F0xTLYIdVXXPVJ9B7ABlJmv/hg
	 GsGQ/+Vjs+eTLzvKp+uCozgRJbhEw7USN2JbtP8m7qz2trVyHWAVo6PQQjDdWpDZB2
	 0RjUoPgGE5aABL6CNYZpN6CVldMd5hPyP86XcOHpykfAAUruYcvUgJhh5jcN/zxsxx
	 bJMhSNtQbq17Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4C8C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312251368.21258.6324210605980553297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68e2362a69255828b55d704fd515481bcb105ffb1be9f621e2803b81baa006e
Date: Fri, 03 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783122513
