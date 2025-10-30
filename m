Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E1E23E33D
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761794994; cv=none; b=dskqStTh4wWLFuUcTy9dHqBPhFmKZgabTAFi3773NVeVth7OS4Pt6WC550ik9KnMyIIkmO9IFuVmp/CZaCMX/7ktlI/gs+sj/aaRWLwUMe/MneItUvQMlkzHFI7k5wvS/AWDc8fKsKfgnrYWbk1Wu2WuBYKAgH2XgL0axXRbxf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761794994; c=relaxed/simple;
	bh=rmUxuim6nwFYYu2aH5la84xQsfHPG6u6xANKadDu7hI=;
	h=To:Subject:From:Message-Id:Date; b=SNUVp/5ng0gvOXffYUEBd1NR5BjWeUP7QUaEMpzneuKPfI5qrBpL9bxXHkm4Bmh18QQYkGOpszuxV+mN+XGH96cZiY28gi4vtCCXAEbegv4LH+ot64FNv9a3k8ild2AwNM9kViAwqZpunZkk26pr/cbrP9tS5rZH1FGr2ypr5x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nY++cN7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nY++cN7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761794993;
	bh=rmUxuim6nwFYYu2aH5la84xQsfHPG6u6xANKadDu7hI=;
	h=To:Subject:From:Date:From;
	b=nY++cN7yvkpYzoLITD1H1ypq1OVPOL9sByZq0IsDMphHR1KWeQPfu5VkurVR8pRbk
	 18gmOspkwRTyH/OmQDwPL6EJUQ16ZJu3sLHYi9p9yIMLJatCAWp/t32JOcr4J7++Kr
	 mCYP7MQayZQeuV1YfxEphwS7QLvBMpvjvHIwg/vhV4VBXhFnNy02oKNlaMNfus07hr
	 OdlumFFWzrJQmlIivIdCiBQjJTicofZ1xM0qpCUF0UjkvyCIn15Yrgvzhrqxx8i+41
	 HwDaVunwZzLXp6XwL2evmSptitxq5ybnNsee7f77ZvSIcw9iirbStdB4sWg3soI2jT
	 Hwq8j1blXw/+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9312ACCF9EE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176179499359.10369.6547996636906638488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 270e70a97f10cacb7e5cc39b260f6315e42d56654579c3b702a95f83930765df
Date: Thu, 30 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761794993
