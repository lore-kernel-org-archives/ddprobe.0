Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09101C11
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705535297; cv=none; b=AMgafqNb/13goG2plofhpjYH3TESOIEWBgUkkTCD2KBBpbowVTVG9/tnQu/76gmvcsevCDMg7qn8I7Q/CXstKl0cKMyjd1ameyxvYFdYbE5KbBCFbZTxJF7pGJuzcnisipApqpPk1kTpNctkMqVh4W+Wg+OZC4IbKGXtkbFMjCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705535297; c=relaxed/simple;
	bh=pFJFx5gc4v9T2yR9ddOZKyOTqqF7k/33p33YEilslOk=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=LJaQs6VrGU9xhXm4oqEhE74h4SQ/jeyo+Kyfa1eslIjGGuCONCHQkMPYiIOxOA5ooQlxPdkQfdHIWlrsQxIUlK8SwKSeeiq7d8cDIbxPTvfYbOyUIzIA6BqyiogAuKKfAfAwg7PIKSaku1GnVvi22ZLUoMSErLCOUBF32Ye4moU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjoBWoCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjoBWoCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 760B8C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705535296;
	bh=pFJFx5gc4v9T2yR9ddOZKyOTqqF7k/33p33YEilslOk=;
	h=To:Subject:From:Date:From;
	b=ZjoBWoCeVCs04EpG9X/LiTeBuJIKCRHd25SOdZaTl0MilWoIxYChh5s7x/iCWQJl9
	 PTtlGUj73oIvclFdp3BNWB5fjLtK0Y636U664B5IdNaFNks/2yUejTZhyf2fhimtdL
	 Y48jkcMyAeChrffGFJCSQNRSg5LMMf7Z2n9EGyxaQctvtwcPZryrMmjPzH+QLMVQDL
	 IzwJSO7rLR8oqMnrE1BsNz4FIF4ZKr1IUHfk88HKK+l4IpbUMJBuqRnMaObzdfSN/G
	 HypfgKzJvnInIHd0N2B7cNWq2m9FRzgfsnQgbvEjm/bGbfw5tjLak7/y09pksuiomn
	 nm7XhGCuW6XZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3FAC4725D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553529637.18873.1521376949828431452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92230c51684144f157c2f481decf89c020b21244ad08912307175b6e657a4c6
Date: Wed, 17 Jan 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705535296
