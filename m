Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6579F3D955F
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792320634; cv=none; b=ZxSPKvPJZ/RYei2kCtQ57fhxYqeo7AN7SkouFfJzPYvmcSiS7hoSmune2dzwK1VKb5le42k40epjgyAyhl3dRNS928xHvDSYrk/yBETm1oL/a8ljHfj8YkaN9oUgbmeJPmnoi3vzYy82UcKUNOUZIn8/6MyhB9H8Y3H09KxR/9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792320634; c=relaxed/simple;
	bh=dbyA8mtvMGDJeP+5I+XQ3zNBW89/atEA/L/wFv7VQLw=;
	h=To:Subject:From:Message-Id:Date; b=WzUUztxyLWn57J3fIGFlIg+6BPGJYMuYsZn6+mF5gI1oJuIYKxRt2FKdMQeVx1cSmwnop9Ae0kuOkK1Dbf6kxprQWSb77LtUSzaeTGDS9hNyeudAXbooe5PiwOmBTjXwlqMhuWnAfUfwpctL9OG3mc3xlNynyndV56W5JlhDojM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9FrV2g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9FrV2g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D433FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792320633;
	bh=dbyA8mtvMGDJeP+5I+XQ3zNBW89/atEA/L/wFv7VQLw=;
	h=To:Subject:From:Date:From;
	b=n9FrV2g0JZVIkKGiBqqjaXGei3fdik9HBwUYhhgTLQKh2qQGIdzTPDmsDz4GP/d80
	 25HWDuNyKnZtTgXmznvRT7Ig19SwehGkZd4Ettt52W5zNQ5o0SbbGcGPOfrgZycB1+
	 EhERrG4VYWKe9BQvP2GC1iKXkmve4nyEp98bK/O05oJnuRSgIw4XOo11/tOIG4iDjB
	 qXRc2cfwT+SZ0IfJqKmTpzs1WtpqO6Sy4pmOPI5GZPyavjdCXBFAXDg7TPlVCIWwwz
	 Es7DVrsyyKWik+6ocw2qTiafJI1CuyhcITClvwCaidnotDMenfvzdNSAL93c+2b/tN
	 ye0qCXK32gWeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1800CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232063369.15811.5817610499868982859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13dbb5f7b9d7dbf9831833d16a18fd990baa40ad4f38d72878d88874260b9de
Date: Sun, 18 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792320633
