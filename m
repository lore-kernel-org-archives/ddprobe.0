Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5C8A383317
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778538033; cv=none; b=QaLLBYyAyFdqTy5j0TdLoYFHw8S/m40Io/JrppZEC7JTFv1PsEBePvhdMI+/qN7qXDO8BwupE9ytADH3rXIEBrQgTBhYxA9TpN1qqrRItkV53zh0MJgMkhoV0OD53tBnVr8F5FG05nDw8LGos93mfg0wE5IoXbrSwKzMTqAiPUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778538033; c=relaxed/simple;
	bh=0/RCfJupl5cr30l9DmZ2tTMz6TqBciIh0/GNJ0OT7so=;
	h=To:Subject:From:Message-Id:Date; b=sjs2LDfNtEvxDsDSuJs/LzUQ3Nqz8jIsvD0pkXlxjaJbf71J1jjfwZL6CaUTC+hOyjdUXTs0RiEhWn5S8drEVun02ShbNymdkgxnQy4BOC06yBVgWykPAsD3HAMJyyLazM/apGxIxDbshVwpmp2Zh2U9diBRD7DWazdC4F+2n8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucIeY8zN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucIeY8zN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC2FC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778538033;
	bh=0/RCfJupl5cr30l9DmZ2tTMz6TqBciIh0/GNJ0OT7so=;
	h=To:Subject:From:Date:From;
	b=ucIeY8zNJmWZh8wbAIdKFZs4DVDrJQn6Ezinoge0TjyAizkwufl4lOtamhryDQj4J
	 vcyF1gdpM8VchK42S+QEftBnCWd+HWk2MkdhJpwvCIkAnWQA9HsC4Alzm2i5nHPUTv
	 oApkZGEtW8ZbQy+Nhnq6QhDQGWLnIm7w3Hnr6ZXoL5NAJoVc1HFgMUguoPChr4xCvt
	 6dXohIbOU/E0MHbf6Xe5JuisMp4aIgL5LOhNDpXM7/DQF5Cs71fEe7CRp8n4pHEZNx
	 0QJqiMfXWhRNPGIo8ZcbBO07BXZBC8gNFf2Bw29a1yCoc8ZTdg6anqFNdRz4Cr8yAQ
	 wdwNZEtBfmZHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC790CD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853803369.6274.18234620852712623871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f63c690421abdaa1d3da5cb0a1da444f97ea2c901c09c7c10fa61853e7fb4e3
Date: Mon, 11 May 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778538033
