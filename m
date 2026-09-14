Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDE2322A2E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789353634; cv=none; b=XlINiH3to2Rjy4F3iXLn5CUt+RzSo771JyQLBWGtOK/YksbcFFEQREUPKSC8bayrvMjJA78PpJPrX99OYCOyM3g4fzrdB5QMvKopuUd2xf6OHMJeoJlwpg/5wADbVg4Cvy+oPsBBzu9gyooIgBB1827YcAav6piLhdzzViJBUmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789353634; c=relaxed/simple;
	bh=XbKbne5kAJ9k86RSWO6Q+Wqw/QDjrvTrC5ofs7Uzocs=;
	h=To:Subject:From:Message-Id:Date; b=ns7glXjEf5GcjsaseHLVoPZVdtbtD6A01n80n29q/xotTLHmoCSbhiGU0FCipReBtlDmEbgAyUqUtBTCKKBwYIqujdKDmIG81uMJtP1jEuv6BGajMl9BlzstOJzPMWfKpSoT5cT9MUJj4/hgTLcr69lGIPR+q/IUn6HsZcKSRxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rq9Ozr8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rq9Ozr8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3533C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789353633;
	bh=XbKbne5kAJ9k86RSWO6Q+Wqw/QDjrvTrC5ofs7Uzocs=;
	h=To:Subject:From:Date:From;
	b=rq9Ozr8a4VHB9vS1pbV88mBoGbP5i1igCm4Y/ydKSDpJ4AAG8HDmwLJfFbMvGCYly
	 tqvoH3eKE5w2MXiXF1IzjHvnIysLcatMXyhjInDj989gH51L3COvJaS29SoptY/sZv
	 uDElDreytizqZ7rd2BuFEvYQ/gL7FVsR5f19BOldVFCR0+GoZyFqyuInsIU7gABho4
	 4sI899L8ObTxE2WMs+rcjsfDUYSXCggTenH23BMSWAP9Yjx0L3bLa5ElyFaBYLPU8v
	 3/7FUTCl2/7uUmUeGQwX/urnEcHePd5OOaESn4JPBOONWfZUj+jgeBPqgF9dCBlPHA
	 eUyOa78pusoOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B042DC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935363371.26951.2789895212052561366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309fbc7ac9033be73b0757048d11c3f61e450f4031072367b91a982733eb44ac
Date: Mon, 14 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789353633
