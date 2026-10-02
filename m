Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F0C3CC337
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790968234; cv=none; b=SlSGYhx7oVKZNXdV/aQjo7yySFWXnjaY+liJgL04wndi5jBlv4a6m5ZL4hySM/xGU9cPGqIOHiV0H4eLXU+taA7yIhmVChT/VaPpiNYGAs6CjQXyyC0ovZcngRfyHzSGBGgXQ4W2HCAyVN1OjIu461I6LWMXPhxooWTcyTRY5uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790968234; c=relaxed/simple;
	bh=GKYiWGPkoisUNtxBfFhV8KROkJazhhy9H5aXczfY4Gw=;
	h=To:Subject:From:Message-Id:Date; b=FWg3sZukQ+xrtbCoa5davdq8xmP+aNyBNxT8wInaw0eOpDzPa1UIaTLSyYCT+oD96Lkzm3h7hgL3kukDABYydjWUeuT8+3trbAh4rmjLbJ5Jnt6CHQtct0neMC9bZmzCyeixWGZwyX948v6UJJDa/lWCWt4erJ7LQjw3KkZnZRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isZwgGzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isZwgGzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8619C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790968233;
	bh=GKYiWGPkoisUNtxBfFhV8KROkJazhhy9H5aXczfY4Gw=;
	h=To:Subject:From:Date:From;
	b=isZwgGzEk/EHUuXtRODRrwo7fKHaD3Ov3iXZHnG4AeinxKpf0aFla4CDkVUrY+PW8
	 KB5wusDfQ0oZHOT7u9MTyWHsud0YFQCEsqFG39cyb0ezVs/Qwf/DHxL59jfnMiH7hv
	 aRCCYCHvEnTotSXcjezkl9Gufdoej/QjmaEpfq5Ac28puTpXfebYHeKw3YJOUupm9z
	 +1oUqqS8uCinQXSVbTDKqvN2L3/6UFKMNc7EspEo5ZfiqTdOOtIu37a9wfPOUYp2Eq
	 HPXlhxCvkLIdu+Lf/HQby8izwz/Ogs/3Kt+Tm146VVZnNGxkJwfnwuIrl9rhSlenEy
	 1fzv0MiRANR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA472CA5FDD
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179096823368.28576.12719997318030031236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 887806014433c7e88974fec4647ee8525e3efd327f1caee4be7eb497b1be58bb
Date: Fri, 02 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790968233
