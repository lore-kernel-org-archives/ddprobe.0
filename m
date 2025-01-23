Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3B31487ED
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737672354; cv=none; b=CmDG+w+UIeFLEwdC7wRlEOlTwgTpTzjIPeTgxcwToUMiDaQJ/eW5J3DQycGEUjsg6gRgACY6CFu4XzkmzlFw0uAVN6AOL5AT3JmxlG1DCWaNlPXY7ABMqALCbGtYVszzvGWl1KX94vjUQ6pecGHneB4iXHW0d0M970P9njm/L1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737672354; c=relaxed/simple;
	bh=tcOwOZQ6eKNVgSsl2np/HPogwtmZhliWqCYE/nnBYOg=;
	h=To:Subject:From:Message-Id:Date; b=N5YyhP7D1U6Q4Y0snDXmXN7V2UZ6GL+TAutLNiCLg3G/HuF1VSIucnNNnT7CiHVq7cEyu9TecXTS01WmM4+Xacp9NCma/vaf4vKcjlu28O10g7FdLsrMBE0FEbt8KIXOA7o0Z4otMoDia2vz0fnoAIXFtxG5bdWabXppRNpKFGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrUityy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrUityy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC977C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737672353;
	bh=tcOwOZQ6eKNVgSsl2np/HPogwtmZhliWqCYE/nnBYOg=;
	h=To:Subject:From:Date:From;
	b=NrUityy1IyGjmbxTBmeogU0YpD5PYR7iywp50EJXqiiPCZ9P0L8AWGJPprN/l5PFD
	 aPiP/SuLQA0pwvgSnrhaa2K3nY04tZGkHTpnDoS1fjCPEu+vWRIxVWiCyU/8d7lfmF
	 bAqpis8ERs8qzwa0CaYQd4xTsDmvl7rGfAZT3cldwwdGxXSD/FHtSqeSf6b6nOm+m0
	 NdRF2gLfF9aTGk0IQkyaBjoRzOWjc2Jw4Mj3zgTMBGVSNWBYQSGMZwKIRqhxWKE900
	 tDx9NqHMV3FgcswyX7qX/hxiyjGKS8fsDtlGuxBsqGVT72J28l2o2AlPZ8yTlkx1JI
	 wmr65lllTI1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2163C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767235365.8914.15693891823007466322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b73ab068724b00c36bf3625ed0ad973752878014f6923dd6118fddc3e0e05f
Date: Thu, 23 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737672353
