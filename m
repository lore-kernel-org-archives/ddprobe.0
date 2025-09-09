Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1222192EE
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757434794; cv=none; b=n9WwN+VOu1vuS8v4ndTWnuHQUbX1kM3MjXqTsBkG4e+7+qbGDRmpAwuXfH8EhttYsHqMLofoXGdKk85NoIooa5Yr3h4KeZKGOdQYyoveHYmK9/V2zGxLmODxinIAtYYJrQYSMTwdItT2Snr5m+I0+QETGqlCC3OeXV+Yko3/tLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757434794; c=relaxed/simple;
	bh=hGZpuMidrZVdfEDDsJVumpo4deukqpGdiFcVaWPoGJw=;
	h=To:Subject:From:Message-Id:Date; b=oq7tlPSyXrGX5d6PGtKdCpF/Byhc5gnpnZsobnfEBH0k3kSlJxpbxySNksANDxpRufyX0NtJlSIN4N0uSgnaDEpbQenwcWcv5fRqoDbRhm6QmXn8KsxpVMNif1IKGUvTJNGiodtbF45n/9KUv3DAlHeP9ZULLhKU5eKNtJIMyAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7zogSeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7zogSeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA58C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757434793;
	bh=hGZpuMidrZVdfEDDsJVumpo4deukqpGdiFcVaWPoGJw=;
	h=To:Subject:From:Date:From;
	b=F7zogSeOc0QGtmWPVuP5Ko7Cl+k8KNZhRCeHF3pzll6O86eYEijBfP8t9pjRoDUPo
	 t675mRVOP1HimUjHkK9wR27+SulfXIhtYC6UPamGXJQK8M47aGbCY5hk1/JvOTJAYT
	 c9688N3DthNaUp6hxHnMNarhjwiSwHH1/N0OSbdBTbBFafue2XBlbhFepu3Sn8JYU8
	 bGfz2saf1UvTkFOKrCe5hgbIzoG1TLUhzR5Q0LC7lDGAjh4P69sLZJ93bSflva7GvV
	 F1qQi6+jMoFU8GtT9kSRycTmS2GrjMqjNBarJUuGE0JJ5vig9E2o8PjJkEhtJ6b6tw
	 fb7Xcm8LwsLXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED77CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743479357.4638.12258779862107318905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18223415b5d7d2e17a6b6d8507db9d260e15096ff20339c68db904241d9d51cd
Date: Tue, 09 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757434793
