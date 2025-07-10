Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C11B1B78F3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752158994; cv=none; b=Ta/vBM51/a6zEfi996Q+cw7NQ7j92JXUQT6qpA7fHLHxYXR6wDEH1BsD2YhNSdsoyzmXxsdbfux03Uf29ehgb73SVrOH1MJVRt1fTimrZ4HAgvx9OxiyNd3JJguAmflwuyBVn2sT//tWCZsuon7qLF5r2J/U6izHXD+qvN4nPNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752158994; c=relaxed/simple;
	bh=lbHsvegeKs+UPzW5iX+5NfV/PqwrTGvW7+BSfLRKPTU=;
	h=To:Subject:From:Message-Id:Date; b=sDtVIA+y97ORftvnt7IKjdLwryl3i5qFvhvq962Ec8EkOBFdx88MpiSopnOUaLyKA8VstYHZsyYCjM/8U099sYdKNC3Xlyy/+lzjlfpwARVJegh5YysK6y9YCXug6ImHIn39o/SuuUt44J/qmQxEUczgSGnQ/KhMmZhyQxKhL+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNf5xqiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNf5xqiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1246C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752158993;
	bh=lbHsvegeKs+UPzW5iX+5NfV/PqwrTGvW7+BSfLRKPTU=;
	h=To:Subject:From:Date:From;
	b=RNf5xqiBCrIreELgCc8nadu9VPqLbfGwEOGZbmHokj4w6NABuU8Or3CS4uXOYNKv/
	 Fbq/HNXfM3TYYa5bgvwrizycezGmmtkviFvLDQigVOOnRMxOfGp0VNYs9ZMkHqfmIl
	 xIKyhtc3G2twx+ZfqKjaO7j8aWPKygAZh9AtpDvjx9iyyumwgEgHW/fpmeWGg9vBRZ
	 lv3xLkimxvVJDpx+ZI3qlyu+dhMPxguMhvIHCcW06hd2V5ncgQB2icUQrEeP62OtzP
	 xarW5yiabVEDZ8/Fj0t47CSQ/TRlvlivovS9au3gcW+sdVNoEToacPTFYxu6t9N3sY
	 Q7IRb85LFrs6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B953C83F1D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175215899362.29442.5504927075059991910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2e648df1d3246d9c18a5846d84baceb007e27ee6781f66f59eaef8ec7210cdd
Date: Thu, 10 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752158993
