Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1946321ABC1
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770105234; cv=none; b=MDn6ehng2cV3Cy/mrse2nViV+OMGaNKuXIwjtnoiEApxJqSrMW4lU4/onGiI5fw5LJlQ2ROQwt/5DmLqk29mSW0x4T9MXit/ZcmV7iVJzvZm8DufE9KAYTd44z0pvTHBKfBvcaWp/w6vF38HtWMRf65Cg5FVIY6h85FLIouBEug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770105234; c=relaxed/simple;
	bh=03nwmQQxYev4qfZrutKZmH7gg59EBDdrLMgOFs5HB1U=;
	h=To:Subject:From:Message-Id:Date; b=XDB7zyJmBxXkXGnKw4SuaxsJKPMQRk6sTiHXcXs/iPpXQAqL21EFH5664T+TdTSUeMV7qWvIWfraK9CWEixyVbxe4mmFvlzE4nRZNVTNxM9DZ+cHmyQEtMEpnVkEBJQGH92zwDRIpqeI+Td31HeRQqJIexxGGKZj3TJC9ANkZ60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQ7QClnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQ7QClnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BD8C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770105233;
	bh=03nwmQQxYev4qfZrutKZmH7gg59EBDdrLMgOFs5HB1U=;
	h=To:Subject:From:Date:From;
	b=VQ7QClnAiXiaFAtjzB/o67G7EZWWWKy+bVAizTsfkp8DytzOT7p18aQiAVFjZWrZl
	 7GGhH8YTt1lWJYN/PsDRvVi2HXPHb8QxBdlU88ebwO+mb5NfJq58xFoEZWubOwoP0e
	 2jrTZEXG1sfUUndCa29niQPsPzoeRgmAOtVapJzvNCL36gNate00qNbclB+YoY6E74
	 1B9wuWI5+xNOZaRwakNXTXzYDqEKkxccWp/RuIepNT7ySVoqxntQ0vj/ZPyaEvMrID
	 tyxEO+QweV4I11X0ixwGBWC42sv2VxxQWSy1OGLMm9Bs2n4R8syBamQClYkYQoVhoS
	 IqWP1zmTD+ljA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9413CE8305D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010523359.30589.8719091619070924146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b3c73b73e9b9ad6f9c7952548a44fe5e5382f9e5b1232fcfbb9f9b31d23ce9
Date: Tue, 03 Feb 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770105233
