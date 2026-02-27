Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF75A33A9F0
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772167493; cv=none; b=LlPAxfvR1PQIuYnH2DXgTt+aOChhvZ2NVYwXcdzQkCR6x3ZcRfUGUFa++yp5O2B9ljugWQPgYm4JMu3Itn82v5pchq8zzKcJqyABDNXRgGz7JKHjtgmy1gEToiyLg5yLyEGqgRD4BhgwE+himkfWa3hEiHB3NZX5xiDj+dVU/EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772167493; c=relaxed/simple;
	bh=ObGbLy76ttQcMiVBkIeWoAxImtSBmNGI74AYzI7OmnA=;
	h=To:Subject:From:Message-Id:Date; b=U4GilWyi3+SPK1CrD9vg5TFZ0fpPg/79iq76nieJvl1wnvoHB9YLl0sxPGQlXtfV7Y+nyg0uJDD0xJXNWRI+iux/pefnNeHjEje+PcXHlHTs91G3ZoIowHCUAxxo5LrCu30d4EzhsiwMan4j6q6CLpQJAihiSCRyPlTnuCZwwxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKXrNGH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKXrNGH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BC8C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772167493;
	bh=ObGbLy76ttQcMiVBkIeWoAxImtSBmNGI74AYzI7OmnA=;
	h=To:Subject:From:Date:From;
	b=gKXrNGH7R4veTs+Rv5nDFDI+GS3prPPxCG03NHSlH6YoJVxq5LTK2ujOKSMbyHP3/
	 bZy9L4WWKTj7QuKDAs2HvO5C+nvLLTsha8dSQETQzy0EXt5Hlsf06+VjgXu8VpuR1c
	 xUNdRQWinHkARXkl3Ed7MobZZlP5+8tZAM3E1KvGzFAVN681WxLNnuptpn9YyEi1py
	 MofgzSy0Cs7WiuPErQANU9L1WsqjHUwLcs7YXKEmr/IeruQQvY2jWauHi5Fy8NdwkB
	 OVUD3MJ2AAPKb3dmRaGBvs/7xKEl8hgDLeBFznwcYwrfGeuZ2j2/l5UJbd15Xgobe0
	 sbeKyvFOUI75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9858AFD9E34
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216749359.9287.17492084359177975977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae95495a8c4e170efe3d094a91463c81b3aa79d27fb27adefde25fb83601cce
Date: Fri, 27 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772167493
