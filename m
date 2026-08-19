Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D2D38F95A
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787108434; cv=none; b=XIccvk1PL4pxhzRhh0rLd96tZbd8GIX2saOsGcf44rvG8nPKe9pbLDQtS2qRywu45YRyi/QD1cuC/z4z4otaQvLQVjsa6pWYzk6ltY/sh74x8NPCrIhKZkJEdqnE1L6FuUhwmpuh3g5AYjOI/rqZCex61qnrPd6w95tyWEse+rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787108434; c=relaxed/simple;
	bh=kjEFNhl5J7eg1LE//QJRxSiGz1MwQHx2A1fayjNWAY0=;
	h=To:Subject:From:Message-Id:Date; b=HEoq2BIHXj8P8ArtozEWCQw2dm+L+qIBwWJ88NErF++vDNaO/nC7Ce6JI0JvA/57HbinSKo3f9Dftu9jjBcc3DLx0w7C00/EljBtnORl/4PEn55MBOmvDWcHsmA8aBzh29vPT+0wE5HhoeQ/GosMaZA0XY1sbauM6+Ze2CNW6E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BYxta/NV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BYxta/NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0135FC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787108434;
	bh=kjEFNhl5J7eg1LE//QJRxSiGz1MwQHx2A1fayjNWAY0=;
	h=To:Subject:From:Date:From;
	b=BYxta/NVwEiEwO3gAuI8gCJR5QPrPWqy//91GIk47ixo3SRModLbz18nGYeXlXZkn
	 ta01ej0OPq7UeEw7lvM8Ci4InRa3ChgHs0t+A5KTnJ+UPcjbpMT8tHf5UXXLg+75kX
	 lj6AWbVsWbKbYrOw4MAzRZPuL+Nqldp1oFVH7ZNoKzIE9RVZ6xpssdK6N0wata+2ig
	 Ki64Yd7z3PvKF+//Y6VrR2oiF1imSqX5F3WO5lRljppJzAd6Z0fFxLZxGXFO7f2LNu
	 7WftHopl17GH7Sno4I4kSHHK1lnbenLflvFW3GMe2fxxAhMSGGj+EKowmAwXjfJ89x
	 goEkXmtnromDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3AEC5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710843374.25596.16455187701318204524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5de70275e3238d02616535904c823aaabaddf4a48143cf8447d2b6180b375d69
Date: Wed, 19 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787108433
