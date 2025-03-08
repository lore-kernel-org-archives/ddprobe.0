Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EED61758B
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741405134; cv=none; b=Zj7FPHcKlrqqekSQ9iZur7HK7T0Q0JtN4YhNfKaJrl4+slCk5XkV6v1Rnpc4YEc17EmDG/1H1AI+XqlYtYARCbIbhdWrh1UT3K6nKGNKNtBarzJJcqVoHTvHhR5hbsiAINSF1PSXVTECpr0Pjp8IZYxTQ6ZD6RIvRdulmSK+dQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741405134; c=relaxed/simple;
	bh=vQ4axNLfLieNmunbRiJ+skOaokWRIcW23ZTsEVXLaJI=;
	h=To:Subject:From:Message-Id:Date; b=lUvrdd2bsS87EpXVQlwDYnzDjKgb+Pz7qT8FzKsufsITAMAWctUESg/ik0KbzsKk72McKul0MlGPnqHi4AvA+000j97lHsS6IuWpZfnCBm9TddiRPg2IwsNtHhVIVmfkIPzB2/mBIiLDe2spudGOmtOwECWQQyU/O47dEa5GwZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWVh8weV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWVh8weV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE0C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741405133;
	bh=vQ4axNLfLieNmunbRiJ+skOaokWRIcW23ZTsEVXLaJI=;
	h=To:Subject:From:Date:From;
	b=rWVh8weV3oymPsLZ0nr0KNC9xZVxZQ2hYt18PQXENpHL9PwvMdjv8sFLJqhAC41bU
	 4OlJ3CNsuQC7v9BCy0Mm7AjIghcwnh2MXyrdQLKnZ86L6ez3st9+Ni08SdNx2cdv0V
	 9jDV9S6yYgfeJ0aCExRFQ5sUmDjhpF1G9CBSgsk+dk9Q552ATcQ6iKTERPejpajwDc
	 RLT3YtwIrUJh7vdoAo8VIR66w2e3zB6Wv4E59GHsLVrJLB55Aid6GKPAQsqCKc36XZ
	 o64fQ0XYplQOpaBhMX/XhpS3/8agtOkEJliU4yO5A6fjlye9zIqGL8EDAe+CWsfzmA
	 7qS2lxh3MdkSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F939C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 03:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174140513357.26871.11284163952223960016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e94cb8fa9dcc9b9c267bdc61ada6bb03dfc8e77067cadfd26db8a869546484
Date: Sat, 08 Mar 2025 03:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741405133
