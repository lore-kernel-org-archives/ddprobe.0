Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0E243ABC
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751155194; cv=none; b=QEXnwO69D9RGsXQ1EVVS6ouH+tn1IEDWs8kROxgm5msWV7EX9vLxtwBo48KG1zIgquXfWNIiX0oltpShxPsAfHlySQlflEGYnU+7a3xQkZoL7wsqMtwwLTa0a0S4HBVxnmmphO2F4Qi/Rm7aTLm2Zn8AQyEtcJvRQE+OkHQ+jjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751155194; c=relaxed/simple;
	bh=kmTIB+Mt3uo1+qQ1kLuahMNXa8a5okfo/qypyswiBes=;
	h=To:Subject:From:Message-Id:Date; b=WqDLTCsHVTMM+iQp0NZcWNVrdJpkVH/foJ1spQZUyHaeS9EgzvFkFz6A4kukX0uzQKMXKKQdnkPDEUswUk2/u4yK8U18e9GBWJoHY7ouiEB0d1ELxc4TqDQnIP8MD8GJdqgfW3bBdYEFEUxcO/OViLA1Oc02sxRpVLtWFXJhc2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFlIgdVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFlIgdVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D11C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751155193;
	bh=kmTIB+Mt3uo1+qQ1kLuahMNXa8a5okfo/qypyswiBes=;
	h=To:Subject:From:Date:From;
	b=BFlIgdVu7+miOuBmM0fJp4GgW8DesrhXx3Q4QE4V4BTMIiPnVw5VVO9LFy6fZyice
	 EFbH3kJGsvK6JkhSl06uVIXQ6J06mg2caKbexMugHspE5qA/0kedpiBDTXGlHeFCY5
	 tRncJlmZ0nD98ixZ3NbpQINzajWs1rDpbskA2swOC1Qr6k/xh0B49v4rEc9sZYCwck
	 j2TeDJFZTKl9eqyjgWOb/JkmczTVMYPxFT2eOawapQ7Jxc72tNrhTcTIubORdQjtEN
	 R22ObzJCG5AQ5IX8X9jTF2WOZKs1U7+FBC03pV97MMBrDEPSOlL9IaBvr9uxeHED0y
	 cqURl77sI2soQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DDC83013
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115519357.25269.9164229472947166402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9281cdb07b79b193325e21b34e0b40d235e8508d175519f9fb74bb540026de9b
Date: Sat, 28 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751155193
