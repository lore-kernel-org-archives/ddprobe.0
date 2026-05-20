Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305E730EF64
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779252034; cv=none; b=o/hAV79+cPmw4+HDk3dZCzPjkIG8FtQEGerbS6ijyaqZvwJWgtvacY+o7cI1jFUDBemV+aLSJ4qyNe0mHXs6Mv4QNY33jg9uuj1uhIinYoI5hF4pfokARiGkz54x9FQa5MIKYVyAdyO4iSoLokLPJcF3O1WZ022c0pvmCT0l48Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779252034; c=relaxed/simple;
	bh=AbROovGilOe970AFBTRAivCXaEv56U7qGSnsW/vID6g=;
	h=To:Subject:From:Message-Id:Date; b=CaB1nMjjK99rqadGruuw/MAGfsAj6yKaba+C/5xZxSu8Og+JhvVVQpUS04o2b3/WNQruvySDRWrLFrrbsn7GLNfZ4dHPDTHfm6bYAb4VbXesd9t+fEJSc3kH4urH82SNYjXVmkq3Wt2VqtU9keySt8ttGOThROSdV6wL7ZDsXw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCwqsZ9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCwqsZ9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C92D2C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779252033;
	bh=AbROovGilOe970AFBTRAivCXaEv56U7qGSnsW/vID6g=;
	h=To:Subject:From:Date:From;
	b=BCwqsZ9sguK49Z9ejJOMg5bMjR1vCHje6vjdN0Sxy7vYoDxZFvO5ocJL5wMWOtQj/
	 1pha+ebkDbvozUw+d0OJLG/zGl9Lg+sO3TmoMH004+ciuzRv8SfF0tamhwsMiSYbLb
	 nptWbwRtWqVCc9Ey75xYcCxBD273AeomYJ5An6jgNFpUFFl7fFA1oR/KrLagNpj/9p
	 kRTplgZCJ91IH0Pqkr1Rg+818qdYaLTvs7MyYBclbVDq2Mps3Z/glZ+OZLwb6n7ClZ
	 OmqED9Fu06+yu/Vny8zMAHktTDLHx+SSuuvQqrFkezulI5chz/iT1cUE4VnGy0Xz88
	 NSDDct3/1z9kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD736CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925203369.11991.3607955037906677365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131808381aa157de5896d0d727fe47780de75c4a59916c4e26899240d17c1109
Date: Wed, 20 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779252033
