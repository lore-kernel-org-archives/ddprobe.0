Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CAB1078F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750706394; cv=none; b=NyXoBIBonGeoqJ9ok3FE3JGiadSfWY0n1ix5td79v4tB7Ja5PPpN3cWifUVKQxs1MhHrkDUjMflNKdwAk+hJaiRcGnH/DgjnmCEx+eQbWm9/5oFnlCjvIsCIgDIvWWoXofBrKqXZ4pSFlDoINp8VovUcjwneH1zoxYcL/buxQy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750706394; c=relaxed/simple;
	bh=nHn8p8smVCJURr9AW9jfBDiSgeznBZaLtctYSBOY98k=;
	h=To:Subject:From:Message-Id:Date; b=NzmILmRDUaiiX6GGk/a9URwwJNgNIHzW6vZOWktVfbtYQ+aTZFdTpKrO8KIbAovrWA1ZVylkWwN+fIbsQvFMi7g8khOMREg/UTLO6w2Sw11xFGLQerjBIrYrog+JhepwbKo3bWqSqYpM6tyJVUAPWnjxAXTHQCFTunxvVOnkkJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZW7uWMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZW7uWMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750706393;
	bh=nHn8p8smVCJURr9AW9jfBDiSgeznBZaLtctYSBOY98k=;
	h=To:Subject:From:Date:From;
	b=GZW7uWMwST+58kADNVZjnfPXifOpJJuis5xvAfXZ9vPjPC/7AK3+0YKTcB1e6XABS
	 l9VXQjfkk6PX9C5in5H9YOIQ3mIObOyijo7W2ZH2UMOiGQp5lEdn15rWbiPurI9iU4
	 yDrLD/PH6izu4SrCikGAiijIV8Isvc5XHt2Q4/bkk17RpQn5FqAmYtZ45qrfrZXpc+
	 xct/kXW7OV5IF9c7GVu2jcTFIPNMEDKoMS7nO7SwzzsK+8DfXZHhxXn0zUDXpPmxam
	 ysrhtOpB533l7mbowdp0b6rRuuh0DSpNBPrxjblgkxmSen7M+woRW6W2y4zNHJzuYh
	 6Qu8BQwecrPRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A39C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070639357.12210.17850408273376018933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1aac0c8fade1d21b2f916337abd83083bb1df6ea9cf626a1bbac095d4a14ce
Date: Mon, 23 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750706393
