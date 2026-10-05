Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4255436494B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791187834; cv=none; b=Q9qNmiKN3XVKO4ZKJ8sIRM6Elul3MQkzEkocAOtV9lXJEu/cbudMfNyIgEu/Dz2CJikQG5S5YGAgK3FmbjYhOMcvsQaKSkMtzfSQrPEBc5MyCc2uW3+OJBmms1S+QbRPA7ZUgOGgbwQ0ELSSWWs4avi7vt56PPBhobVt6wdEVHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791187834; c=relaxed/simple;
	bh=7aP4JRyUWrizuaOHDR5bDfIdDaF8n4AnzjyKnnmz89g=;
	h=To:Subject:From:Message-Id:Date; b=a03NsHMvnFjCrb9QG5ImcUPTRfKzBys3Nu2JLzwEG0Q3zNIGjSYxq846/seXMAB2L2XNr6l/yXB354SlrlfBIxqjeO5qcRSgXRF4eGUdz68WYiEnqzeC7RRXJJbYia1T1cVy75a2F3lD83cKdsd6ebv40UVwAS5nFSZuTYaZabM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdOPV/Hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdOPV/Hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2018C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791187833;
	bh=7aP4JRyUWrizuaOHDR5bDfIdDaF8n4AnzjyKnnmz89g=;
	h=To:Subject:From:Date:From;
	b=cdOPV/Hh0IjzT9RxYG7ATCG/LHtT0C+yjd1TBRbhixNi5D/foedJzE7FwO466+soj
	 eH22bk5Uog+BR52FrDv4+m8RAbZrb42s4lRGT34QvvzpWqS1ZmQI94/boCKk00ngX2
	 ODvw1W3u4PH4LWh2IG/OOlQCiBaqH+Mcnn36FQqmaKCiUSd+kW6sEbOVC+6nm3f2vo
	 MuPCiF8tpLoXEDpOYWIaW5GngqCkII/+YOAdU8Jzg4Mpkk75KjN2KozOscB0W240Oy
	 8IfdxqIDxyJSnMANSpWkRQ9CqgI1FM1lPCEt9t0AqqiZhUxemNP4pRvhyOnWYdvRtB
	 FVKOMrjhMiB8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC55CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118783368.23921.14065231664059123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d7937a4b9528fee03e3c1c525f0362d173acabdad6f4bd3eeb2052c4596620
Date: Mon, 05 Oct 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791187833
