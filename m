Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D1C2AD32
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746167994; cv=none; b=ggz/urPJ+mEjx1H8jZt1W7ecVacW8fQ9DLNUATjMljfnMWixyAHxmATjbGKg9XF3x3phjueJGrd3Sw8z8SxLgfwb4C9gavY1STszzLG9waszGXDQRiMNQNOEKdN+sJnbWg616abbN7O79pxJt7yHtkyT99Rmebzi4rX6NF4IBBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746167994; c=relaxed/simple;
	bh=yrtV45eCOml5OeRszz0rlcMzkPZW8hwV4hmGvpAQlcs=;
	h=To:Subject:From:Message-Id:Date; b=e45Ys/R043ojicCPq9d2Lutc5DuudceKrzaYq4xPXt0xDbP+DRVmqoXfyVup+es66qnutvTXyHSWIdhn0CGloynlESYSou7lW7dNiZUax2iOziq3Jot0HHXhIm26FOW8nAunXfxHKHZttnmvNXYm3JVIENPtRu1RjhNVwBp2j0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeKELZuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeKELZuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2CECC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746167994;
	bh=yrtV45eCOml5OeRszz0rlcMzkPZW8hwV4hmGvpAQlcs=;
	h=To:Subject:From:Date:From;
	b=VeKELZuPOI2lCdK1xxPqGwBB1dVNfw9yRYPhAxgNvz+jwGrDb+VLc2KxJOARwuZ0G
	 AFenAC/k2idphMeshAefxIxVjEosnB5beXscIqsVlYC/F0XLoQPpWVWqXTZKPajCd1
	 ZUIPSMorDGYuD2Pq3RLCltihIPnkp/0nPoHXdCXuDrTYPe3tNL6+RKyq3JuLkbVaN9
	 k4sTgUbF+G1CQf4uwoi91NkNDcBiJRpRHrET1M/o5Mu72JfDHU/6MqtuV0jqbvGgKs
	 MBmpvl8GcMytZaRZe4Qu+Sn4x7RTpQxGjx9wLigdzA8Y0suStpJmvknfraPU0SccvM
	 ex7MR1Jfu0BaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128CC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616799357.1334.1265666155794223379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ef7517f39e856bb8d62ad8d50d8872c7999667d9ad45d74443703de15d391d
Date: Fri, 02 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746167993
