Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242C83093BB
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769087634; cv=none; b=eDDFsBJgMs/PRDFh/eJ0NjwrL2PA8adsO3FTKL+NDQE1ZdyW1AQPH+55ipK2nY6VIHH/27KIYwUhbubUcKbWv0pclaam4v1m6XfL8FDfMGR8Yg/ChBcPJIPjXA2PtzcLIploGha01h05F5I9FonbRIZ5nV20F671zibU4n7hPYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769087634; c=relaxed/simple;
	bh=17wIvQ/jWbKTNrN7QLCKNLgGrJzPbLcMc2aeA1GkmeE=;
	h=To:Subject:From:Message-Id:Date; b=UK0TB2hLZ6dJz1OcmIU9cGde2Z09XmGQ//Q7Q137FvU6evZSJz1HuoTDPKJZZa+ZEt5yZEjT+0xehdt8FYaBfOdtJACwo2z6K72qUoj8TR1N/nZNajWwz58MLfUm4/NT7GDNZFw8e0zvJPhdp66+ka76qme8wU5u68NTQRyXZp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C3ZOZmG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C3ZOZmG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A345DC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769087633;
	bh=17wIvQ/jWbKTNrN7QLCKNLgGrJzPbLcMc2aeA1GkmeE=;
	h=To:Subject:From:Date:From;
	b=C3ZOZmG4/w8y9strLwRH7BmDNiEmw1h3C8qsJz8y6NuXQS9GTBT17u+IWNwf+6rXV
	 GkGlQAB+QxSV2uV0VMesyeUWlAH6LguWhQTRPmMFuYFQYQUVhZiUlTUNF51XNkCsFH
	 sBDBicgr2oAmPOGT+aOPJORkpZeYM+bKL1En5XeTY52TfW63wlZjhsRLEuuwoU8nBi
	 /xMtBGULD52vkJAA0bQ51DMevfsz/f6uCe/7Ug62fzi/AsOD8plw6EH+fmvsltTmvd
	 tyJT//60Z7kuMUWUfYI+Yf8XnX4iV/hthZm+7iea2kzW5sIULfKA5pjgI/L4BP3wOW
	 3aHfnuWMzrWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7ED3EE64
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908763358.31689.2220828657464269378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f45436a284a07c4fb6a64c878d103c27d2a78a243934022c9288c45103877c6
Date: Thu, 22 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769087633
