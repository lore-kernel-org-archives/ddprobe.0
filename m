Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161B91487F6
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758614394; cv=none; b=NA8JDu8PS9EFZdNj48ZdkJGvd529rYT0oDt6Ond3Qw90ZROJP2+chHjgnaddokm5uhFfZtRVixFxr3Wlxlyr41rydJvcyCUPOtGYA0RIMJZHN5oTPHNvjdOxiplir37YwOZ98LtugAvVYMIkfGOea7kpQUM6ZWpK0f2EyCV43cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758614394; c=relaxed/simple;
	bh=c6xyoTTzIFkQx/FXuaVbRTqIht7il+FvcEL5z33TNjE=;
	h=To:Subject:From:Message-Id:Date; b=DzbdTO8XacOcBfm2z1+VQF+IaUqU7n4uEIIiuDVXpOSU+OnMs4ajNgYgIJvq9QPpnOF3TySzi51vFwgos+zpFcmkwog+m3FsJEwWo7mIyWJEBnfEV8bakjQycI9sTxUi53sXRJQnauwo/B2xOYdCZ/BO46pm2h3cVTm1tv1emQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J88ywH1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J88ywH1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B21C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758614393;
	bh=c6xyoTTzIFkQx/FXuaVbRTqIht7il+FvcEL5z33TNjE=;
	h=To:Subject:From:Date:From;
	b=J88ywH1n7ixXlb+yHsvBjWZGBW39LuyzWhDZoid9EWK9sagBpLPyMGBidmj5CHC6u
	 RC4bDC0cYhd1KX0GDIfHGIazx5eUVG/Q+DAreSrmaCvjVBMu6ko2HwgUWvYYIyClut
	 K/zdeHNeWRjk9Sebee/e1BNAMx7r+35f9/j/0x2xki6vrVagW01FKmatNWa004m6uB
	 FHpqvT/LYp+5U7Obe1QpvgyiVWJrahbrLG/ivmzdi+8rAIw2BDHZlgaIQOxNopca4b
	 MdvbuJebRVlw49TRxc7rnAcVfkCTKygmTSxYkK5SPz4yMfAnlwVQufKz5AhMKWv9jc
	 tAr6+88vw7evQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CC7CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861439358.22201.17714184600040816867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633fd763fffb994ecad2f4fa7ccdad1ef9fae1454534f47b70aa027bfbd72389
Date: Tue, 23 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758614393
