Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1276A20C463
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768820034; cv=none; b=Mx0lsmcztWqxF1vx4+gTK/pfj6Mcb+ghTtyMqFI9pDEQk/k5Km3lpkZ8IgSO27L3Npg+Jt5WCKi5Dd4u/+i2/ztEbu8psDgi577Dd/6fg/DJgUuyAZGQu5GJEjOxiyi3Y9o0nX+7J9kE/zlQLgu9X0Vw4Bp4TzpB4Lt6W+oGeKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768820034; c=relaxed/simple;
	bh=xyK9asqmXWjQ1pNJwQ+a2XHPdodJWrQzQ86Wncbw9SA=;
	h=To:Subject:From:Message-Id:Date; b=JrWzlF6UShTWM1Etue5JpMIZ4B16UkiXqRQvskbH6VIfHurKIRPC3LlZgWpNu/ztRLFIkpY/U7ENXSlTCB43u7sjlWWSyrYRGK4CtPkF+eazlHgxMj4bNkqhtn5YyJuCmBDJ/KsHCREJe6YQ/shDfQXlU00FfQBSl0Tv3Gv3Y+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe6bwlsG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe6bwlsG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8D3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768820033;
	bh=xyK9asqmXWjQ1pNJwQ+a2XHPdodJWrQzQ86Wncbw9SA=;
	h=To:Subject:From:Date:From;
	b=qe6bwlsGPIkKyhzhFrp1lWM8vlfbe9JNuTMuVbFQcszjMjSy4RKhsOOe4RGJ6kcL+
	 oK9xkrHrvY20E/nteXKuxdLeOMJjoKRYRvflOesLEAfCVK7zRuKIVt3ui43nw6yMbO
	 Ck7knYWr8up94etBSuD8WDoURs2CfhYJKaTqk7ajJjyJD5It2IVxYod/Thka2XuN4I
	 MbmpEEJ9Y4umvV6WVBngsAITMlwSI/tkXRz5rLnlivibor55OExpmoiGVddf/nkgB6
	 0eWcDiwbpSGxNd5tcPkvZH36Ir5HbRUu4mHL/EKyWL8mJni1cP6DjMdKe7XIBPFPbM
	 kdO8/uZvPtmmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AD9CCF2E5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176882003358.30401.822087679229492965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ea7d4cfb5d1937fb63f114ea993e6a13087d2228bef4f66577734061974b0b
Date: Mon, 19 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768820033
