Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E392628F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764491574; cv=none; b=s+7z5vfVB+9zBemMXjMTaN0Dw56JrVa8aPgt8rX5OA7OT12SIfIwzyG35/aEXVzCrCiYFn9xfY0qpygCwfKroBSCY+oSmmnnN0usMfL7FTkKJ2Tjj+dX+tSqiExCbldn3wwbZk9v4kxE9rMlMeSUzHAXCkIYXNP9Z/zcDe+/tyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764491574; c=relaxed/simple;
	bh=T8TdjznbRyQkj5gpBG66n9YAvm1h9zcvR5VRmWYv7Mw=;
	h=To:Subject:From:Message-Id:Date; b=HtQKhGIWPbWh4hFb96tgQJJZhja001B3LbxKyLrSrGQkrNRrbKQ1RCSS/OTqPJz4lrsf1r/dhfGo9Ez28RB7lBoFeodgG2/3pT/VMZODBJ3HYvmcr654QiXXw2Ev+r5CmFFk4DxIa+KBfwPWrKmqaztBupoZ0doqGPBEvQCwpwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG5a1DVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG5a1DVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2BBC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764491573;
	bh=T8TdjznbRyQkj5gpBG66n9YAvm1h9zcvR5VRmWYv7Mw=;
	h=To:Subject:From:Date:From;
	b=GG5a1DVp9hFUpZ13bkq0Q31ZTwZKOkmArMbX8Ew8JW7tz09SKEZNzkmj5o0u2hTAY
	 peBV/FJ2OV6WwHkBOMkvbQ0ywjS/kqW87/lJ6gEZ35Ml6BtO7YGabHR/pyeFpCdf3J
	 0JXQwwkBV+MdMoNOvMypVfB7o/sykrI2Cq775HH7zQdzQtpOuAN+1N1v11U2lRomxS
	 zhcu7gmfv1g76/04zEhjePfJsGCZlt76Faz171kRPdJpWlM4+9ggZJz+/yJSs85Oj+
	 Fgc/cntrh+NOdrLJA+1hOcAEt80HBnpPL+iC1RzbZxtICUhj3Ys0YJGmafU9QA/lD8
	 yIT7xrbwbDpxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E29D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449157358.25841.12451399389849132011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9d7b6b25c370320d55820ad5465e5a9efe6d8618208d4d121144cd7efa8394
Date: Sun, 30 Nov 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764491573
