Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C72523CE
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746313795; cv=none; b=OzIrHKBCcR89DGlHxn9q9HKp2SJ5GYOuwjPBN9DQaw0f9OaEXNHIc7aT2vMtM9KGD9ZeA5+hf+PmrqAmh+Tb3Wnc1b1Koh7RR6xP5taS3CvTClgAzGSM5KrLcIGVDLMli4Qi1hj6HFXsv2KG63V7yQu2NiM8t6IWJsxL9AtmMVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746313795; c=relaxed/simple;
	bh=9NrQoH6SM44MzA/DJnl4frYFztXvNBnEPemFEYTtelg=;
	h=To:Subject:From:Message-Id:Date; b=Lt8cLsdYG9ituxNHBgCSmzBPN7Wu4dMdeTvAqXEy1wX7pvPkycEjEs+KKgJmWOJaBtebvXSLofccBHGQE5Y4uRfHYZXZsbXeiz4OGG1NScE1Zg6lCg/UpWccAlOn9rhuXoCVCJOaeWKxj62eQ8YSosVoO3KLvCcT/Ff+toixnpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgJfks2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgJfks2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A673FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746313793;
	bh=9NrQoH6SM44MzA/DJnl4frYFztXvNBnEPemFEYTtelg=;
	h=To:Subject:From:Date:From;
	b=MgJfks2mFh8u4xzVMvQID67fGMsNNJpJlFvguL+2oqEZhCurzrqVATkamgyPEUZYJ
	 mMYRLCCitvgLSs/1O8jzaRA7y9Urw4DhV/ygR6PXMh3TZEhsgWXyo6zNfsXjRAcxuv
	 gFyy0JTQRSRdNRTh7TQZaoO35EbhSxkfMCLATLCprQOT332UxA5spF9IhJ6yGfmvqa
	 furJcfTXJpAvt7bwgaqpA6/4E4rMMF7AL5pmuhZm/2ltKg62ZowegKefs41Uom9L8M
	 wQRBM+w57wCcUyE/vQzt/2FdaoRfz1CG0W25UCZPipuzOOtajmq9iPj6XWVfQL/mPR
	 gzOXgKJAECHXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FC0C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631379357.12433.2326121132023969692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0281312c4bb2e2eed7d986b7f420236064ddb4f4f82c54291687dd91aa609ecb
Date: Sat, 03 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746313793
