Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1657E777
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709624897; cv=none; b=Hjz0vha/45Ug+EMLJaOuXDeU2QJJk2ARqLB9MAYqgVyY5hxCybfSQajJ4GLjiHlTCLsZolRF7suPOsFEdLYIjVImbav7kTNbYtiL8cVy+OFfaK9OX3WVl3Xb0bIcvCmatkqs/LRg7uOIED3VGh7BgQJgAc+5HNbLpPO8SdRHFbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709624897; c=relaxed/simple;
	bh=CQrgoBSZm4bHXsg+/1+4V2KvseUjVEON/JLHGrlkCQA=;
	h=To:Subject:From:Message-Id:Date; b=UntrhSSZp9+Pe3oQYgp9y4MRPAxSDIHkeI2DM5LR+fVIV/9w5fquQadeT5tT0sCxnP1Jzm/+J6xoUjx7Qv2B17pSp2Xceh8IO5k2TMJI69sNUTamX5ZQcPhh0QKeE0GBuOn+nlgLeUmj7IB93Pw45PqtwmZdq6pS9sdjuPJrSjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3J6srhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3J6srhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C816C43394
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709624896;
	bh=CQrgoBSZm4bHXsg+/1+4V2KvseUjVEON/JLHGrlkCQA=;
	h=To:Subject:From:Date:From;
	b=d3J6srhzxxJHUGr6uMMkOPTBYS/k8OJpoLUgH93iq6UboBzWT+saNfHTzUCGS1hXw
	 R7MLeILKxwpIvDGfsLuNmfWXwSZL038P5BJNPvlscCFVAOK7HnGfKKuAvxA2ArDHKe
	 sSsyZ3IlfG3fJGQHl3wigr87eUK+GXEyqChx+IW9JEpKBDUpLPG5j7jeQw3uY/lojm
	 bUroBnt57LuLGbIKCTthZyb5a7pKgBfgytd3xmP0BNr0u4QPrtZnCe4D8Dls8Wd7W7
	 hYNw+Qzl6I193U+o74i0Aj3FWdzdz1ZZXOmdEG67g9UZxcI37yTd8EGhQojnTlCz2C
	 eayqcHQ6uGVaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF79C54798
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170962489638.28973.3876569966187785033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 492fd2398b80d9d4e879a6e311a6af8f789d500f3466ffd040f97aa206a15298
Date: Tue, 05 Mar 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709624896
