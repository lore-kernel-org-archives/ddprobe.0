Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CEC227EA8
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758290994; cv=none; b=TTO78DHhBGO/95xHNdyQv3gDMm4fyY9fjX8gScXOzAyjBpe6lkY5KFVklVv3Si9b3BEW2i16GcF6XkXygCnnWSmLscBDsc1EyXwgzrwcgB55Udr650T4iD/AMJyD5zkdQFGEV8I8I1Ti0jQNSpqjIltyhxS10M8YZcTz6kWlx4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758290994; c=relaxed/simple;
	bh=xyEUpwVQYPvlX5TFbAHEThE3k1NQE0TLWMlVApnSi30=;
	h=To:Subject:From:Message-Id:Date; b=TbR01bo6YH482pxg5xUSN2YgU4tfQLN3c+OFgEFCodUCYGCFPcz8eAxhV9BiAyKEMpteOtSDq84wLC19ysT8Uo2qVp7kCvT0jddGGAoJ11l1c/ou6f0ghBaBDM1kKVuFX8TfdLPCu71qWmLDrJ3kOEFNJ7U5aOwgC2pQuHgCxp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fb+Ow6je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fb+Ow6je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4497C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758290993;
	bh=xyEUpwVQYPvlX5TFbAHEThE3k1NQE0TLWMlVApnSi30=;
	h=To:Subject:From:Date:From;
	b=Fb+Ow6je04vHP9RAi2dEHc4JpESQa1BT6Ee+aAgm1HvT1thpDdwH15JhwUU3dxWHw
	 /DR8lhmXq95R8bQ6/TuiceO1bA5ZNZS+aTrjiizku0TWlndApW5OMa2BgUrchhbZfN
	 dY6Im1cXrxtvbj7gpYSpvLJsUscIOZTNQDBkltKCTmGH5uwQ9BsfMFcN3gVACMYUdB
	 37mo1B8Lhv+WUM/wPVw1wb+G1fAt/BgpLoONkiaCXPKKEA20odMdhQKuqHmXA+gtR2
	 a3pe5re5OwkzRtfojf51EO/xyNaRqIU11L+qRV0ullnFsUVH7tU4taMYb1i2V58qbM
	 CypfmfOk1HBww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA12CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829099363.8025.12221271631913741088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec58e05eed1fa956d761e169e6a94e307d293e371f92152e7674f1995c9d2ac
Date: Fri, 19 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758290993
