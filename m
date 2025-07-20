Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19862221FA0
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753040394; cv=none; b=JTY7m0U6pMURXxOsTHSTKc0luQTpPx87NTnXz7X5DXu71gzSLi6yigryqxRNCbhfqYgrCdkNlLlvwz3XcR6/ymHtcbB/hZn1xSwf1ODV3PtZH1OYa37FUBiganJTUp6Fin7wqxajvBHPvqHELk9NJO4rbqpKJ8v2PTAnHur5hvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753040394; c=relaxed/simple;
	bh=coj4bf9l4elUGw4T7S/7up1be3fyF2Hh4TNgA6fZ5H0=;
	h=To:Subject:From:Message-Id:Date; b=oGIuNlZRFc/xRTlvK+xNcZRdKlvXpmtKY4jPCMoXI13nUTHMtjNIjo70AeUmRuImQ2eRajBjDRJVs4kyab295rS50ifCSlzc8PDG8U8W6xJCoATqDB8sihuBvPassYvRrTQTwLFhZO4mz5u41WVJpmq9tb1FCjaJlmC7OXTcCJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA3Gse6G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA3Gse6G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62BCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753040393;
	bh=coj4bf9l4elUGw4T7S/7up1be3fyF2Hh4TNgA6fZ5H0=;
	h=To:Subject:From:Date:From;
	b=pA3Gse6GegP25ryLFrZ0Hu+1jpWyHk9DatleNXhTPH0AYgcQz2FwXtDg3X9ySDIR1
	 zEFwrOGcCZhOm7U2Z15xKrA6hWj7/F/Vfn8beYX61q9da2Ijdm0nm1gV4sRdTvUL3x
	 AqGfVZvBNduQmUtZ/lYxzlqRXIGFzdHTtZDtFNhsW7UascZg3vdYmMaozfqjgxFM1q
	 oZU6ErmW7GWTN7dqBxcKEkcLPtJptrkOPrcl9SYFqdOZrnp0Lzo+MrfSfBMyHl8/1F
	 qlQPa8qljpjgDpv7NxcQ5UvDVSKATuuSfbewFkwjHzmXQtaBty/+XhkZQYezQ0TJnq
	 d/y3w9E++Bkbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94262C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304039357.32576.5977481288774289166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68dba295751b0b7629f5bafacd736a82f6127324b64c8de0089aedbf473e99d8
Date: Sun, 20 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753040393
