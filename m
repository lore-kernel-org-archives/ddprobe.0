Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EEE1519A6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755472194; cv=none; b=hhp10C1FCM0bzIv+gZbL2OBZDr6RbpI5QAsMklbBEHeaqFHJ6rzn+4M8J6IDYwy9LeqD5RQKJQsrYbMMmcjLQy0c1am+OExqKOhvikq5ILWkg+1M0I9RGSJmigv2P7t+Qru5DA0v9/kzGVhIrf3d+7a39G3DABUFCI0hELMaCe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755472194; c=relaxed/simple;
	bh=37fHk9q0ntp6tItoYO7S3j7Vq3bRMMfKKP04h1rpQds=;
	h=To:Subject:From:Message-Id:Date; b=nhAg8UOVYEV1YTdi53dDR1Fa6I9BMKyJIUOOLJK1U/SnWwrWk8ge0teCiCNTTFNxzvbI6hy+DInkRDMcN904T/Pj7Smqhqw8KfzTxqgDD4JlPzHbazMTP03hU9NR9zJhVQtl6/YRTMyx4pkaASWErQKsysjVDbqAMGDAjp9Y+uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tn8iB+0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tn8iB+0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A299EC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755472193;
	bh=37fHk9q0ntp6tItoYO7S3j7Vq3bRMMfKKP04h1rpQds=;
	h=To:Subject:From:Date:From;
	b=tn8iB+0XFe35f5gAZwnSCE2XCzNq+tUIy7+vYSxmwJqv87Q2ekdeXUO7ZxI7oVDls
	 qcjExu+aQoxu6g4q1vU2GldplkkyfqCwwx4Wxf6/C+zrgk9FnvP4hVqmhwqRVbJAMH
	 4SSYD+H/FhwYc237cvJv55FLkWIPGPEgTdQeUozbJTpldeSthU2USQNSw0hzzQXLai
	 VuniJKDx4qshcfnnbnnaZ59FyNmnEVdSLyJfoxxYJljI6dIkfheLgeTeFuIrsv+IZ8
	 uueLe+E1isl5qJpuLZGXCrSs3+Xxht27GXO00y8Sx6iR06SORA3pr57VdjMYG1BR9c
	 /J72e4bQIcTfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA8CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547219357.13607.9286180651767679572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffaf903b109eed9f76f775149745e481fc8f9fe4033ac3976d14dfec09c08e52
Date: Sun, 17 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755472193
