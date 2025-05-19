Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8211E9B35
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747681794; cv=none; b=KTDgL6WUyv86bHCkIJBTnAADaQ8xLP+KeH7vxgLqRsyKFXiF56inCEuzVH4s7OBVQW4Km16QFJv6nhmSZu28MF39o25ov0O8DYroDgE7TpnyT2ErXQIVGSv/G0WyajlDT5CnGDUNhIep6hNcmWOeeO9n1za8bsHBuEeDh0zuYok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747681794; c=relaxed/simple;
	bh=tFkr8eAmy/5m/Dfy0nmNizBrbwT1AZ/A60MvA7Q8T9E=;
	h=To:Subject:From:Message-Id:Date; b=YlGyGrYLEfrk72o4c03qgzs+za6SC9Ds+pCjWQK4ffkSpy4jw/gDQmfzNBwza51kaJFY+2MsOF+3RO2/t65vb+VD0zY/YrlRdaEojHNRIygW8YhtOWQ6re+RfKRdRaScf50q46/tyR5mm8+SBSJ7KfB+PzMKYcTsadicxZpblk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5AzOwel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5AzOwel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB1C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747681793;
	bh=tFkr8eAmy/5m/Dfy0nmNizBrbwT1AZ/A60MvA7Q8T9E=;
	h=To:Subject:From:Date:From;
	b=f5AzOwelgD86BDQ6btA0/aiMzMmA3f20dl5/NNo5vXuaDygp78mMSgqrHjmo/mNgZ
	 7Tq782VRw05o5eHIRXSRg894GHaNekiQqeYVWlDFGjMbwlWXL4nioe+VJFJ5hOUln2
	 rnOCQfQUSqRK8DDkJPZqNKDpuSs/6to/Bv/vbAKJpwh3P5vknioB4PKl+OiNFspVIv
	 et2Xky/dxbEzm088UqwsAxhVQiNWVf0NN9WAdbJx1VAfXH97KDR5t6yh0RqO9pu+IV
	 oujqSwWtxGn7/qhiRezxJGfpl9+Q2Nrlr1BCZFkEcHBZLhOsRpgG3rCjD9y8+j+JOP
	 pXW+Qblnrinlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F545C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768179357.16188.380613322327902500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56aacff7db505b15d5b8521052fbb6ffc1e61a1094f2e76c6575733809ca60fa
Date: Mon, 19 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747681793
