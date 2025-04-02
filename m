Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3688913AA20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743611994; cv=none; b=UwPIIhBLC9qfTdT405FAGr5aN9hD9TGcyP61Tkl4JyyAap/uZjSVwTUNhc/4x5VMFi9JyTRfA8SpkoyjAnB5Jyc/60w4ZyYNRmFBWTWVWJMhvb9md4NyhhCVh2fJyHxOMmfXKLxvjpYfIyfeeCKnNK2UGna7uOUtDcjuleDTBiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743611994; c=relaxed/simple;
	bh=NzzOQViNqphZYulTdkauxpycMwG4KEO6siiEv2Ug5oo=;
	h=To:Subject:From:Message-Id:Date; b=kRWPlQPkFRR1JbkTSnByjbJk5avT1D2pKNBWlYGZAcCawXexfpiFUD+QFZ3GiH2cvwzycQhLTPmULNOStrsOs6SymeG1F8KRwlKP6BQEDyu2HfzkLfCZ1NJRhn3iecekT28BrhBmadkOoFOKHo+q1oO0u3JPyJC9OC+UrH1ajJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cadm15jt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cadm15jt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E59C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743611993;
	bh=NzzOQViNqphZYulTdkauxpycMwG4KEO6siiEv2Ug5oo=;
	h=To:Subject:From:Date:From;
	b=cadm15jt86vtTEHYO78x6/TbK/f7VFjJ0EAsyeTTdjhlkrzChQfrOzTNV6hFbg/Rl
	 X7UDtzrw//1ydrip5rB6Ho64wDMTvycf1+dpal7NyRshqlztayvFNprtAmiO7AYqGd
	 l/GbMl43jfW5oPcGL7ttjpA9RCfE3hMSYSiUwqzxbMvOWFXhkvNecCJ6tfp3fWKsRS
	 le2rCD1cwTstJrDgUAbdq1tWPelwAXSfn258JUwNceJilSJYqQo/caEcVxxrGVTnDe
	 okKcvK03jMlq3Q8L49YKuCjkKdmO8/yMe9As6LaLiqJGr5PwlW0d+fJcwfv6m8cxGZ
	 e/TZfmeUnOXhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96260C36017
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361199360.8003.7081274143501280076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3728a8dca8b41e0a6cd69df353b1f3c2b0142e4509d658bd2b2e39f79ed4683
Date: Wed, 02 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743611993
