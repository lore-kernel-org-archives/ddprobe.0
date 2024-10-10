Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36551188A0C
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728534954; cv=none; b=WuNNKne1iJs9xEVJO+vFqnFqVEvGrRxx0M5OFvjZa+YGvoFHK6sYDH21EPZ9f+zSWCJbaIitRl+0Hxxtq1QaGzarM2T1bfAG5p89GteGSoohn713OWdcJHKi8vF12Cuo8zdMBIYaa+nvepS7IRo5EW+ADcmT/F1i9oKPyo6MS1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728534954; c=relaxed/simple;
	bh=Y9IR2hCTQppI/rU3wS3IraRCPZK2mRTbqP8wihnxLMk=;
	h=To:Subject:From:Message-Id:Date; b=nwsOLu1caL/SNODOAAQuw6mH8Tb3yMc/kWZRfRIuSQZYrZzkuW+UHl5+fRlwZ+g9VGB/oA7eLLeXLTMHo9F95JjtaYvH0z1QKaxA3DV79hQ6VJV33NtFcMdf0zzaGQuc6hegK4iOrcIH8az/eerdygDvKICeiDD5VoMz37HgZKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1a5p9W4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1a5p9W4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8090C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728534953;
	bh=Y9IR2hCTQppI/rU3wS3IraRCPZK2mRTbqP8wihnxLMk=;
	h=To:Subject:From:Date:From;
	b=V1a5p9W43f40JcSOz/Dy2vlD4AVgbXRaGbw5W9Wg/6P54qz3ne0qrqYN9q3p1PVAC
	 U9tuuYmzE4JQ4I5oJj17t+rJJQ8udfIeTgV38oxwygkSTkCXprDTnVRtXFtksRsJMi
	 4/q/8oU0nU98f7ifjYy9abaPX3Ra3I1pUYKgDqAehvln80xyiP06PWYSlel/XwiDQ9
	 X4vHKM5GLFUg206n7HutSEPEVmoLY7p+XKKMmI02rExK3yzZhwSP6vvrPGgAyESGPr
	 1myVTIC+CcMHtwMqlGtvIvDvVTMtagq7rqQzMClaqau3jaNRQTZGSztG+UuY7z60V2
	 iUU6863ITS57Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE16CF07A0
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172853495363.5071.6508261838904662318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b32da6be994f4b9aab6d29ac66e3a5f91211cdb151f3b7ffb21c3d4011bfbc2
Date: Thu, 10 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728534953
