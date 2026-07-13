Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4474502F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783909714; cv=none; b=HMpT8veBFr9hQvspFCmn4QvdAEKv2Innalw458/m2AcBV0MkjKJLSGj4j//6QjaA6dvqhJS6ICnwnRk/xswpYNks2EOLVxYC9yWY/DEaikLIJ/DW0hqjZJ9dmSuzki/TYf1mm07OB6Gznaqo82D03CW09fT4LYwqecuB90ET12A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783909714; c=relaxed/simple;
	bh=hA53vH+Otk0JBK5IntyvnOiBtEwvV+WZZGQVoSntrQk=;
	h=To:Subject:From:Message-Id:Date; b=mTCpuRC71iSaW9MTCr2fYc6Xw73iwYRpcUFsMuyw7v1ecG3OoLeGzjz0uj0XwTHnMob/0XAK+AwFRXXlq00F5eGQQj/7hTNsFXiXvigC+ujGf5pF8J034txp2RRv1M8S1Pw6KHNa6sdcajXpbf4GpCqT/gJ0Kwc3T2LPacb2GeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHaojjyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHaojjyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6C8C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783909713;
	bh=hA53vH+Otk0JBK5IntyvnOiBtEwvV+WZZGQVoSntrQk=;
	h=To:Subject:From:Date:From;
	b=sHaojjyBJdcKDLWGDDO2NDWy0IxpE5c93My/cJ6LIASpOFuh4Q2A/q4C9V1GV4URX
	 lwC3AD6FTRmtzuvcCWINtxkzVHgyjhDHyryHROc154fp7N1oCrMqL/l5mG9saHep3A
	 EzRsKiF4nFYGwOyi0BXNDZ9y2csHBMhsV+KEzmsJu7dB+xHWLzjJ7eA4lW0bOj3bZ/
	 8WL0UpdcAMusi1rXwLVsPkDdNHvbiYlddXvskL9Y2tpjnoR9ooIY538g5aaNAerOZJ
	 QSOAio9jWwnTMnfrpF4gFVIgtR8uFCey7iqYSNtmg7xl9OfCyI7eAmzRCp79cwKWQo
	 KAVYW8OBySXLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91B0C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 02:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390971368.24587.17282651698153503143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557753cd2419408054d91e96ddd73783c9a362d3deed0d186ec98eead1320b5b
Date: Mon, 13 Jul 2026 02:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783909713
