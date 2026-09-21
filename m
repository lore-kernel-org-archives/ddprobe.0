Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544113AF66F
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790020234; cv=none; b=U1xlFdfpbcBI255n6RpF3EOr3j8vKBnefljqbc9FIyTDuO/j7E2jmXE4uzTjkTuaGqvHbIODiR/5HW7Op6bi+bqpvpNJ0lUnC5qhgd02JZ+lYpExdkK+m6EejSMnW0KWOxNbRVp9vsp3ifX4aVnMzHvEPHEr2su8/b9lPlXhR4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790020234; c=relaxed/simple;
	bh=YKnOSK8TjARjSlp/O+36MiBsNDF5/LoSjlztWB4DzKM=;
	h=To:Subject:From:Message-Id:Date; b=OR8JeGop1FXkAMqjfL4yJR3oDA1Wy92Pujpo4dFbSsNCr0X0qBk5/XVvqGZeH4heu0CxdWPR95FfpdqOKe1ak1LgExcuP4FrJ5ZH0KqF3VcxJZsJ3kTNDutROMcY990MwSk9NEFY11umGRlTJ3BZeewCL8pXSlq5FPx8wP3Fie4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gl+j21k5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl+j21k5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC988C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790020233;
	bh=YKnOSK8TjARjSlp/O+36MiBsNDF5/LoSjlztWB4DzKM=;
	h=To:Subject:From:Date:From;
	b=Gl+j21k5rGaehaEJ4STwu6k1XEbT2SVSaB9qlj6pbkKxdc+dKreCoNkZHyMhBNL8u
	 yu0lUSizumpELgRA1SH3BsebzeOHgZbKhkkAO/CzY7WtLPFG6ktX53pNjNl4HWC7QO
	 Hn4TzizQ87j3m7jmtBVvULNPXkfjV6xoSWy1vvdTLW4fiTqdCfRiluhoIc0QM/2CNK
	 51fBV930XYt7w+BZcuyQWlzuHCV3zijcC9QUjS7eRHrk1xfiNgYtZnIq5mK2rmL8fI
	 B9k1UkB9G5Q+8NqOYIQ5bXuIReJUUMJb24ijqIrrjd0jWxFy8d1j7HfLUPX10pJKkH
	 YX4ui0AxhRzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6533C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002023370.3139.14767315600667102491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1199efd8ee62b193ea9785cafa47a6a1746f24c3558911245588e04be33ebd64
Date: Mon, 21 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790020233
