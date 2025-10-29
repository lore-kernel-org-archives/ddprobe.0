Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D988635D
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761770994; cv=none; b=F3acS3WqiLbm62zcWZWtLYOYeb7r03Gw1glSDuQsapEan2hYQ72IX9M31939YPUq/vMoErTujhm2bqqBxxQr4OI+bszzFaGB/IIVLOZDwkkYH6ji36fLjiiZvxf5wTNf1mchPo2FouDzCr+hNeBoWRtBIXh7wagkzQ/JbJYSFBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761770994; c=relaxed/simple;
	bh=jpSigCMyl59HA5ht6g7ZlhVTjc3XCX02oWHErq2QhsQ=;
	h=To:Subject:From:Message-Id:Date; b=SqQRE7VqWgGGOfhDAFwGTobJbMuT8EBRnd60IyXTr6pSPaYYx675o4HARL7Ec/GtahHA6zl2GA8nIZyJA+QyWiBwbeKMZuVm2UFmbck15dSIKp6GrPDH8RJVhlgYmIe0oRLfwTQWE+0rnEWWja2ZbkBX6Geee+EhLGI23nAjO6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvgLpEe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvgLpEe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E149C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761770993;
	bh=jpSigCMyl59HA5ht6g7ZlhVTjc3XCX02oWHErq2QhsQ=;
	h=To:Subject:From:Date:From;
	b=UvgLpEe3Cuuq0Sc6LWGvtSU9+RC6KOtce5vFiy5Rzbk9PlUwmVlF+8iHThCIvh7V/
	 r066yMBgjueg4brPvZbkDsdRwbpmpC4AAJs/hq+VJgyZa9+c014dAXML4qcuwWzkpG
	 zqMTOhaxZ9cGgvcJs0dFqbHhDU3NqdZypypCb1jE29A2pmEGMkLIdJEir50Lssx8Wa
	 GNIJXD9DBAJa8nJpfRAJlkB28kpeOd3FD3hFT1VG5gsLTEU8CP4ftHdCLQFPSoVTKg
	 KD4DKVnga05+Wuie+YpaSayqL73DPxIXZKx0gOmz44UgAf9yHvxwySyOhF70rZZzPG
	 teO6lYETfBtbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F534CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177099357.9946.3048399102549957542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af341fd155318befaaf7c01f457826e88cd891f9f793ac9b8caf761455f5b244
Date: Wed, 29 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761770993
