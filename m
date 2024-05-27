Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C66813AA2A
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716813863; cv=none; b=IcmKJbY62leSEoSOCRSHWJhIqi6wH43i4UgT2TJIuzKZgafBIYFp40Tq9ep/ITyjSbC21pOAu15iegUI+BbeY7XfWE1hQKKnW/YNtAF1LXlTXLGZAbY9u5tA1Tsei1LsIdruAnGPltFoy3SHdsIh7fI9pwQQZ8pV0MK+Bn4Uguk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716813863; c=relaxed/simple;
	bh=l0NGq5NkgRmOgP3aEn+K0J80mNPUGnoZtZoG8k1UJos=;
	h=To:Subject:From:Message-Id:Date; b=mHu/sxdNDFv9XzfA7kc5JTZj9yXjuKYioeGt5KPNlwnjqtxz104MEp/Y3E3KHTtPNNUU5zEdHuHXpkI5a2eYsuLCTsX9AllwjXBdI6/DwWcQUgPCNKFU4YWB/wA0EbhnaiEe8PmHyQeaDZDJNqGGFythzZvuRh3PAE8ilTu43XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQb97DQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQb97DQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED60C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716813862;
	bh=l0NGq5NkgRmOgP3aEn+K0J80mNPUGnoZtZoG8k1UJos=;
	h=To:Subject:From:Date:From;
	b=pQb97DQ7v8osTDPFRhRC++WtGxuDpHIM+YJCu4G+DwF9AiVLIJQ0vnmehDuFLYw4Z
	 bJLTthKCml2VhfZn9ipWMdXV0Hlri15MgbWeF3dX63lFGpkihWtlm8M+2HHq6fY3V8
	 WuDxtJMP2xV/PUVzxVYHE+SVYf+JswGLIH1Y1MdSzR7FIlLBEL5SOytdIKWavZb3J1
	 Zu2UbbU/Wl70ZaGn5kVQjYLKdXm4c94ZezHABCyDbBmUemnAD1qP1ALkd4r267tn5w
	 4Tghh6eiGXmHFRbcaCNXJZWks7/zD4ImAfzSc7flliWSU7lDZJGzhi3a/PJ+w7YhK/
	 g552mNsbBMsHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C677FC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681386280.20230.1503222132551259535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa9acdb546207133b976542c4a6a8d74546b3800cd2c02d27b4d89ce4c149d8
Date: Mon, 27 May 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716813862
