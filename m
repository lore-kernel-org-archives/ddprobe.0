Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28151330324
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775553334; cv=none; b=m/J1v0zmlRvMFsQGG6v0olP9sCha7P0z/GDE5dNq1QfaDRFz8EfEypT+oydTEWSHwT4qDjcviJq8KGASTlEAY+APC3Sz+3xOuQI7wmj78skW8EBXJxKT9/X4YoTk2ejRX6PbHGfW3fe0CUjZPXwCKIbksXQXSaJsZ1w0G4NQCu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775553334; c=relaxed/simple;
	bh=4jwa4JkU1A27vVRnGt/KKziwEIyp20O03MssRTuHIAc=;
	h=To:Subject:From:Message-Id:Date; b=DuKUpWqgotG4LhZq0w5zktB5+DxvgPamFWDoLJEK62siBIfGuW7q9rStIZeq8Yt/R7LTA3ZYe+vYu9g2uUss5PXJhO/ZGxoZv+9eynvV3px0rCYXVIl70wUFdmZwIEoQFgwK4UbN9k3+XbyzKvqcB6UiTsxvzw2qjW+4YI6mzko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YteXz13f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YteXz13f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4E6C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775553333;
	bh=4jwa4JkU1A27vVRnGt/KKziwEIyp20O03MssRTuHIAc=;
	h=To:Subject:From:Date:From;
	b=YteXz13fU0ldBUxaMqSifEzR02lRr1KsH0M5TvEdx8HBMwE+UQGqrHN4S2T2EtJw8
	 QdodyJCRch7Wc9r5oHJ8arR4bnhQigwddRRRVA0vPBbPQeyesWr7NHr3BrV3KoCLbF
	 fziD/wyvzkv74nHKQ+8lRAhbda6OF/5xo3PCb+BRJ2vutcU0HhF+4WHu6dlUB+7dzj
	 W3t/EobX76rzcUG8Uc2SuaW0gC2I7wPBH+Eu3DbwP0VukFxxzLJmJ+knwP9p8GLIaF
	 zcGO7NaTdd/oGdzDZsofWquJuu5eH9YTLvIjFyTIaeAka3lfCj/z6m2N77lhTNolzr
	 bqiuMmS/OkHPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAB1EDB7D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177555333369.15785.17363913273592765396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f2d75a69ae6919a0e3e24f2c10f8c3764bebe1f472e0a875127d3c223b41b1
Date: Tue, 07 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775553333
