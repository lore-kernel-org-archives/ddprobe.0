Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412082253B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766991234; cv=none; b=LbuHyKrC3Yh1JvdSqluXMhDeb52On+lCjfvRcPVZYefJ0rJEn4491prvfY8r959wdFsML+TnNeCSIfJXtEavI59GgpQnCNrgHiqmb/6QXEltE0IK5SC65HmjW2qRZHI4wmTdnJ8dhp8Ol8RWwrmpUGtcSsHMKSfRyehJk+qB4Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766991234; c=relaxed/simple;
	bh=Z4S2aet4wLJ0z/00fOfW7JPZJPn0Kh6wjtdTU0kotdM=;
	h=To:Subject:From:Message-Id:Date; b=oTy0+Z7Ab2Kha6QCeYaHHpK1wFW+TxVRHGpPQbX79M6P00pxZuQWGWsT97u/n1pUaCzEqectgaCTZmhoV2VxaWqowReeQVJgGEUxRaHwRbs3JBGrem/skdEjTeCiWNx8opgQUCWdMjcnllsb970baAI8IkAJJQTfRlsdrlVoVz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTG1CGh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTG1CGh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1E5AC116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766991233;
	bh=Z4S2aet4wLJ0z/00fOfW7JPZJPn0Kh6wjtdTU0kotdM=;
	h=To:Subject:From:Date:From;
	b=RTG1CGh0Tc9SN9j2M7/c8vESsJXUWypxcojD07p2LMlbb4hckAcxl9wJewV8zN+Y0
	 J1gbqqCcFjAY73AkrIMJzUfkBgjp/z4OIe65PrpZijTlMe5IeZNZL10JvkBujFJBM7
	 Kl16f27oNrR7DgnThxynveSNh7Zk/5mOJvNNzd9gkCSZLB27SXSZNMK3zjRgRIzBRy
	 /cn4M+U7uVXHDfRu18xpPg0nww6BmTf0pnC5JsAEgr/CoTpNoZnvYBJdg7+cXEj0gP
	 kxatXOxL7hYRr1J0oQzFDzdN2rrXcEpQn3p/VgNoU5010sJMKJRBgGKM74qVcrjxMT
	 L3e8qOnZ9/Idg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DCDE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699123366.7037.15326651002874119227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45fe09da6b4cab92017ac9cc50a73ce2f3e382dc5d6dcd80278f5a742118eed
Date: Mon, 29 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766991233
