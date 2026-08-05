Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9793E5EFF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785917436; cv=none; b=GvnEombAyRfW6vEiV7M6FCz9cy1mZ0bhONy+lKYL8NdhoMfziJIhQ2NYVc2xiDM8eTXizdeESxhwWx2yAMGayFpEhBBUhLD+uyT3RpYQKhXtgMp36MiJEndkSgYbFltZ0UewH3yiMki3D/MQLkodAUXmG+/qmrplPbdTZN5fnqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785917436; c=relaxed/simple;
	bh=VFEaI4AoFhNv03noYS1P+ed8HTcIFI+xWKYKYSqJqpc=;
	h=To:Subject:From:Message-Id:Date; b=ojYlaxK9xQOc9PW6aRjRbxSxMFi4y2XUfN8LtdpyHQpaHo7n62XWTaK54eifObZcWRvBWydhEaFElbDkkFbpTur7unUMENQMU/FAI1LzSAsYs3anFuoIKCgbSWZ+gckQkJiuyAsI26BKYQX6yrVdNlHKEi8H84KcxfHan/XsmeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fx/HuhL4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fx/HuhL4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB7AC19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785917433;
	bh=VFEaI4AoFhNv03noYS1P+ed8HTcIFI+xWKYKYSqJqpc=;
	h=To:Subject:From:Date:From;
	b=fx/HuhL4CNSKcQvdx5RnV/eb9DqBNJeCXerl5YNQtht44J2fqFr0nx/gxrXlR5kzs
	 z8xO0XzBs1bKhFW+xqnZWkMMz1onDKRmfcB/y3MSlPi85uSN3z7GytaislR8Hq6Dsr
	 qF7Ozz9ewAYqTk9KGwxdltd4Bazq+m4LEBNsTmcHh7FDBSQ9ejRIWEcMhPfMSB7jyq
	 +PAj0h+GENCS+MnYz8XvToaRtejBFSWJ5R/egeLw870h1KjZtqGodStxUSX8taZ/mL
	 ccDD8LT9UTDkEzr77yWsC2iGrw9vZTe+PZUYNXuWq7rTjdd9xCO9hI3CvTIJuULYBl
	 6CrJGv4zWJ/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8754C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591743374.30455.7757349509064393541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47faaefe37efa92792f1d0a8c26339c33000050c2b8f56714ca67e4a914301ec
Date: Wed, 05 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785917433
