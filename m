Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3652DB7BA
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777925854; cv=none; b=XCxf+E22+JxQTuz1rcQWVUushFlHEdB6xZBWXkYHS9+gWs4f2fGYhxsdpG4q7pOKQCY3ODBJSxiRGDSmerXi0512OAewFKRE9vZi60jT7af1mQ5B7aMrJpFEa6096CJo1PRSY0T5tpPbDGL02JPWICVl+QeNNiIeaoRcHT1rD94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777925854; c=relaxed/simple;
	bh=lOUWwn7epAg1yq4ymV1pxk3Ih1cXiYQfS8poSNKh0UY=;
	h=To:Subject:From:Message-Id:Date; b=RakcJUnGsVhsLjefk58xzU2R0yGYDhLqYRK6xofQYzIpINbCj84KSvUM6zdXcr3jtMfCM0ycgQXWQF53npX2RaRclhUbZvdmW4tP4o7Ee6tXN70diA7c8SDjdOZSZPACtp23bRBURPdcvYNm1U54/hiKBgFeOfw6FYvvn0oRIAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPfMrFUV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPfMrFUV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C0CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777925853;
	bh=lOUWwn7epAg1yq4ymV1pxk3Ih1cXiYQfS8poSNKh0UY=;
	h=To:Subject:From:Date:From;
	b=vPfMrFUV80e5xdQICOtiutZjuy7I1QfPskpWk+rgOmZaX5yd1rJQqyQihGrr3S0aF
	 EsoAePzIK9obTUfu7cXP9P3orehBZ4C9G+jyrwpLXyKAAuBGgCJNjtZu12j7Mb8WqW
	 G8Nn2DnGJ9ME+pvfK94ORjkUdNtSpHaeQPHcv3r3SZnWXLo8HBX4WYMScQyNvYkICF
	 XGuyF8jiKtJSZBp1BW5RQ2/DwKxPTRLKgoVFaheTk/ZrTIeZLcY+gOslFYVE0kfuR3
	 RQC7Qm7zaZCvqoR6CsLvu16wiWQO14Rcg6qU6M9d4Lcjoyfk9zJ0QZzHizzXO42Nbm
	 lgdv51NNkKKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB5FFF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792585371.5871.6105666357276742918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b9255139a396b2b03b13ad3cc4962d1c1dc4d3d739a4ce4fe0417f86f67d2b1
Date: Mon, 04 May 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777925853
