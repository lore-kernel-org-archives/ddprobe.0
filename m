Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC801D89F0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736153754; cv=none; b=LyRH9/+/TM4+zKkCqzEJbMFSXMuZwzOERC3nbHN+bxQcXqcMg9SOCWNlqANJzVDjgjNmXscv9JgqRCdCZ89Cmc1XddssGV39ALz9G2exr3w197ztvHoMT4s12+rLXpdgYNFetywfVoMB4JSmj0vYTPCeArySTJ4bHbMc1gf6iAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736153754; c=relaxed/simple;
	bh=MgXgIlym+QRX9rTI+d9F0clRVYZSHkg1qCnHVQqhSD0=;
	h=To:Subject:From:Message-Id:Date; b=Py4D7g3gtRqlfH94otF/KRHrofh8CE1GXX14LgPrNJaV847vvUFEyyJOm0pSDJVMuNVao+g5RfqUDqAdOUruibVsXZT+MSnYPm/KquIy7TBaBQnkYPMZsvYUSv0NaZq8c8qahfsdoP25iGvUPGPcjtczrfbzHP5QonfemNHPJ08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPUfCumA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPUfCumA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5577C4CEE1
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736153753;
	bh=MgXgIlym+QRX9rTI+d9F0clRVYZSHkg1qCnHVQqhSD0=;
	h=To:Subject:From:Date:From;
	b=pPUfCumA3iCrJjNKVXPa3zJ4I1pqHj/eG7gN/qVwBSt8YAkbaXJovICdu2LugkX9S
	 a9EesssbX3Ak4lVEAMXG8I1yO4P3WNzH3ArSBtGWLqXbfelLIN0Cfmuv39LuTRMlEt
	 Now6vU/hDLBtNCux8wLdwXSGXyOK538PxxuM8dHqIuvsAPHzP6eZXzIehMjfBOAXDe
	 zOw+OcC+t96/d/WiUB/8NydPXfW0mEuL5tl18VT9XLrlR+G+wRmEV6M2gYZjEgniEo
	 PSrpfKT8UsCzZIEk13eAyq2FJqomEZw25Fi5kTRLLoO+s60WtcfKC7BcFbpVITRAvX
	 lLiF5Th+sbjvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C168E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615375362.2062.3553840139926680854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d6401af6b6ae17e8cfd8777968f7752d7401780ec515d75d9c73810e5cc2d23
Date: Mon, 06 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736153753
