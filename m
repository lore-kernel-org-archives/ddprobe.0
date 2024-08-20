Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BE218B1A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724161554; cv=none; b=giU6DqYdGA7L+S9ccPPLS1bAURuV4/c6cVerkTKH3lwLEskvPRjhGLxaxTNWbPq1HDhM2LCTgSYYbZofe+yfhTZPkadckAogBkyRtMajQvfR76QEfjoMTHcKsFZe+XFCqKLx4Ih5YoDPNiIz82XVY17WqwtA7d/tM9Mg4Zh5TZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724161554; c=relaxed/simple;
	bh=h/Gs4LIVZoeaMkd97pNYubSU9kl7xCoKRB7cKKWEJHw=;
	h=To:Subject:From:Message-Id:Date; b=IWqz7+fjt6jRnnQkYmshka2JpyCKAwrOdjAzdcrPVOFjxbXZyiMqXJIvGsWp11iKU6eI2SCSmx9IA7nYPI46AM608tGDwW4hLxKhRompg5Z4vYO5iyBC5OR1FNZLeyQ57t7JbrJFNHVymu8cPZ1dInludYJ080WEbJoQZXzCdPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYyWR4m7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYyWR4m7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB741C4AF10
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724161553;
	bh=h/Gs4LIVZoeaMkd97pNYubSU9kl7xCoKRB7cKKWEJHw=;
	h=To:Subject:From:Date:From;
	b=HYyWR4m7T3W/lsSfi1YZ835n5wUBvjXci8f+o6wqtb/4oHjSZDzRy1qFs+8jBt0xE
	 G3LgBqy3hPvPaIBwFuDrDk6KXfWYaHkFeN8vUsp+gkYqNUce7enlCFMEJNq+nOTesd
	 XlikqPVAHpAaHsc8OOat3LSdmj13MfHxCTAcloSnfhMau/b6cMn2Y7lzd2zUU/TayL
	 t4FqeZ8GhnODE7qJTxqFyOEEcq2wWmD9TyRJ0oW4JhENewUzBiRk8hTtvyGB7STWZG
	 v+J0uybIWKEtLYogr3r/aPF+0hiiipRzZ0ihrC+AYC8iTM9fE+x6UmUa4xKz+CZLTZ
	 ysLcY78gGRHlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A495EC531DC
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172416155366.16991.7056407045704613730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1af4a96695055cfe10c4c943da0982beb66bd4f173a3f6f3645516684f9363f
Date: Tue, 20 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724161553
