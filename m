Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468443D68
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717821443; cv=none; b=n5dr0s79+dhtoTBQ+4pmLJnD93A3STP5ofFDlfv33E22LmbR5UKnPRnsFhap+wu4kDAGS5AlqM6oNJl5WVl0OlLg8HuLCEPXULhDnAYhTE9GUsF5hAICjjl1VO5iwftVjd4KaRVrnuiIe75orxY6GjLqg46RhBe6CiQdPWz324s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717821443; c=relaxed/simple;
	bh=SMPYGzoID2Az0r3pLn/xQSQ9vnf/TF60U5DUE5clNwA=;
	h=To:Subject:From:Message-Id:Date; b=EkjUDgG81DVJ5Ih85oT26/ljeBA+bHzvSortgb66FBAI5iiPNYxa37AvaIr0/dt0gyCesRhDh3PZ3WdfdTMqRXbzmricXGApUv7HApxpOaqeNXj27drgwc9yL9hzyMoMRGWRwhJXCOAMc8GKAjUDQs/0xEHxiB+FhLGEtcbXTPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xukl/p3i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xukl/p3i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E055AC32786
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717821442;
	bh=SMPYGzoID2Az0r3pLn/xQSQ9vnf/TF60U5DUE5clNwA=;
	h=To:Subject:From:Date:From;
	b=Xukl/p3iH1CcNyx2Gh5ZanF12mm4otFHFTaosrQ6/F6E0rzfjcYRvcdE72bYbPhJ/
	 fdo2F1qrDTDcz2Or5wa/JMBZeDNXdFW97keckX0s0X3WBclQGEXsyTfNrgaHU1Bbcy
	 FMWmJXMgLzhwJQ7BuJFPCYlxbKMtV8SsJYx8o1jVg5yXjBHAv9qkNYXTaVM1siKOpm
	 GzuPFcs3kS8T4l1gTjUkc34QfTW5zVww6kLb51n3c4Cd8AsBPQkIDJqT3iVoQXgfXp
	 eqMfTcoCOHcrKMRBeu5+csZlwuNMueVVMd3+cnmvOrmW9y1tt02GWtCsM+dKSgFvme
	 mT5fvZMNiEZUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FB7C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 04:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782144276.7157.16215088153831590315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150412370ac71b5b765f8bb03f282e4974abe58e5c4eacebbfd8c251e3659ae8
Date: Sat, 08 Jun 2024 04:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717821442
