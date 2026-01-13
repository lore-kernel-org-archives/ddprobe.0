Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B58262A6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768307634; cv=none; b=VAdqI5m7do1I345RGbglrFSxouzZNjvUSziYE7+g1S47rXz44nk0sescfVzjjwRQC47H3edIC8vI/XLbDEHvT0OgSVv7bckEdZwFfNjrehXNsVdcNs6CR5tuk1rbnKsYjUrMg5hebwFa4w8asKOGDnPPnFwjjDL1VaXrCCU/Vvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768307634; c=relaxed/simple;
	bh=A+r8gH7TWzqcig7WHE4sehpAM/mN1XJ3/1imXn58aUs=;
	h=To:Subject:From:Message-Id:Date; b=WcGVm03kKMVCpHI+bhnakxdos3Jx5EpsrvptU1wSax+edpDjy8+aWri9/Ic7KscXA+jG3RJqvKd0fCFbGomgnjkDMUjd/4eop5i8b75TFOHWHKriyuAKrTe3F5Hw3Y16rogx/WhNLMVFferVoswq5f/+izJ40J8fTTVDShfnbXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/Brr0Cz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/Brr0Cz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB89C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768307633;
	bh=A+r8gH7TWzqcig7WHE4sehpAM/mN1XJ3/1imXn58aUs=;
	h=To:Subject:From:Date:From;
	b=a/Brr0CzlYWCxVvzLyzOZ0k+EoU3oY/L+KPPkAmICGIxAfb7Aj08XMyTSEXydvTdu
	 XFPHCj5wWO5unc1d5XQ6j2U2IPvGIWCJ/XZEKdPjIoTytMSMmvJo60YgZgb0JQfoNL
	 T1tHhxdC+Cl8J15XJnjoXMp3omIZPxvKQLDw8jsm+DbCBMj0mbWngaY449zs/aqCBZ
	 5vesssznzeqEAMNnGHFAOJbw7qjLY4FDJMd2AEQxMUsCo4Zi0hkgrcTK7afouWN3+g
	 zhODqoJOrWsvElwCfS9cwU6RnSoMN23s8/uOD7ZOVye82YWNK4gaPmZNDs26S26I2Y
	 QOyCfK8kjar+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90548D2D0E6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830763358.26475.10508874764940276087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5bac5d4aa2a5da65ff8ad6871315cb9c7e490473fe45cb40d237926f07b6969
Date: Tue, 13 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768307633
