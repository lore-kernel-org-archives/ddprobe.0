Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5051F8F5E
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741270735; cv=none; b=PPtruPFqMWjm70PJt4IF82HdlxOAXGWp7xIyfHnZ9bpO8MU5l+Yi/X0lnHRrXdW0PZSdv8B2iUVhnXg6ufPhfL0euEF5Jtxgz9VWbWs1viHJe8MvtbhvmdXHDjIOi627qFQzGf/6TPhd1t+00GIgZKEvRNEbOiQdKrxlGeLTrCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741270735; c=relaxed/simple;
	bh=Wq0GE2JWth4D+QIuuHe9yYZVW/x7YzapHTuGxRQyEX0=;
	h=To:Subject:From:Message-Id:Date; b=eQkJT6kjDSsEEAI3cKMLfX97U95fgEsXYQjnma0Lbx2qef/Au/vcy3hqLait2QC9A+39uQ2wkQTVJQNyl4wAUr6fCvHDLa2zL98BEpj7JNwmoLY7KxBx5U62/PQcdLYuneRdvtINWshqIA5qTurIO+ZX6N5/8oKSjtPXYnTyU8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bA8rfzq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bA8rfzq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0872C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741270733;
	bh=Wq0GE2JWth4D+QIuuHe9yYZVW/x7YzapHTuGxRQyEX0=;
	h=To:Subject:From:Date:From;
	b=bA8rfzq2BcptStaedIioCWxdsCYypNeP0dA1pjTZ4X5SsyH07XTfhQ9GFKO31/reU
	 e2NT7zZu4wsepob2AUCV0PedzsZZx+wqliBZmX0m8iA6QOmQTM35tIFSKDbhgE7X5O
	 y/vw9+nHvH444YYlWfvN9XqfjccnhrSbWoZhKfyX5zRGlh9/MtqOO9lQu2bTKlk/3W
	 i18Fgoe0jjOOPKQs3OaNO7N3EV68l5DWxFCJa5cZsy6n3pLWvLZm3Pifxf023lB+kK
	 Ct845XU2mnXJsG+VsgTdJYmXMXTT+jKJLsBQHb7ngsKRrzRcdbaaD+jpIH2dYZVYvH
	 NfZvHhAWUC5qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B57FC28B23
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 14:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127073362.17006.14382356438006834202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df35ffa490c6f5dfa2536e03c9cab9cb2d4c89e35d7ea11db2bd4f3c6371e2d4
Date: Thu, 06 Mar 2025 14:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741270733
