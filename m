Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0FB347536
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773242094; cv=none; b=qSocKUvLoibkAThe67m6ABIhuGGaStjmjQ1P3caO2zi1CAJ8y7Dmr8qyYaWx8XGmFT5AMSSC//HNphwEWUJsfZECXr9FbLHKSYXoa5pgy17cAZlONoiw0v1zQgpWt1t5tQsZ3XhPZh9YNPfIcQrS5H6MMs2w8CvPx8fZog1izj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773242094; c=relaxed/simple;
	bh=DMsXKpu5Bn4IiAzO/TNsG3ytGKOFo3AyqWPl/2BGyfY=;
	h=To:Subject:From:Message-Id:Date; b=aceia4HjKF+65mrIWLoJcLXmBA3UI8q0kmsNmXWX0i2gdK7xfWhw+tK7n071sWZdP/w7c6mXwpZgnMdwSblh4NcalWOQMvPccFz35UCWv4ClQul1Z4BFI9XktAGzvsmEBpx8uqNuninVgzz3Zi7y5S4jgui/c9kZoGCriIEA3sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDtMA6tj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDtMA6tj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA066C19424
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773242093;
	bh=DMsXKpu5Bn4IiAzO/TNsG3ytGKOFo3AyqWPl/2BGyfY=;
	h=To:Subject:From:Date:From;
	b=PDtMA6tj9JyJ1KjIj2MH6ROSVoomgADQzVi0W69soKT7shV0qZ1lVs6WrFA4YTKyo
	 JqhNg5SVEFkwNhWMMgr1rprbSwDlYoAsGGj5abcFlUigpdCNN4tDE+P3psfCdqCzqV
	 oyUmmFSXy5x5QIjkZZqqusboDfEqmqQQ3K6GMfSEIbyJIwW0TR86J+WceQByuJsAjG
	 GavljC70a2qtN4vXqlnpO0NRYA3Mcj99jwzdiz33cE0SvkGTj6/Fe9OgeNqfyHzuVP
	 gqv8oi0LVHh2elUqHNTW/HWzHzLQJQmz2bTsxs/YeKSA9fwrWyHRVq8CdPXAyHYYUq
	 9lDKewuJSfxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946E61125845
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324209359.21535.7210290565335458560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e83b7979a4e019ca1d6d9c32324ef0fc4e35ac40bd65fbe4c1d4c0b886e700d
Date: Wed, 11 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773242093
