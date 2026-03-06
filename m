Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AC42C0F91
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772765094; cv=none; b=PpCzTEzEINDo9N67t3MjTro4F/ztaEB9e55t7DS/7Z1b/QC7g9NgTzo1xQJxRFFCI/sS+UNHBa90anCqdhWURc8E4UaTHzmohwDFnfEz0RPPQv0NnQ4BkCSh/hsu14bmxUBaHq1m21LgqfEl0OYEF3keqZB59U7akzZMWoPcMeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772765094; c=relaxed/simple;
	bh=L9WEFLmC/MBqkC+RGHELsYk8bNSGwY7hI3BMzoN1EqY=;
	h=To:Subject:From:Message-Id:Date; b=DaEXNxQtO7IDpz9uR/VXQLbiPysHq9EP0NNkXn312EgMA5r39UxFwxQCWhyoLrrx3oHbXX/k2Dbt37/D4OCeTi0t+l8DsyamAZwB6BoGJhOL+gdWevNJFk5nGeAgqQW8KnSfSKZJnFEsHZvXnxIqP4oiXJ2mjxDTVVjyOGKVDRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqynD35O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqynD35O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B6C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772765093;
	bh=L9WEFLmC/MBqkC+RGHELsYk8bNSGwY7hI3BMzoN1EqY=;
	h=To:Subject:From:Date:From;
	b=KqynD35OmvGn9xnYtYFXaXGJe6ggm2xMepIzzFe8MKnpjew74oLXpmikIXxBAKX5J
	 PN6BDIvuxuCNPjkewXekvKH8qp49Cf+lmzFn4uRVaYbp04mnWuxjqVORY6Si9WUYDF
	 y6p1k/4Ij7cyQRRh4uAfe6X06tnQD7t3QGziZEE+zlAiw87BAjlNB7eek8BeOZAlLH
	 NCUJLr9F3BgJYcHG0WL09istZG/FipG2uF2xVO5Qt5VthYT0lTCzbfKU01Gzw+5DeM
	 TWronoUwLOTRQNRFT1JyFcCyE43lG9chCSFp3T449NjH2rOQXmnfusGTfrVLXyXI/a
	 PN2FVLUjOMQxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9501BF513ED
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177276509358.3612.11965172155371232812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecabb4f96256a594f4e9ab3c73e39c9982df27919d926f1de99c75faf2c67b3c
Date: Fri, 06 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772765093
