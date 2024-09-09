Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C56241C69
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725871554; cv=none; b=hq6mWAuQJHtOvsvVPCiWxLL3c1KetXakfNRWmdhacQmfBIjhZU/deLWow8sFJIIGdoIpqszw6JuTcTrsU7hW+uuo2dD/t6Cxyglf2OXvHbe0Y4XKRWrahR8dtcJLLHRR/b5BGfOFrR7TlqUqGzcyqLCsxoLibRsUcEImCW69Ze4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725871554; c=relaxed/simple;
	bh=TUOxPXfW3hcYMRW3lDnhbaQg6Dg/CybexTe+zMj5fwo=;
	h=To:Subject:From:Message-Id:Date; b=CDUnW0M6nKnV7rMIGzz4Q+PF8G7x7D8wRyPLSagzpEmw9NRaJ8MQyB2+W7Il/nUefMqha5m7Z87eB6YK859dRc+3Pkg3rz1+f39ZXA8PPW5acYMvT3xCYaQzjwaqkI1HNzwlcnknE+Lp4yEncsafhUUriAjuUCOc0nUCbfVJDrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAzqu/hF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAzqu/hF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A4CC4CEC8
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725871553;
	bh=TUOxPXfW3hcYMRW3lDnhbaQg6Dg/CybexTe+zMj5fwo=;
	h=To:Subject:From:Date:From;
	b=bAzqu/hFo6nAFwUu6ZYmmzHKLIlKlvMQza3pM0GFFFGyBYpGtOaVijS387CjW3hy+
	 BAECKJQ/VtKFSKblQ1fIugbhtOIlDJGwHft/hyE7iI7SrZoO2kjc1V4YTfVvaqjcH0
	 fcqZ1McC5kyjOcHcjqdma5lfNkrT5C2ZGdUkZIibP+BW8jJAgrPCNON/7nyXdprr1y
	 6OZzsYFyME1kFMzcbUroitGMIbJ+jHk/jbpvhOvmkRpw/pKn4XnOR7xgg1O0Ht5cI+
	 OvUy/fTDVMdKmX7uwNdqVLXYS/3exU+OTCcApjPsOdSj7mWYMb4TsAwSmvO7CTvFNb
	 wgoBbldHHVsVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A28ECE57B
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172587155359.18601.6166932230591704408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187b593201184901bce8db4be59ddbacadb62c46468cbc32631a423fe625a8cb
Date: Mon, 09 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725871553
