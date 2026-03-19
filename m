Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61543451B3
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773901493; cv=none; b=Nde1c9sWkeie9NJ0iKEfFZlesrp0AEzrmlq8XmhvcofYK7FfkNjn+uGvzxDGnvsprslwWVse1CDxPVk2kSAEc8bu66E1g1AkCwRu7a0l/RR46LJzd0zUVzN3/PpjlBGu8p2YJwGMQJtisIlbNYHnorig8ra0PvJ0mIKMrK6cNaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773901493; c=relaxed/simple;
	bh=Om/5vu8D3Fy3rt+a8WVs6Wvk3gnnouM5qFXAEsgXP0E=;
	h=To:Subject:From:Message-Id:Date; b=hbwFtz1GbjKSL+5sTBdPa70mYsnEYik3xAVXTj652tp7Q9iamaKgrTicozGOWuC18qjM9/OWbkQjQQ+ebuJrlIsTVo5HPhsHRaNimjBerDjWn+3i3YzPHbQjgPk7LG/sicST0mzfMX4riVX2AW6zYHBw+AIqqAer+WQpYBUWsq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iphYLu8g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iphYLu8g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3838C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773901493;
	bh=Om/5vu8D3Fy3rt+a8WVs6Wvk3gnnouM5qFXAEsgXP0E=;
	h=To:Subject:From:Date:From;
	b=iphYLu8gBsAufrb9tirOPTXbMp5Lt2zL0WeX7GYIarG2x+xq8gbGUS1VTfCvEy/YT
	 l4xmDSA4uP4owVn8ZWrViaQwO79ksllrOLa43YFUsNeVxd2MBxd094/9Ie++4w5Vat
	 ZRlgkuNIulkore4O0qQd5XadsQWz+OTjj30dKSlF1zU3tzb0UN0fKs2RGy5U+NFUAt
	 qpG0UY8YfTsiQ5R+2EeZlsmYs4fmR50secnowkJY7K+nPjjY1l/yP/Ngkx5dSLeGJ9
	 I7Fuw3VoGmePzpIVFampjE+XSMr9Lq132up0OnCdcSoZdGv5X9XrM/yt2s9JUhCUrs
	 U1Ilu5NaajH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C821075261
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390149357.3387.11654313125794958583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beef0d258cd841444e199cb88d7e508b56b53f55d23c5549363efce52fa9e9ee
Date: Thu, 19 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773901493
