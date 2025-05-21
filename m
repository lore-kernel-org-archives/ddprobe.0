Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FEA322E
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747857594; cv=none; b=eEyIE1wWjg797jlfoBf3UFmJYuVo8uasjQ/vs6GZXH8WW01ne8SSYe/wmV3yisqivggaiT9ZV0lm5fMI9FpHDNUqqld8Zl5LIjGVf4p02jGsg150UwMJOA77kZdiFEXCmMJzPSkrfc+VlTij3qtLga3fTVhr5YZNuUHhQLQ5TTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747857594; c=relaxed/simple;
	bh=PbVtiKY6SDSAYDss4eBW5bmJQCamp89GDtrkbOScJQU=;
	h=To:Subject:From:Message-Id:Date; b=WxrotFx8hlsqR2o65bpEk2TgDQdJ/vbqg6dCyiGO3m5+aABmefcCINlnohyMATzLkx8QiSiivkd+dRenazYlB+5f6kODzLi/0CaktEAa2d/Mq3gKymYnX9tzeNg+LROWHQMDpwEA9f5rudR8dx5aHxIgatUhMRfTwbIeOYE2byo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIWSGJtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIWSGJtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45DFC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747857593;
	bh=PbVtiKY6SDSAYDss4eBW5bmJQCamp89GDtrkbOScJQU=;
	h=To:Subject:From:Date:From;
	b=AIWSGJtOTRewMiSuLhg5dI1ZfTn9h72rXBOmfz9Do3/fnOH2ApA0MaK2gmLTEUVsK
	 rROtYAm/F/FG2q64uN/r8v0sQdtt8r3sJ/zvua+u3JSyOhDd07io1TzSLqxbiXshVy
	 P2LRpWmjIUW4YpuYKWuvz9IFz8QL219frsnfPFdJCIr+6RexEx8eeIpskGmCjQE72J
	 hDfKK7O8AcpYByUUNroBlr70vVtza74cYz6pw5aYgaWJsIPmhjwTD7dpu0sNL10ZLd
	 oRHzS19yQTwdyByV2Aou7PL6SXTjYvMBQ5GOgHadQP+cUFyq/Q0KIdzLGqhZmYu8gm
	 IulU7gKXoKq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFE9C54E90
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785759357.30570.16377202547562163904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552e3915f2f38e48d80217e99ac04096f46c6feeca99acbec7ea410ea5f45f21
Date: Wed, 21 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747857593
