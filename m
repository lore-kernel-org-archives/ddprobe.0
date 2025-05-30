Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537E4148850
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748636996; cv=none; b=OmlH4AYnKs5PmhNU6ZxtvbUazhzTgDCpZ3ZS7cWt+8KEf5EnIZTJ5rD4njszxdXiujDGI7xQsnvPNCvrCxCiBidqz9bwG3PsnGaCvK8i/OXXTHDgbVB4WdnigqRlBvNIToqWSLBl2wBbvbOosZXYRT3WqoQbEeHFPM6UwLMRYUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748636996; c=relaxed/simple;
	bh=zu6MrIDkGloCOtFqFz+wI6beTpc/OeNEUYWr0Wh1NJ4=;
	h=To:Subject:From:Message-Id:Date; b=YeQFxJopY74KPPXa8jzfPqSbtkEJBeWPBIQVCPDySqlax/WnBhsZg3aJsp76vpl6JA8sR0p5AHPIw5pYtwdaZZJo+5qZrMWWGhOuC77uopw3YNyQLMMwdBw2sMNslBvBIiPzyTqkQXFMneDB7lpxR7jNoSvNIQVGFwQ3UmoNgXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ze6yqZyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ze6yqZyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5D0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748636993;
	bh=zu6MrIDkGloCOtFqFz+wI6beTpc/OeNEUYWr0Wh1NJ4=;
	h=To:Subject:From:Date:From;
	b=Ze6yqZyzx85An7K8HZq9FoarSeggsISBuzv9ynJvKZtRms1vRZ10VodKjcLPbcjj1
	 o62v816IOZ+3KwlmMtT/bg6NQKVFJheflOsp7YFc4q09+QGUiw+JKIWc2fG+exm1f/
	 BU9yN1+o9SHLIAJQZjgpjlsvIgSRWbB+ZIeiXGMiaVWu+6k4NmCIoSBDkIZ4kqzLzG
	 JkfB6PYkMwRDWF9qTIY/JyQqCJ8GW00QfmKEKGNhmIR85AMMpXgZj4wNA35QVLZ/P3
	 SdvEGhEIhhT/1RGJUpqtfUy4cqQkBUpCT5y11XULeARqlwxm3+v/cDjcPp7xeyxyap
	 j5O4WsyuevObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B411C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174863699362.24991.1734683147438523421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f60fe476ef2fca459c2f255aacf8c7a4f1fbf93dec6c05618fe411eda3daf4a
Date: Fri, 30 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748636993
