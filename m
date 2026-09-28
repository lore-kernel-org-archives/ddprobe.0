Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ECA47FAE6
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790638234; cv=none; b=noTdO9t4Me+sZbaW9I2nkEM0Z3YdTNdV1wTHUZyGy0jc5HGI67rS+aWFEmmxKizhBkQ7uAXxp71FfTYFcZQuzrVW2KwiP9Aa7OmcC/Pzvnq3VN1VxBG/zJpdXkTVoXluQEBDROfShrUTK866OP8rkWO+Pga71fYvTuBbmMHPOX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790638234; c=relaxed/simple;
	bh=Ow+DOExyDYT8zeLz7O4fQ9jhDy5IPovBbmNp1Sftm/U=;
	h=To:Subject:From:Message-Id:Date; b=SY+ekXPaapkZU6cALLc32q62LbHmYoKVGJ7u2HTnuL9mQqAfQ6tX5S6ULWDKpcWwUNTATqU2DByAFT712NJGk3U6EUn0W09XYwzlSBdi0qUbKV/llYqTLrfHpMeyiiKUq6in9TjiU0a0Ied8vj2LWADH3cRAgkzqCi6AAjCFQko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4RfG7iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4RfG7iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDEBDC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790638233;
	bh=Ow+DOExyDYT8zeLz7O4fQ9jhDy5IPovBbmNp1Sftm/U=;
	h=To:Subject:From:Date:From;
	b=q4RfG7iq9Tsd9Te5xyP/Ewoz80w6hoOJs2BhjsEq+RH3pS097PrQR5R3n7/xs1CGx
	 eBWn9iy18NTANwY0JasKC3BI6KZiXFFXMyAQ9cj/nL5QWzAQeH/XryaLz7b3RqO8w7
	 V60sH3SA1GraXLIUArQz4qaVrSOsEWQGmCkXFWGErmRNRocd7kzOmjVpoU/XZbEh1l
	 sTHJqDzFPB0RHhAJG/+6BK2YWFVveGc9Btcs2UApncZ9cNan3T9lrPoRWhvFTjRl8L
	 94TTLycSNZnPoD/MzMhZF1v8gt14LPnVeHLk7C9CPYz4xlYnyaTJqCF3emz/KZ5RAq
	 UerkpqnZR4oRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB56CA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063823368.2810.12260297997678592988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e031daa621cfe8ecfd6b497293406cf0ffafe4804947922524e56ecc3ca5e1cd
Date: Mon, 28 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790638233
