Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48472A50
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738547154; cv=none; b=jtGLC/+F/dqbZXklRVYHniwHOhHxd0S1NzYOLE7Z4uyFLzFqeYW+Fvzmf9fX9MVcbsEh7v/2/SCCC2ws2rxr6H5fkKl8xgTRuznM6IVryPh0M2kOad/r2NW2j02qVcMougk3h/bTBqWfEmckPcDxXX+7YSxj+3KK9tmWe6iFTl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738547154; c=relaxed/simple;
	bh=q8SF3X00GcfeKHuoMGIiw2e08PWql/bV3BCbhvixaDw=;
	h=To:Subject:From:Message-Id:Date; b=a1pjMphibT2hHz5L32SQtky2HqctLH6J/RZAfZdZwo7FaNflwzW8LlrGatOMYsv/X0A4YqE7mz2WePGUTMRw9Ney7da6yz/9U+y5OJ4AhH/eXRDw5hazH7AhVneQC/hc1TWompvJRSIZhOOU41Wz2ZTJp2H0Ao+OGSqM2c6/VKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/Gh7l4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/Gh7l4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9AAC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738547153;
	bh=q8SF3X00GcfeKHuoMGIiw2e08PWql/bV3BCbhvixaDw=;
	h=To:Subject:From:Date:From;
	b=S/Gh7l4cg/5T6tQvU3RuBVbNPR7MKY+xSCLwyvdm1tsnjkduNh7LbsEu685ybyoR5
	 MQnJoxk5llbfjMd6NhF3gncLYxwFkFgR48F764kqdWUijzNJvx6lV+wInVbpvu5+M/
	 Mlw/oI6PYJZqFduLGjp/Ssjkjn3R+e4MF5HZ5pvZkwq8gx7P7cRsrTBXdogotsPYlP
	 KC1BvgNrin1iBS89WberlHbVDEOoWHSfuvdfJPoGCj8W3ASuyJ/yCsk+8TIH3H4cWC
	 XbElzpQ58x2VyiJefM4altiYVkn8CRQwBn0YgyApk2bCUmutwashvQ89qMyJk0cMAu
	 V7VRxiywea57Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB307C0218F
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173854715365.19202.12526593701232592895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5cf81bd1b5df814e5711ac57a37af934754ac0000570d357d6f49c233d5c878
Date: Mon, 03 Feb 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738547153
