Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC3428C869
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771862694; cv=none; b=DTFKRW4w7/sY5CNkX0PegSBRRoTP7V/3noEyN8xwOTJnAyyr1zCnN/qUHRhNie+ADpb5tJIBrQrNgW8KPutzGooMfPTdp1vn2zsX2YrvwgPXMkF2tpFhUk1id0zQUQLeXU7A/kYF4lRsar7pFt5/ZbynFPLz9CGUFYEP4tYdB+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771862694; c=relaxed/simple;
	bh=6UVnkuvZGVx8Xy1wes4l4tO02K7lwkd8NznVgqfq3Ss=;
	h=To:Subject:From:Message-Id:Date; b=necttuveDdvzUReIlTd8FH2udlbDjBdAOXvEXAtl+gjEr5PEmnUqUXzPhz6Q5aDBetlwr371Y1NGiD25BJA9nM/axlRrhx648iq6aVqn1G6TRUfyvLgUC3g5hVdbGNXu9BDM32HUxtad+fb3/c3XEU9f1Sfd9xChGetWXgqVcE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFZIMFPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFZIMFPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C046DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771862693;
	bh=6UVnkuvZGVx8Xy1wes4l4tO02K7lwkd8NznVgqfq3Ss=;
	h=To:Subject:From:Date:From;
	b=PFZIMFPns8vXsYVPMbYyZ5uF8VnD/1R+4Hr6I1IfIoB5xQjWlmiUb/e+Cjwj62cHa
	 Bagy6mUUjSlzJgDemYapRE9nRgyJ5KQX6Vdnx3zlgkDMx7oqS6yjOBcFWbiJI+e2bi
	 PJP7sg/aOrYJ1yMHY3KM4yUFAxPvUmGzTnSrwwGPvWFDys8rmTWIN0AWnpjnSpBSBE
	 LLFx8pdAIESUZwWXCp/6KM447QdJPni0CfI6ErBpu80Ca5ZFAlmrvJDRyjBRzGlHNF
	 UrGUc9NJLLyWuc5PUn4xQ3Wu7SY952QRHxanw4/xyZ5HVtUeQHmAHqCxDItAka/p6W
	 aj0TarClru0Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB236EC1102
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186269366.18497.13492757274350943613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3ef503d03e505d1b3125a98cf5abb21c4dac2b196379fe2ded18a55eb40609
Date: Mon, 23 Feb 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771862693
