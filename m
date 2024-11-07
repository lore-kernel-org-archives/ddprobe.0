Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B37B20B1E3
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730979354; cv=none; b=N6gpvQ+DzXSKOHWSyuTVGbfqh5KFOg7+pmY/W+JfgG3Zv0yCGnlrnkGSYaeOb/nQlY+jaOQSkUi2PKzxCRN8G3P7qP7zfv4H/vwqRb8e7uuBTQWc8qCmY7WwTnRcZzBFbS1Jp6RXQgpeAaekrgfuGmDS6Kxz0+TeaNl5/Tpvrac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730979354; c=relaxed/simple;
	bh=b7qsH83XSjwdpwqJpu1RteuQk2qbWrC5j+dwSw1xV4Q=;
	h=To:Subject:From:Message-Id:Date; b=Bro+Twsdl+NLHFEN/3eB2EdxYu1AMuFzZAL+f6+S9IeneLgRCZnWx2P3pLYTVob6uIF7agCklbXpXBYxS69ESi8kEok/U7MCtlaY6iAt8pyv3cFvVEBrFyV+bPpeEPfRYWh4CaaFnR76f1vCjLLg6uHt3Rr8OC2zvRYH3G4gfMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHJmriRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHJmriRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B409EC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730979353;
	bh=b7qsH83XSjwdpwqJpu1RteuQk2qbWrC5j+dwSw1xV4Q=;
	h=To:Subject:From:Date:From;
	b=aHJmriRsKOykvxsmfkupP8CxdSLd0XhcpYHxBiDj3TeHI6Z42IAaoWC31/Ldnu5XK
	 hzQlwKE0TsdIwVJe3PBnpWVk/02wPaUx1RDGTjabIqTTFPzPipk9ccinF/8YTiH5Ww
	 7vP7cdbh8I8COD2t/2ELKZCkHFunNeJTYkBgMlMxA2UQ7+8dpelBSCQbV1jrHy6xgr
	 Wg2I/YOrA1TAvneusKH5dr8FW4UGAfTDs8hNv9sLVEwPhFXmc2NfFsZgX8BEaIqilM
	 MKrPzRQcrJ2kWKGtqhmriThOn2T1cH5R9lURCz/MSoCrCl/JlNcD++tabyleFUBQY7
	 3woswinEZvsSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0EDDD4334D
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173097935364.9573.1045353124850538585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e04018c28616c7096ebb374a72ef6a4c11aba785967702ee9b9d9c745284e567
Date: Thu, 07 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730979353
