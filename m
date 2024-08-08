Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA8F4C97
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723082154; cv=none; b=kakqLBLq6PTnimonCRUTC3AWbPqAQQ/7k3Y9pOTcntGHldjlkTJc0uJFNr/alUgQ+a9n6bBh+Me+94i69W6obTK7qE/7OjSuHJCwvZ9R2gGVOCB5W6fDMmFoETBmOJQ8GYaSkxMuDeutXSkl02Fc6j8gcRtOn8vqMb6Kbzl5RV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723082154; c=relaxed/simple;
	bh=R6twFGmngrAt/Ey6XI2h7c4qStTixkvyb5FjPMqmhkY=;
	h=To:Subject:From:Message-Id:Date; b=bz+IGap7m3Jk6IQ2c90zpSavs7rY3RgNOpbRanzkgv/zU/oHfVk4vfIvhTTEbQJxn2jfqRYouLIg+qJOLhewcIGoARd227fCIcFYl+GdGI2zhxsUSYeD2MLl77lpXiboTsQoPXmqop1c4ipzV4YCKG9MR0vzmPXLhFXyKvDfPD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkVLUMrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkVLUMrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9D8C32781
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723082153;
	bh=R6twFGmngrAt/Ey6XI2h7c4qStTixkvyb5FjPMqmhkY=;
	h=To:Subject:From:Date:From;
	b=nkVLUMrz2wF4UmfQsu3mDvmKbMsJW9g/joROk8kOxGsV+fnj1J96kbtG/ecd5LLAg
	 6kUoxgoMwHC/xrGinrBzxBxI226SoV2TnNWLKgi+agZX3TluFWNi/Sl7L/mcrUPwIR
	 PxqIM7t2gQn6FI/CgzA5unMHXyplDdPG7693s3U/laMOFRjr9QJsoPQRKMw5/K1HwU
	 GGE2AU8ZQpcgWy/yIfdPQzum8k53Spx2BsKS8zNddYrZIaj8Xgz/yOiJtyRFOeWscu
	 pSmqqki14iMnsaK/1E52sJEGoAWNIRL+doqQFFMcnEVlsEbIOv0cNgsiZsAqsWpgJ7
	 Ek7KAqyip/ZBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E42C3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172308215359.17194.6628161310698583386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38ef124ec953219605f55a138a484d8256c1569d904ae92b6e6c169e18d9d9d9
Date: Thu, 08 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723082153
