Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D50349CDF
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783531714; cv=none; b=hMa5QKYwlqqKFw2tp1ZUa9YdVQ05cMExiYJAVEHlFrFxp8iL10Sgdj87vbdj/z/royjk/A0pFiM96QO28IhKSp8EROjKAvqDHw8HcisPHUtIt6lvpyZGbflqERCPsSgaXSNtNv1l6ibjftY6wh6v0t40Mg93qo9+XAKlGTDxWKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783531714; c=relaxed/simple;
	bh=A9/HSxy3AynRdQ78BtqQwdcE9By7RsWVj3guf10IWHw=;
	h=To:Subject:From:Message-Id:Date; b=NQzfKECPqF26LkVeKXaQNqnoIY01jJD5qMk5686KskUDfrVHGmNgRQDpJnmC92TB/LlFbv2BBriwMFfQcLQjcCS3NnWcdgZeOb2X8LK472K3jUdjO8OWZz2OgGaMxXmKhjaKCSH0eKLGGt4ZNCB5uPfYba9U6jyS4SDToLfhuU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7DpSy28; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7DpSy28"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6B3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783531713;
	bh=A9/HSxy3AynRdQ78BtqQwdcE9By7RsWVj3guf10IWHw=;
	h=To:Subject:From:Date:From;
	b=D7DpSy28tzfYFqu0Pezq3BAdjd7NJlF1L1V645DsEOwWF7B4agvh/KW0bI3HO6ErB
	 oWgKVcJOfeKSKViVA02U0ncYgmDCRJxBmhByTKJJp3ABCOLNU+tqR42w8n6nSoTCDg
	 oxOnhF/7M15m4pdKktEFVvMUVeqGQUsxMKBp1F72VtJNHtXl12BX8cQoRvijaoaJNG
	 np6tvtcOmQQp+FkFQs7DgYZGiF0y8F5sqwuxBJmh7fYwOJbXnvBMVj4L8t5YT91WrK
	 pTJyU6QIIZCp/rHn54NRUIixxcfrjkqi0W43OwVjIg4CxzOukYumChS7hn/j/r2tym
	 oY4YBVQCkXTDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C41C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178353171368.28358.5475105171859095805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c9a28f40e64cd8b80cfa835b088520c29dc6b2c9f574a29c62daef278132b9c
Date: Wed, 08 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783531713
