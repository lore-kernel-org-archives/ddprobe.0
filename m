Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4353B1547C9
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750010394; cv=none; b=Af6+s1DOLy7UDYSv9PHux74P+uI5pXIzbd7TtDB0uit1c2LNq659fP9cOWwZPk92M9RNsod9LeTb832ejYTcLLn8P801omWXBJkl9kFSesSiyZ/10RaWQqGmJGsQ8EgRnYgOqHK5TmfNnDnK6sY8a0SQu7QcoPJd8yw8nXAa4h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750010394; c=relaxed/simple;
	bh=opHMbegUlVTyZ/a7FALuUYWwWfYiDB7+DqczStAC6bA=;
	h=To:Subject:From:Message-Id:Date; b=QUQDkCkAxKxIpHKgQBIetRhZfHF4yrH5300DrPRdm1ajx1Amu/eakwPx/EoFIKP2vHV0nmYTjFWLL6ZnBFoPXQcKz43sW/gylqBE+SE4FFmNMJsOxLJ6riz65GxjvvXkMhKvFHvPzkq0gmmGdNCRmg5oXac6hhIDejsIPJWOVEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRDrwY5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRDrwY5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B2EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750010393;
	bh=opHMbegUlVTyZ/a7FALuUYWwWfYiDB7+DqczStAC6bA=;
	h=To:Subject:From:Date:From;
	b=VRDrwY5xm6p/V+UMniIN5oMYitU5jLeahOO8OTy6f82nx5q9ujBE4/5X0plIKuf+v
	 znmVlNaUqqdsnnuuSircNdx2wlylavmxHSrZd2m/V92+WK9LryMp2uSFAMwZ5hI+m9
	 6yd3jrYpOA+9AK9TKBS9/clZ6lZSXM5W6q2a0RVrtKwszvo4eJZZQcn4tFqXnjWnzd
	 +SpXqZ8ZhklaStFWF0WmgnsvfYV6Lur+zSE8L1DQBGaHGy21Yp9wr2nlSUCZaIgfYg
	 Hkl0eYH0KsOYX93W+tCyjWA42WHdrhwB9gVv3is08TNUYDpIvThfaGU67G7w0lDgf4
	 WW/KYl3/rHGkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED92C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001039362.15616.6192310263411446607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec8621e704b36f869276739d41cd458541ece8e677d56229d6a5794157f826f4
Date: Sun, 15 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750010393
