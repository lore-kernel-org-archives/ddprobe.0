Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 589774AEF6
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715369543; cv=none; b=QDcXZbsGJgMLq3PH1klboK80gF4gXU0q9AyVf7KhxkSN2AA6s6Iru8cNngZRed6QjgZg0DjC+BeLSV1OiWZotzM4ziHhtvy5k/sw7kfCeJZ7UqOG3EUtI2eOcjgJYD/EtJieSrO+3VGDP7ZEF62gHV+OAiUZKFo7kC6041Ck0kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715369543; c=relaxed/simple;
	bh=ymvW3CBq1tgyNv+e61gPtlVC0WInEdtVJDfzBA7zSCE=;
	h=To:Subject:From:Message-Id:Date; b=kCIB6qLpgyBUJKY/6hwScMdmFWU4vlEzKTr64ETzT0p7ZfwoYyLmnYIgK+BBzPeh3/tkfd9BW0uWeRB/vKm7x/9TQnCPxV2k8C9gYG4i/wpHLkrFvKMhKKp1z6PQWeAc4ic+pzqkqaYEfFOQgJCwGpz58/Cn07Bt8HVOHKELhQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTm7FqIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTm7FqIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77E0C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715369542;
	bh=ymvW3CBq1tgyNv+e61gPtlVC0WInEdtVJDfzBA7zSCE=;
	h=To:Subject:From:Date:From;
	b=PTm7FqIsuddcnmV6hvIjHZAXpoH7oJrYgJvj9/vc4ERmibkB9cO/iaY/rNIR0ZPzG
	 rGO7dJ2v6U4JE/UC6eb9z5j/AQ5CvQ6DVFH9/t2Xx03sWuyBQkaTWk4SVMnuv+2BpK
	 vFXu3CZFZjWmf7IGZEzS+vyG0ms3nyVwEp2IHRFJepEqO7+9Q6DHze/IKcnmuWsV0K
	 uZIpTkLGpGaJU6JHSfjJFuVKZ9vkhfblrhD6ce5KOm6zcq6hhaPbsCm58mJgII5SU0
	 ACenIjVt7ZxZwSHKI9VURaWx9FhDC/FiTWSDeWdLy3GENBpRZ/NrQR3YTHd75VCuwU
	 3JQNx1+vP3TWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40E9C25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536954279.486.16594088689046982163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b488de16ef97799731edcc8dffeb3383920900cd629e1a651c709498b4472fd
Date: Fri, 10 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715369542
