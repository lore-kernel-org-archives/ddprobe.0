Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BDE4AEFA
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 07:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713771023; cv=none; b=fd2TRJqyY04YO0KlFMf69crtspHFbAnS3r5DA7ALRKZ+UJhhZ6jzfk4T1ic+6MFDmXxDMTkltHApPO6z8fDYNwXcOG5shDSgkIudGawGII6fey62+ZUQsbN7rEJ632MlfC3jJIurWHUrYc44CIAPIfwCEr43xbeIRtKnjD0Sv38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713771023; c=relaxed/simple;
	bh=MEsucN3LbsoQTsBU+9RyH8KzkDKADuoa4yAkIyJZqdY=;
	h=To:Subject:From:Message-Id:Date; b=VDT6onRzguoIs0t+lz6Dm10GgwmReRjI1r5H2fNXyH7//D3wRgeRdfwbfqKRUmw9w3dXWbrM4usM+HZ+ZTuKNtH8JgKUbmfJ6PfKK/NQYK0KLr4H19J5tdSKlyycKMieB8WPfM2AGt36I1ZhFgevs/db+XICNenmVobJankk7pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwgMUlip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwgMUlip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5628C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 07:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713771022;
	bh=MEsucN3LbsoQTsBU+9RyH8KzkDKADuoa4yAkIyJZqdY=;
	h=To:Subject:From:Date:From;
	b=LwgMUlip5VYbYz/CC298zOH6TulAb/bxdnh0/P3YCbpxZrC8AsB1O2cGVd2X5TuNu
	 adpbsAezuhQPK54UoB7QC4o4vfs7i6g938jRfSUCWDXc3taPREa98YoMmSZRD2BczC
	 P3K4Dbnk08N9wQhsXbSgdy5cNTTWqtHwicqpoDFAhDfg+kZlWdq0EzmQNzMeC+K1gp
	 Q6coDAP68sTjSm/AFFtN8kL/Gb3AEvuPAjKcK9EdheGq5Wz+lSmTn6Bo5lBzInUm/I
	 k6L+cXcRerCkQDSVpjlg73rvPaza9mEgQw86c/dRf4NBpcRLDAAwOJUdg+VvuLDe8x
	 ZJ5MtiLBJqL9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05A2C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 07:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171377102277.24659.4646049124177185818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5c08c1279b5a2cebe7a4bc21394eeba9ab9732effb92c07433a2d817191e1f
Date: Mon, 22 Apr 2024 07:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713771022
