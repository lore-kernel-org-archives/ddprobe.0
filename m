Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED6817BD3
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714822943; cv=none; b=QvedxscPqYST0lrkZ02BNFuP8BBWUn1wjxbEFGCigFi8Qduv31EGbisyAkYtXflj+OMUQnOVZyyT7iu8oI8FCR72yw6fd+UIaDSgtnc51B1FfNTCNuRFtXkhtP/JofYImQMbY4P8zu4qwH85nbl2V7gBVjTBWmADRbKSt2ngaGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714822943; c=relaxed/simple;
	bh=kfrSBjXhDCL5bgSGN/L9xT1j1uoB0//PphruXZsuk+o=;
	h=To:Subject:From:Message-Id:Date; b=rK3RlyMlqD8Sbvs4ilMG+wtjNJr1C7Yq39vLXYSfis2DwF8S0fK6hCByHnWVRjqqgy45yxa5M50rvM8sbSGTnbA0YexcfMcL4Y5IXT6bl31kmq89vRGYszWL0sZt02HOH6A7jqj9WjPLxUnig9sKQkKhmwxBTDK0rSqFO8vMgjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OR1RFv+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OR1RFv+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEC9C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714822942;
	bh=kfrSBjXhDCL5bgSGN/L9xT1j1uoB0//PphruXZsuk+o=;
	h=To:Subject:From:Date:From;
	b=OR1RFv+zFN19g+R10axwIDPURJWJfkj9uAABd3nvfPDXSANp10PjJHch8KIYEQci2
	 7XPzVwWelJCiqTJeTGx7D0safro0Waq0jKlDZm4uowPjgJ59WCFeHX6niEF9vxiDp8
	 Wb8jatvSBh/T9BwjP7/Mi6OD/6gWcOh2Tm38YvbaDY8/R27p/U2Wdr7PTc9bdLuXCu
	 6wxn+TMdzRRhni2UhIObN8cEF9gbuSzyBYfNQcIbSTQN5O9S2usWMHdf0nsH3wJUSC
	 STakuek4LshBdjiCwr1vehSgusjM/ooA3f2mltEXRY3S6T7Oo7IYmLncgHgH3Ty+/z
	 +br57xMSv45Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC25BC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171482294276.21303.10582064770073119866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65ce053bf9ee49b7a0140e6fabb55036135aac754c03427c7248ae2337ce186f
Date: Sat, 04 May 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714822942
