Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5D721FF21
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770980693; cv=none; b=qJgBc9qMGp1kqWKmvlYFvjBm3hTboRCtgTyRgkVTRvEkAJcmu+hJK1CyHwh8JFpehr3VkQ+vTAgVxK48oDdscrib1gj+h71DSTdECff8KmwdX53wluG5xefFwgdHhzRZ7mrwE4mU4vB7wJ7Z/G4FOkjYEE6KVJjekJzfQ7Ef1VY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770980693; c=relaxed/simple;
	bh=NOj01QCekxETUBd/KsLN8grLMRkg6mTUQiWOdTkh71A=;
	h=To:Subject:From:Message-Id:Date; b=OzbaOgN6EVKCIH7oXDLbZ6louqRXkzpcEdO9HHwE08vuLmznqTwyYnCzotHe9i0whgEd6j/aNprZgYkI2/IqhWNejCxPCiRiB/rruBiSMeJATTokV+5PVQVE307nyLaNVu6V9M364C95gHyD8K/tv7zwBTo/Livcrjt9MwhMKmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTY2ezYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTY2ezYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC95C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770980693;
	bh=NOj01QCekxETUBd/KsLN8grLMRkg6mTUQiWOdTkh71A=;
	h=To:Subject:From:Date:From;
	b=LTY2ezYUepeG4UmY5EWbaSQqi/qadgD7to2+SjrWJnWuLlogTml0f+e4p8eYH2kLK
	 MICjk+KpNhTByVjoaIGU6UPjaQR5yEIhCa3gFg+kMZCFjVDUlQ/8ycog/D5swyscR0
	 Zh3AfvgPIKuxpSFsIz81n/7dUeDkGsQxD/Fg6A2NI3S3po05eZ/NAqaqQ5mc5xC0rF
	 kzXCClA/DKtbJAaIxON3w3T6QlKKMWI/qTc9aXoXs8S7MWlXoJug99IECvWavw9mYI
	 nmEALx2Mc+Z7iPi10NPfBbshndrSqt3lEPDQ01MpbLicdeVn6+MQ0qHgcuyMo1rKnb
	 BJ9/jrMlxDXyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B00EDF150
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177098069359.23101.817175140416062894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 812d04cc31ade57893bacac1ab0a798cf065b64d5c1c86e983850b071122bdc5
Date: Fri, 13 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770980693
