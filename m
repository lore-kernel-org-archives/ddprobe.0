Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1667D2222BF
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766340234; cv=none; b=s9fxyEXBXDDHFOqjGGiX4jqsV39RaTLb1BAen+SNzKf4yRGcIACWHyTEcnrTWa/5Bf9LmyJ23sfevr1imDXRsdVrAL4E4pqU/MxAQWm/3c/M6NmGZPJZKocM91eFhiwj4K61VMXuSdze1x3rTHGs8WC5EMA7c48LFlGUTvW2HTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766340234; c=relaxed/simple;
	bh=t3ydIms+b5m4wRRA/cE+yqjdcwUxW7WTXkIALhASBdw=;
	h=To:Subject:From:Message-Id:Date; b=QhK21259li8D1I7KnFVApJdiWDW/VXjcr9tsZs4Bc+TXt6oUTIE4i4keIAmRM1tcHzx3WczuMeB76jffzIHBMIfVjESj++IXCrkNm+Y+jmjnaBagH64FEJGc3jUJp6NVatMQPsp+7i8yDosnSlG0PBMm0AtbbwKRrei8E7xuDzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQnXFQ+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQnXFQ+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70AAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766340233;
	bh=t3ydIms+b5m4wRRA/cE+yqjdcwUxW7WTXkIALhASBdw=;
	h=To:Subject:From:Date:From;
	b=mQnXFQ+afBPBFhXMZNTyr2hym/GjTX5ggIEOBjdbmf4aaxRXK8CkErkmijUdZ9C5D
	 RfnAsn8tYtCNqTkGioc3FaLQoMGxgyYyFXtC7jyWQ0dYOvqQXHmLeV5v+w9DYrqzK9
	 QXz34y6RTVvS453zIX34wSze808AAC9FrqPhe0HGWF1sdgj8xCLF9hjWBUfSNLCGQg
	 iACjxjJKXIYq8hXPz7TI2g4GvIMmH5/LHKy5GpSG+GALtJZchfhM6dOr0rTw0sRxPq
	 Fl4QnG4BLcp63cPm7OUfL2Izirz8JsZ8zwGCXVmI+wpa1kdD5yd+s644BkIIqmACOe
	 1xi6m8WxY46mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960DEE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634023358.22880.15393210454690437168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b0b7a12d9257bb2d5e11e37e3ad3b50209445d75a73027dd5e8815639093cd
Date: Sun, 21 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766340233
