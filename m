Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A65F3C3F7C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788778234; cv=none; b=QNbkYaJdnJb2zv46zfBkqhRItX4Y1SoM8AfH3kbPOI5hoqHo78FSsfBknsIWwpRS+m8lHxoQVtqxrP+Erb/oKkapdX9Uum4yjy7R+/io3Oc6JOaWxtl666/1tokwTGQ7s+kriTaEVDoRJTHESACWjHT3CY+vK78JAsZpSha9tAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788778234; c=relaxed/simple;
	bh=EfaI4dqoKuNoFZlqQId9/C2RP68G5J+9FVp7saL5gns=;
	h=To:Subject:From:Message-Id:Date; b=StAaeAC+nRVZMM91zgPm0kVmcwVmQzA+pyE88ZdVUWZGYs3mbmaVcFhVPqd8ydIaPP8YaYNYu+IoGTRWWxgvGk4KnQncaPNm8AUgAcjnDIcjp0viemzGGw6dnJZQxKDefrdATPc7+U6crCouCTI12Dd1Zbyrs9VvrwgwFPUPxL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9/HGS5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9/HGS5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF08AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788778233;
	bh=EfaI4dqoKuNoFZlqQId9/C2RP68G5J+9FVp7saL5gns=;
	h=To:Subject:From:Date:From;
	b=f9/HGS5Icos8tF4PJcF8KIdTUWONQdMj3le2kzO4DyffHXUxLSeh/wPsWEnqufi0u
	 Wb8bjzd181L+bATRrkgzVirflsBxaTBHpc1Ne4rmwsY0TQys9EtRtxsQAd+yzIsZyl
	 upWERTthCQOM0TJVixH6nbjB/b4MbdIR6Cj1VWbPYOGxh5ldhASw1HCk5qPA/GAMz4
	 8jA5dkOeav6QCubu+tcn1ABCgdWG8Dlbrz6ynzkfhAFBuL6N4kSTVp+HQHvpV9MoR1
	 sdQTLc9pdv0pCCBfeGKTwUKbmbbIQQ/q5PbExRVnPbSAsHNYaTZpHGpfzhwij8QPqb
	 l9L6DK5Ams3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFA4C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877823369.7028.5288477365614924841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53daf0b77d8054000be32229a7d27953f678c146fff0341e4faef1622860af44
Date: Mon, 07 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788778233
