Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C075621
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719965723; cv=none; b=iGv+v6DDSk1yCKPMro4CY820Wtx0zT2u700VIFeU8O6XtHkQZ2dRbWxx+lROGBMkTh/fx1R0ACHTRN/+Z01T4YMkjYy4fYy9SGZGgIBicJ3eFAOPbLtDDOxUJjrcZ4aTXn5I08NCbpsOhcoM8h1NGKAYOW+hrk+xFmuJuExAuP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719965723; c=relaxed/simple;
	bh=DBGb++agtVcH18AhY0WbfBF8cs9CyFNskABRyWN99Ww=;
	h=To:Subject:From:Message-Id:Date; b=NN9NyeJcIkwKNKNFbq1l0Soz6CkzCu2W0vTTCAkUiflgef2VgJ2WH8eW78FicuvrHA6t2vPPWw9wqRmdM5P/ZREsOga2lqe6Qc+vC1FXWNApTRcI0rd9w/2+bLjkyp4zrziup5tImxg4XXStk6D35RmeoGuQAaOWeLxVwzIyKwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjmVhtkm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjmVhtkm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF55CC116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719965722;
	bh=DBGb++agtVcH18AhY0WbfBF8cs9CyFNskABRyWN99Ww=;
	h=To:Subject:From:Date:From;
	b=gjmVhtkm6wDfeLvyuuYDeUU3kIIAR/Z7RdbhdLb9MifL0xSbfGmLg5VdRgynWReK4
	 lFkQuO1VIKiBprY7LwcYDIgieZlu03goLr7oKaelqlUbNvtRW3WVo8riEqkDNvhOmc
	 4qvt2AXcp14L+Fz+isFj3j1Iv6TCseCq3JoE7qsz1QXP0a81e8l29iIVR/pli4+AzY
	 qb2XSLq6eF41dnVxXxyAgI2hbBEG718P5nZ1XRXGRttJt13MjKFMNcHbxI2XXTG0YS
	 W+9me1ROFN+CPTpWwVtzNHegiL4NPMT+xip23KliAaUnLcx+Hxftqi1YFkj/GR6jIH
	 +YzxKOhO35y4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D29C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 00:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996572276.22349.4172971098035910514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd78b01154b299cd6816e9eb1fee2cbc2c5c2345b6456385130f394a9f28b772
Date: Wed, 03 Jul 2024 00:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719965722
