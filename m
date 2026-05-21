Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408393B893A
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779361234; cv=none; b=Z1w+oWvH/zciu5AT61nfXoAH+WkZIVM6CfkNAl5YOBXwpnXFx8KaYAkpmZq47KtR7P0AUAPAItoNiSkAS8e78Y0wpOZFkdEBt5sLW70K28HG/S+ENsb2xeBbfOHROG+Sqe5mddRfGAhHRGiss5162MbZ6cHF6YXTChRMKv53YWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779361234; c=relaxed/simple;
	bh=9a6Iyms/eZT2fFwcTTuxtnqK2ZL80MV0jkwjpYlMJdQ=;
	h=To:Subject:From:Message-Id:Date; b=cJd1gdiKJ91JyTECfKG49/mvz/7aE2+6KpUAnVVpfsm91a4x6OoRSVnUggh+iOATvHwwnZV7iCJBxSPigiYlpATqXPbJWjfXyIENfen8igP4Vi8tZxyuGH/EhamUvCr4GrLqsQ0pTCK/LBJruMZjHChkq/9K6Q6Y5TboP0BYjsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UG6a16Ch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UG6a16Ch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA7DBC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779361233;
	bh=9a6Iyms/eZT2fFwcTTuxtnqK2ZL80MV0jkwjpYlMJdQ=;
	h=To:Subject:From:Date:From;
	b=UG6a16ChVrYArOa8zIZBepjd7qP343LQO2xK9wKR0NRfyF1rAISAVsycbYzUbMXl1
	 emA3UgwXsdBBPbwsZHm68z+/sqJ25Py+RKWsbOH45A0UDqluwo/3jyceKz+JDy5TK3
	 Uftq1tublmsY0fPbKCIwnNYvLNQGmMUAlI2ZhslIjWNt3Y1p4E1DHMbL8cypUX1LXU
	 jfD3ZZu63HALjvK4Mti3/F1LJXpEW9agOi6FYdR/W8hEtcgE5meVoeggm7LC70fbhN
	 M91R10ZOxuIaFE+GqRNeANzn8WB0+t32Nk1H5TwPB7PttaU11N+2ga2SGazCPr9pwt
	 SZOcvDmoG9qAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1793CD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936123369.1683.18017068300852743579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 392573e008a29a07c7ae9048c5ad2a89c61329905f451e50a91e4e7c61c1f635
Date: Thu, 21 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779361233
