Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC9831E107
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767962033; cv=none; b=aJpWlOVUrGmx4H0/P1WvB1EsSLpj/PpNl6aTAqMHVb11GNjixxTJQVDX1oMrgwvOUK3UXRMzS3rjKjXs2jACrjEvYhK7dAC6n9cFTRIqpoagMVGAzeqXbl9nDDrNqKDDHQrbhHPAjYPPwN3Wkz3KVjEXpta0m3Id87Kw33rJIjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767962033; c=relaxed/simple;
	bh=x4229PGIrNvXlEuozG0K8lwP9gjewpkyxVdsAOMkQfU=;
	h=To:Subject:From:Message-Id:Date; b=KYj/VOgdFoDvKhWNXqeLy9lu5DwRyVYfKAmxQcOEb2F7IBPfY6OBqvgxcpbK/hvpUpU/nVpqZ6suGsgCz/qArpgD0XYMD52edUg+tjcs2OhOz7wTcnu3RgyZSE5tA53v2Zv2dkE1fmlzabibvnNnSwQMuEhA4lgSd8QpneVh2tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KW0J/vEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KW0J/vEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDB7C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767962033;
	bh=x4229PGIrNvXlEuozG0K8lwP9gjewpkyxVdsAOMkQfU=;
	h=To:Subject:From:Date:From;
	b=KW0J/vEQ6TGBAgSXq0vDuNSP/RLmm5ftZo9+Js5pG/0DAhMWuPIH1vcITqiDEueJu
	 AdCPe7/88ZTx/voOllA08wm47B23IA7p0rC+crnD8QiG4lH/ndsRxunqA+mAjSEK3Q
	 aKpZw+ATuHIZbtP8hpFQkIUDoroAesPUMFIIRblNqgqh0NvEHa8JL8z/SyiW3TLP8x
	 schxScxKEq/iYFCy7xcQvkw0HxhfWmtvtOXYgTJC9GftL3D7I85DEiw4Z7M1j1ICqb
	 tuA2YGJh5FwugDEks65swKBv9xScFBNHS9CxEjwF0AL07Gt6Xryshqh16DCvFksE1t
	 HUjQjDgZ7mlhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9FD1A610
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796203358.2750.8219521897924306758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe461a04aaa45235dd4634f81034b2a82c17b5fcfae0326daedc4cb74ab0aff
Date: Fri, 09 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767962033
