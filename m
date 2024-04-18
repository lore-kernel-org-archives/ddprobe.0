Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B899199E92
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713475763; cv=none; b=TBlcVEcl8exYF2zuZQDqcM5nT6bxaP2o1pTbDRnXqyGvSUW5d8WEaBlvKzLl4fhBmakM5iaFZB3fukS9drAL/QZqv3PfJ5IcukpFHT8wX4eJlKKuI3UBsTI/3oaG10vzcK75sZq1Tnaf74AosivEzZpBo9ueo/UkJi/W5lgtI9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713475763; c=relaxed/simple;
	bh=OhDQLO8B+bQC6X09Xhx6PWGXcixxMExgxSq0Kma+y8k=;
	h=To:Subject:From:Message-Id:Date; b=o5anMuDZ3o3dk6X19EGosJ/gbed1hHbnoLjYVwGGdSHnPw7SaiG0zchBBtliKvvOpTQX3fRp0SdkpMDr58EhD67AgVKwAPSUhp277ACphERK93EDdOy/3E4LIoOignHwd9KOGejrCi2YDQ/SNqc9G7hfOnkKjHlNZ7PM0Apq198=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=an+l96Nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="an+l96Nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDECFC2BD11
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713475762;
	bh=OhDQLO8B+bQC6X09Xhx6PWGXcixxMExgxSq0Kma+y8k=;
	h=To:Subject:From:Date:From;
	b=an+l96Nq9mOHEyufQ8Nr549fsziH/KVfapEY45L6pKPwJ13mdzXQnQ4hz66mW9JdU
	 g9cLh3wRbwjWJSdl2uwcTLhMxKnFPtM57RRBIbPbfkKPExiSW64+SlOAlK63Hu8nzH
	 2/07lAaFUvJA8TFHCt4/l3ygxcpeyPDe0kyZEMzDozb3elhOolpL8ZMSsExAhu+w0l
	 rz+GXKLh8wru5VgV2u8jmbmUSsaGax3RUZ2lymGMJapkOJ10CPWIx2hpplwnVsTFtx
	 ZA5j1GbNx9THdb4tljjn4vJWOzFuirh5S6ps9/0dXqgv/RD2bU4slSL5x0n4RMqST1
	 mxu3Y/kZVo4TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC296C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 21:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171347576279.1144.13744549354666578915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b399f6c631c6661d0b3ac79cf05d3bdcbf5325d28bc1d1ea8fcd372fa71d9cec
Date: Thu, 18 Apr 2024 21:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713475762
