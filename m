Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4214046BF
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 01:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721178923; cv=none; b=jIYmBPCqq/1rpmZMAIT9D1ivOr9MoeHabg397dJqabKVVypkXFocB0eTxHLpja5MLg6JgShYvORjo4SlTmt60hgTv0HVYM8RaeMZz1Y6eVnt0TRIzUn1sWILP1sslqo9dJhhNvemd20XEfe3eIcfPe01uqXHwUMLbimBu2SMRpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721178923; c=relaxed/simple;
	bh=dR4ArcUADmVpCj9Ebhsa0Tk7voqO/5/+dQaeTdmsVp0=;
	h=To:Subject:From:Message-Id:Date; b=HAEW3HKC/gpIDek6c4R/k2xD18sIsakLhgGdtgrrCrAiq8q7wXM2ubAoMaTptYwWlDLX1l5C7jaUeB3mSsHe0mkI4tzCy2k8yqF7z5uD1CB8dygCqD4iOnYc0AAM87SBFlWwUf6pXoYCT1BM24kZ5/3kXwreJZyEGlWiXcqAzI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAX352TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAX352TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC245C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 01:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721178922;
	bh=dR4ArcUADmVpCj9Ebhsa0Tk7voqO/5/+dQaeTdmsVp0=;
	h=To:Subject:From:Date:From;
	b=PAX352TZRRBTHmjPth4RVCRmD9RsmPO25i7BS3pe7dfrtKUtonAxZMOcKovpj0Yvk
	 I8cLoBrjjJ9cTNdmtzbyzoDOvtt6bXmleNJmOHFhe/RAhiLhDTKeAHHVNxhx8e5tQ1
	 oe6IbX4J9D5v/8xu8UU9Sqkh9uOKwWrtwPPI75+zDLSwwtnTK/7cF6g3OKzwpvgfuB
	 7tm1W2WN/ZceolyRunk9eltUXorkYu1H1xR1o/BCruXvZu/Q4MQFLdT61Mm608JiKd
	 dxc9C3FQG7ryV3eqd43pXpV77GWJrSs3NxgdhwDDmvLABd7Vr5odUyslO4lAv+u70N
	 oJHU27xJYZJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF0EC3DA49
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 01:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172117892276.28395.3283386031182630808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06073feedade4f636a5e2512832c374916da44f7c9a5703ade936060e666ff18
Date: Wed, 17 Jul 2024 01:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721178922
