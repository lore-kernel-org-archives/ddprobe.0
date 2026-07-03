Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B141357D00
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783060714; cv=none; b=BdykwzHKCeuQmtq2KUK+6nMmJVPW2BJLrKlmPtTBNV35S4MKCA3bth0ZGq8kfywZUEpOwKMp8BvthpSf1nMRNSKDvtz6zMR+MFnlPat9MBXwtFW5WzUNT/85Pz0GhPjpm5Irh16VTvsiIiMiAc/VTr1WQ0f8kEcid/iNeVlLEGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783060714; c=relaxed/simple;
	bh=rXx+u3iZmfgQlgnEmeFa3AJuI+J/C1eNx9HmX1snsLE=;
	h=To:Subject:From:Message-Id:Date; b=khDNwhvjQhz2IO/Wdc/i9CPnuI+dAgvxlzhOgso+XPOj8OTomEI+mAqwK3Ma9hiVwL31gvI5B3YBv6W17l9s2wRU6DFH2YDyQVymyvIOTnMiMvmnlPoSfN3ZaY/UE27o8AU85kNXgzOplJ77pViNPjk91kXviQbQd97acPcgoQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAX1OGoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAX1OGoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC62C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783060713;
	bh=rXx+u3iZmfgQlgnEmeFa3AJuI+J/C1eNx9HmX1snsLE=;
	h=To:Subject:From:Date:From;
	b=JAX1OGoNotwvsWTWBZ2C9sRzSFzuHMTGyzOZi7/TLxYhATwp+FdMsWq8WqYhaL2pU
	 QxnqaX3noA+VSG8XT7WsVQZWib0oiljzC37T617hGsEHBsAFGaaU94bBfC5Cxmuex3
	 oL9hnpj5CzgvhwNg9UR00Jp1b8TzjxxdpX8WnMB1YTO5L63ksyfTXes1ZHgWPq/M74
	 oQJzetJOsZAyXe+hb2UYUpOuRyNFAO22ewKRPi/39AeBVYFjYpLSGVwjrVvtnqROiJ
	 KvXlPF+4iOKkRbpLV17SAfv14uZWdAKb6RGjT3npJ0iBBWt+hMpdBDoGn+1S3h72G8
	 CaY6SHJYAJgTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF8FC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306071369.20494.4832847352922521032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a09e825c680873af885a784d7fba6431cf621dbe25604168af4e85161e204fb
Date: Fri, 03 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783060713
