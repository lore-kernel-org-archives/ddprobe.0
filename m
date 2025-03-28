Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E2F214217
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743160194; cv=none; b=XK6+ajCLZVWlFnPId9EJlwIG2YwxlFKHbf4HmcVos9vcrt91DZmR8tH02ungakc0NQUEpmL41NAEHTIro8VGqwX8b/uOVMoIvT6Ds/oA5+lCHx2c1ekotrpvv+5GrNDV0z6bkjJpF5NjvZFSQrvjZv1CVw26BcifEUPq9BzmSoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743160194; c=relaxed/simple;
	bh=jaDdJdL0J1gcy5nHXTYU0PkVL6bZAH0A9Nx4Jro58sM=;
	h=To:Subject:From:Message-Id:Date; b=G/19s6KgrVB98jNUNkrQAZid20HEvvqhksOPys12TBVN/usniMyIYjByMARXLM84qVyO7/xVWBhur9zrebqUhCHgFp3mFXuSHlokRZRUMJU6SfdwLXvFPkQgE5sXMtkeUbMwX81GXz8Gs5WPMQbzby8pfGGIa3y3G3jCQX1XvZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+fT7RyN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+fT7RyN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1986C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743160193;
	bh=jaDdJdL0J1gcy5nHXTYU0PkVL6bZAH0A9Nx4Jro58sM=;
	h=To:Subject:From:Date:From;
	b=I+fT7RyNyhP3ygpxQlRF/LjUfVfG3VU1imzbAPkYtBdV0af+FEtfkkHadQ8CBoVW9
	 /0XWnx93SStiPs/emqRNqpbBDCiPh1Fd2bpnyhgs+EN3fEaSEXPelyxTDiqUsqWG+a
	 TY2lqc7D0MVzMdmTgsBWZtNuXEvI5yik34Hr47SIbnVdarCvwhMtr7Wnx/G4g0WfRU
	 AbMGwKkSKLzaNRs6pEuPH5+H8e2OffLM3GYtRfwHwJpocySFRoayVBJ4Ki+/VaPJQq
	 iTj8MHQxT9fxL4nsYCAOGTaB+ju/Yqc4gxxn8VcK+MDGK9/syqLGfM0bBhuUN/4n1V
	 SXyBWwQmqZ4tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F40DC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316019357.4977.17266135601532184312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c26a7116e0729a2abf0be988f06a02dab44cd31d2a2998cf261a3d7b646a0c
Date: Fri, 28 Mar 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743160193
