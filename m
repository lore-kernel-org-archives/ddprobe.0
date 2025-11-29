Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0CE47FBA2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764441774; cv=none; b=gBqiQZkq6bIYzRyULRyg1qBcrJnBLsR92V+NyqzNncEIg0X473OS6nCITh1sw6VQIXYgR31u/yEp/TVCF7HwQyC0VWsLO61nIutOTluhHRVr+GBvObIAs/KqyWHtNvuihLRw3okfGzgP+ByT3XVmng0/Mb0cznBd7vnPwGD4Hzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764441774; c=relaxed/simple;
	bh=KQAxL/LAi6gBfbAbKssxeA6IXu0GJb3g4V3yi/oOgLQ=;
	h=To:Subject:From:Message-Id:Date; b=GDadjzkaPkOke+w0krkG64fME7fDl/xRl8SqZoNIg9Yf3c2tMukDb4yKnr7KMVz/TkWa8TvRYgThEPC06wEJ05XdyDAq2kPqRIGYVBVaz6U78ddoWaA05/qyNLkfDT/cGNuGiPI6GYKuCFVKjN/pHES+5t6dCxcMSckC8WgGPMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NS2ZIjif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NS2ZIjif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0283C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764441773;
	bh=KQAxL/LAi6gBfbAbKssxeA6IXu0GJb3g4V3yi/oOgLQ=;
	h=To:Subject:From:Date:From;
	b=NS2ZIjifChOxFH/VnZV9XWEPyY1srQubvnEGjN2fff+TARAgtZX+VNYvM6Zv/U0/x
	 BNzEparor5UBQrOE77UW7QVRotp3hJsxmjUvH2WaUX4Thg6ikSbD0s0LhDmuzdHKSC
	 ioJd3g1EJr9zAjfWRzIYASmBSqvl0yF+clJK0tm6ehdxRMCC/ffp+ndLxkc/QNncLB
	 oX7tW1BYm0OrDa5dVJZWMnvyhFxPMxOu8TdxjOJ7JVvL4oOXJ9Xs5nXP8K6P0TBU1B
	 Nf+Mm6L6o8ncMqoWZrpv3h7Nd++2swcLBNlcUgOVeT5kQA+76XEVHM770xBDZa0q4T
	 6QEu1MUlmmbvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90959CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 18:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176444177358.10588.5231540006407178606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c0df2e832cc3d906aaed5e62e79b822e6a9a63f1dc52a50ea4f9a0a21a66be
Date: Sat, 29 Nov 2025 18:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764441773
