Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F36D21773F
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744101596; cv=none; b=XK6V4hE5DjyAWvt61aq3Au1MmFKtsl/syHFIGq6h2tApfRprjitoMrP6e+4rZiG/CM1suu9Q2O0o960CkUw0wZNNg1embaz5ZfHrEjcjw6QrzC+2/XK7Rey6lBZhUotVgeKxb0olsNwIQEsa9HiilUiffeBULrDvRuwZgTCOP64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744101596; c=relaxed/simple;
	bh=BTawUCfIC8ROXJZo92TmVe0L2kDUwTfZfFrQRhACEgM=;
	h=To:Subject:From:Message-Id:Date; b=ZKuj8NWzJ2I+tVgxH3q6i8EYpzJL6ulzOa0dp9Kiqg/+mYUz5OnI1lbifwrLcPWQTK0ooQenmc2+2GxM/pmcpgdkhUU0c9qa8KCaaOss8sLIqIac9zHLQnxyh83eJUk0P1jWI8ffw/LiwJH8/0A0Fxl87zpvkmWmvdYpULXNUk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+jpOpvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+jpOpvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F9EC4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744101593;
	bh=BTawUCfIC8ROXJZo92TmVe0L2kDUwTfZfFrQRhACEgM=;
	h=To:Subject:From:Date:From;
	b=G+jpOpvfgRngTJyui6/FvkAP0441486PQIubNteqPpbpNKzERN/0GkU7LyKVjontU
	 17l1MXG+aSnEfYqGHTclIVLiuVT2QDRYyf7YB4fGH6edPoUejs7Km3qA7+pocxR0Nr
	 ttTKhKMCD5pM/ib3baTyUehhA4oPJpt3NlTJBYMvhqlJBXrR5EkU5jj7mXx7y6t+vd
	 LXRO97zacYQxYNfSw9Fwdb3s6evVyykk8J5YSo1cP+ojglTlKXFVAVLmboGkgG4PPw
	 JgXw16wDgEkupoKHa8zmXpHAtADkVqL2x3J1U61HehoMbrX8NfSbHi62zIXD439H+w
	 OyBwOFJBhCdtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83CBC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410159367.28277.17294714030415052237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f24a2360a8293e1f26e6fa19b6a23fb794de43d9ef30c270265dfa4ef7bb52
Date: Tue, 08 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744101593
