Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EBE2D056
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710756497; cv=none; b=MucKSDZZVH57eTlgrX7WPu6wNsuAvsFXQQXgYQPJ6GYtazQnWGX/B0zFpMCsYAF5K4MTomX/thzRwyUMXbA/NU1z6hsEEdTIN5vsUruMSTsQni9xglk4iba12bpjR38jAradLu/JJFNcqpbGQDLekj3Wp7cPrloYVJKWlwfrJ74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710756497; c=relaxed/simple;
	bh=8GRDRX0T98iLT7ihW/0U2lmr0bfUxtgUkDYz/5oBy8E=;
	h=To:Subject:From:Message-Id:Date; b=agVReDWZUmW0mKfv9EQZw2kHkuwTrNupfy0J5PN0meQTVAQbNmfuiISW0jxDAaCbM7G42caB4OeDMhCaeEueE3bt+IZ8nz62gRaUvbxRJkB38X+r/f/73b7bzpDXOHKJYnkqIHnEdym+KdhrPpDLOr9ET4Mp7jyzI3eSpB+4cg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzuG7Gzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzuG7Gzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E20C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710756496;
	bh=8GRDRX0T98iLT7ihW/0U2lmr0bfUxtgUkDYz/5oBy8E=;
	h=To:Subject:From:Date:From;
	b=KzuG7GzmbHHp+k0dx5vCs9j2MMorSZtUrVn5yJvAKNYvQjKzbHzIsVz0mY8aFHfzy
	 ukmftHY1KqSdO4ERdAdN9bjppifn3eymnSD6lI4nDX7YIl8eYn072kHcp61zP/9gea
	 FiWUC/BSvviX0RjqozriOW597AX4tAeMLZArhdVX+LPquOtBJI6R7tFc5eQbWw7CgQ
	 L4w2TuLHHXqWZDEwg/K/hsqoQiYxgFZgpwPP/kg1j876gPhgeVyyXSFDnDkRrsxi0R
	 ByScQUK4v3ZBUyxJ9b7Rv48MgCHkh3k8KfH+sHacb8dwHRifpRpcqU76x0Ofg2r+CF
	 uZ+XnLh2Rzbuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A28CC54E58
	for <ddprobe@lists.linux.dev>; Mon, 18 Mar 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171075649642.25619.6116045151584173349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 699e006c5ddd43a62055cff086c63cb7ceed281dbf8d0f30e5bccfc6c49d9162
Date: Mon, 18 Mar 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710756496
