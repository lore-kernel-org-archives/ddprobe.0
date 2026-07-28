Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB133F327A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785241834; cv=none; b=lNCp2D92i/w/PDkh8hzL3WmHxqrVCqeRgElxKv38sYT7EtJhwa2Sca+6TOuatiT8LM3++X1ZW8AEiDcwvzhHfd6LcftO19eBWh56Iw1lrg4RuVgIoz9gC5PXlUNApCx4sbt2O6kjGV36SVMYkOEcrdiP+gcLFqNQTehvk3Dx+uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785241834; c=relaxed/simple;
	bh=7BboHi/zp9T/fuZauHuZkwRvm8qptSYhDaNCrYi1JJ4=;
	h=To:Subject:From:Message-Id:Date; b=N/CPypVsDsDEvUklosWSa5+VfgI8EHoJ0MbTWJZaDVKapzUEVSaUWaQtA4o1X9+sOZatJHgkxBGkPW6edWkT09xXLxuyioWqpEkYSRuLlH7n05U8/X4MMYsV9TdJgmdX7Ud/XDRCRHkjonjnuUFm4+NJ48jKnZUNlbrD61ZHzvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7Zn9dNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7Zn9dNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC619C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785241833;
	bh=7BboHi/zp9T/fuZauHuZkwRvm8qptSYhDaNCrYi1JJ4=;
	h=To:Subject:From:Date:From;
	b=g7Zn9dNSEnDEiqHg6lEHzJwz0FBNPxa459LZBxA5LssCyBVwD1w0jDFuHgkiTMtYK
	 uxyL80XbJGRyvDiQs5mOMMa7Sf8L61zQjAyAsbNDQED1qpnwDDz/kn+0Dn4KW60Dwx
	 7jftwjS3/AO3OHYjEK2u6YaZbiEMt4wHQBZCChfLy3XPu1rbw3roDdtYzOZYEhbzcy
	 vYuleboce9TjMp6/+Nw/Rc5froYniQDNH80sm4Ggjs03DlTz+RlMlCjtkiwsgPXdjP
	 stZJYk+v+aqRTu1d78Qk1LXJph/rPxVRR4JkwFeNiXUS0aWjBAdePKn7OQ2AvIa3s/
	 DTkeJzqlUicGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9513C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524183368.8617.10357148939674250982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ec413ce09d68cbab103b3f4f880932b0a304289ee60185cc64c2ddfe71756e
Date: Tue, 28 Jul 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785241833
