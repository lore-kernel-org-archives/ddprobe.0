Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554CA2E7396
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788051634; cv=none; b=nLkk7NtNslNkZXXq9PJ8ZDsvwB+VMFxfmH93m0W55aNYoS4qtq1PcbQ0txbzwmQI2D+PGdqLxK+QPVx8UhhXRNvhAqy0UWvepF6sncfUQzyWA/uFwgJRDMjo1GE9gGYkbJHU5x48UxHzVCQXjzYhbkKhkLqB535aIq4bQi2+EkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788051634; c=relaxed/simple;
	bh=Gx2yIgNvSAqApRUE017b2NRf0IVCbccu3cYylaVf6s4=;
	h=To:Subject:From:Message-Id:Date; b=fd02TBgssaOi0aXvQEGEB0DzK+5zqZKAxCpRTfG8Z24AopFkG1dxge0102H6knzCyEVMVcrRVzVj9kxRy0LckstNC1TXrKPNY+9ChTdkhbUi4/Pr+xA5zdGEfRetAC6EdSXZfsONA/5lMigw3XhbKWza7sxxpXvu54xlOqRFiRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XahqXZy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XahqXZy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D529FC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788051633;
	bh=Gx2yIgNvSAqApRUE017b2NRf0IVCbccu3cYylaVf6s4=;
	h=To:Subject:From:Date:From;
	b=XahqXZy6z14M86ks2RXZZEvwUzvXKkx3RxN5C08p1pY/M0LZiPsS7ymJ2VfgQPs3W
	 myD0snHBZlbF3StCzaTHagfr9OkbjWodNSau6WDkxS05b5tJYnT4Tj92rovHB0BjD2
	 MElybWviYIQcdreMB7mvOaGI14EN4qZ8Nou70nvhng9PxW8eNexDB8wwXvKrf32K8V
	 tweQvlbIqqFUA9EmRIyW4/SUhLIFTst5YSBohEVrseakT7b4NoDvvZYp3v+gYo8DY1
	 l4cNq9JV/RjaZdI2k2QVsNV81c9Y9A/KTS1jkeNdCOVagirUJFrlzbuPbiSDonOQbX
	 bb3u652IUX6Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFA4C61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805163368.26305.2320301517187965458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9934861435912b98ac71e5dbbb75fbee62a3e39339401ffcf8a82e0faa8adf
Date: Sun, 30 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788051633
