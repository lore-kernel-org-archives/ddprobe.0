Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEEA219FC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749523194; cv=none; b=qo6HfIyXpRahVzHYJ4XGQtbQWyR1c83uqFZG2a6NV8w9kr+02SK0St+MRgut2E6EdkFIw1xRuSKiicVqS8Vz73oWRuPH9uhpEZn/HeROosUmL6sJyl2KenS/dnLHrBIKm/ltyUn36RiWDhLqg0HNvCSi61vJ/E7SUA/1Lwj7bE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749523194; c=relaxed/simple;
	bh=3DTE0SjruYtxEcl+sM3Z9oP4UsSDNhMre6ni68iv5sk=;
	h=To:Subject:From:Message-Id:Date; b=baO2oeWZCwOuC6qI/f8pKKKzikJq6Vk51ySiGmkXntSWhr4quyx3d1TaelFcMexeFE0W2FGuPK+750JZnVh5YNPUzPMERY4EfrOzh6/Zo0rixsyszDFM4bG55tzzj3/rp2NsnpaTO6nD9DxdEZmp/0p5iXN+i/rQlwJF2CHFm0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA6z+o8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA6z+o8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2377C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749523193;
	bh=3DTE0SjruYtxEcl+sM3Z9oP4UsSDNhMre6ni68iv5sk=;
	h=To:Subject:From:Date:From;
	b=FA6z+o8R1bOtC2dP4RzaaC7SupjZeLmaFZbMO/DcgJz/G57A4L/duY8oEAdF3ncvR
	 dnlZQYDhLL4hNPkC54UTkoFd6lQoG5gw1jA3IYbGrKOY0Juumjpn5I2D7BIx1a4Zkv
	 mdYlLCAOWn1wDOSOAKQ6aq6uPS4E11e+xuQkETP8n1UqwtUu7ldqQ8V8KqHGKJPIzO
	 74ffC1UiwlE5UE8zsoPWEAyVAL00Nj+g37H6q/kyt5G0LbQANEpmyPtOYsKwqwsv17
	 RncprJvmm0dAWOYu/2G6onGm4+aCj1XRBKHhTucwGdSt+hzVxiE1cUABON4JKIbHiM
	 SrzBopkdatrXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A9C678DA
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952319358.7562.6471326292014170257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7c4ce2882edc5c053838eaf22b7407b760c584d1a509a7186de5967bb5310a
Date: Tue, 10 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749523193
