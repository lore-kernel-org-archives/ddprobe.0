Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4682C12B143
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787795434; cv=none; b=g5c7AEcJON1Mvf2eL+0q7Ghhzww2P2Z6xfh1t9q5RUcDewVid/l9mqHA3xYZ41Pxk7t0DMHft1/UTxSdGmq66mGMgiXgYByad9pXYvHcycFpqg9xIMHVojS47ltpY7ScZ6i2mvr+5qwGE2+ptMU9ZKkDyn+C28t1UGeItIBKq/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787795434; c=relaxed/simple;
	bh=1xoiN3a/78HsBzXWSdnm1SH5n91UtBZeq4q8rbNw9Bw=;
	h=To:Subject:From:Message-Id:Date; b=OvNqXeW2xsJl3wxi5jmXBplw5AFR8UPUBOGNWohv31sSyHrAJxt4LBuJttiGYTuI+f7OgTBAKs92L8ZZ3TfQA7fokf1kfLSj13R2VyYmXSTs+XKWtQLvnzLul74yDmTDhHTJFBSz904eHYND9z8bO66bLES1MzYQWImCsIzkJTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MpkzJ520; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MpkzJ520"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2116C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787795433;
	bh=1xoiN3a/78HsBzXWSdnm1SH5n91UtBZeq4q8rbNw9Bw=;
	h=To:Subject:From:Date:From;
	b=MpkzJ520VdF+WjCSLLj5o9ftZFTpp3W6I+LMpCOeKfpexsXUxenby7PdPQFT6nCGn
	 tBVJ2V44gxglIH959mSZ66N73AZ7ki/w0EFbYbJRbEf6Bordj8Yf1dHdr00FYq0v+1
	 LZ+nxgLgpEKAd4PPGSNqqEeNI02OqYNVV2n1XAN7Mkffn1d6cn50cla997HofGvxXd
	 J2rXiUny1BDwpfaLsuH0Zqg/pdf8W+MbFgI+lDk/MqzMD/xud54IWF7b/oA/2usqnT
	 UmmAWbun1J7wO3hHw/6E40NcjDCQJb7jDVjUAN/iusy3Y9wet57fre1YLojClfjdqK
	 Nfz/8I3PV1urQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1EDC61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779543368.1621.5375556734887397360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d11ef55e97d8c07a625949b6fb96dffa61fbdd15def0cfea87326cb6f564255
Date: Thu, 27 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787795433
