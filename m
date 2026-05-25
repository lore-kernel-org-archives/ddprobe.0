Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E592175A86
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779676954; cv=none; b=FzqQfHh+3nqWO9NF+hMxX80Fev7FcwzkBW6zjSXYe0L+Hc8aRwaSZeXxewoFVPsvh2PIT6luIhheJ7USvlWA/P7FKyMJR8BQ3YVQEzKxwTVeR0YZpN8JSn71JKccjONLksU+xZnTucTm9RPnx3Ac9EpkVlRuqihTiDpLXQE2dpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779676954; c=relaxed/simple;
	bh=wnH72r2mIZTz4owAFxGpobeCbiQP+qv/T7XZ2YFm8e0=;
	h=To:Subject:From:Message-Id:Date; b=p+GLF2EHbcjZyNW2ZyQWxEDbmO3bfDeLrToHfmswoVe4A9ZYm4aRG0ZDQre2nmqlR0OAD45MrO3oVkkUimhH4PXTuO4NBKA78qvNqaMNVX+KvNkF+MCKtnz5kbIncRRurDhviW2/rwyoSBkb4oCJNfgoiYJ92qU+/ipBM02Fhlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmw/sSyi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmw/sSyi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF20DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779676953;
	bh=wnH72r2mIZTz4owAFxGpobeCbiQP+qv/T7XZ2YFm8e0=;
	h=To:Subject:From:Date:From;
	b=tmw/sSyiFEEc6eN4MiYpCG8qqfbjHbUKiY1ZZTS8xoEKnqtTueaz3V70xogMwvHnp
	 om5khhLaq9jcsPp0MNR7wLkXaK0vOzOHLZV2vqAmgMka0IRGG6zFcd0hqtWwR/A7gr
	 BCiBKkkZSpks+7QstoKDRdUJDljQfAR/m/O4Yz1noVdjBD5iWBYe6NmEZxmWo+uKqu
	 xBMJi6mzhRFUXRRmkSqPr+kGLd4pvukk+nscqug/Vswer4qR5KGLY7mmPCskB04l8S
	 kfhIefMibaQdtR0C1Z7fLevO1UMLn4CqMttWsHZlmiuzM4OZgGqRnKtJkLnKHOs4dp
	 sxfgxPhY0BVng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E32CD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967695373.21199.2700276206887024790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33d7dc05880e46c58ca4f56201e0bc6beab3943b219421317230b4dde919b830
Date: Mon, 25 May 2026 02:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779676953
