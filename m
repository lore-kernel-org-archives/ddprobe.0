Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5411D88CC
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726232154; cv=none; b=a0kx6a/AAiwwiBZbtVcECADKH6V9e9kiwM/Pdh1q1aHNR/pfF5lW/Qoal8UceiHyA6B/wF4IO+aKSJSczYQfZNTWFuXT6CSBNlP7oWdh4sA9LdECTmZDxBzFkulffVyUUQh0QIyra52aJR/NGoF1GdFu0vyU3TQmMyAwS+RjlP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726232154; c=relaxed/simple;
	bh=we7tZYCYSTQM+0uZNe1XPF1EXzLZCzs9VC0Pgdf4PoE=;
	h=To:Subject:From:Message-Id:Date; b=AH9SYHLd38BtwSvbC7FRwRbrPc1ST9k4ti/7eF5zvOOT7QKFxrFZpbIlI9AW0OWblz9+upUA2taVtszW8KPrLILaypGhpHQwZHcSgMqsTjIxbCHtQmpiArEiU7y7zk0Hx8Wow85HcnA022HrRq2fqDZ4EzC1p7WHH1pfuwfTss0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErncFNLQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErncFNLQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAB7C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726232153;
	bh=we7tZYCYSTQM+0uZNe1XPF1EXzLZCzs9VC0Pgdf4PoE=;
	h=To:Subject:From:Date:From;
	b=ErncFNLQ0MtV0tVUNt8Kz+91vgdhaQGJdS+NB9Zn8KRKB3cU2za2f34SSPe8A5B97
	 aVKOQI+FJpPYw7sRtfyGm5ATw9YxIouHdSaQNT4IzL1X/5EO7xehZWypQoT5fsuYYu
	 dW7jObte3W2xbEhHot2++KcCLiI98nIt4secOvTswrL0wJfWzGFfHq9rBZhB+XgvRh
	 HdRS8v32sEblV3ss712MAuqE+xLqQuXBvo8p5AcPfb1JaYmM/IrBguQpcx3mGdxcH8
	 NTe9P/8WLyvGeWFw7o9Ifm51nenOhS/Scno4bnFIEhhdXvIJmZZTPeuLV5gvSX8eYB
	 EVhprEfVDA1dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95033EEE26C
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172623215360.22672.3221442081753765718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381424dc411f02694d81cfe1dda08843f473fc10deb41a93a48432ada138bd73
Date: Fri, 13 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726232153
