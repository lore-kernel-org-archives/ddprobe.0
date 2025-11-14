Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB6E3081BA
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763158794; cv=none; b=S+6IwX3WA2xf7VXzMPSUQY0Bq+6m+qLBgzF4Vfk82KS91lV4fwhKy8+2JAkV8+ktXJ6rsSJgVnPJgYZRFHKz2oooRjtxvaxjV11MtISaRK5W/IewW+jjnC+NiiNEakFsPPN016gpWmHXyaB555aRHxBIgqA0+FuFtFyKsWAUzSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763158794; c=relaxed/simple;
	bh=7qrHyMbaBbcb7JXiyf5Utqs9GiWcKt7TYeG2F3HBZ4Q=;
	h=To:Subject:From:Message-Id:Date; b=j6zGqX6wuLlksDl9XTPKyKt5KDm0HegNVwTH0ZHRKHnvGiHzT4sASw/bJa4Vsky2s+IMY2RunVUFeo+19r3mVUZ++PtTwI+dqxqogUTtPov5clcPDC4HbUFvnIE7RttLhtYXiXbMupDsFvefgSaXmP78tADINHrRe+iqHV+zebg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN13culz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN13culz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA3C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763158793;
	bh=7qrHyMbaBbcb7JXiyf5Utqs9GiWcKt7TYeG2F3HBZ4Q=;
	h=To:Subject:From:Date:From;
	b=JN13culzy8LvjZZ2+fwdthrjfbjwWHUfzoDJxFPHPI4KDWqCSER3uLlAUhyFfeNAp
	 J+I2wipNhGSq9Zlyt8MXFn57LCjVg+6+g0+1+SlWpUMPQWnROIEK4hXSiad0frFbmk
	 qGVDT0wUv1Zdn1MQnBT2xQospqJb+PSqMWU87qebtE5+/Q54wHf5bLnUH++7T5PGe7
	 NfPSD9UGcYVoadEubf64WisBx1XHiUnoaJ6LMfmdapAht+yOTLVRXfS9gPNfqYcL4t
	 5QzvM52ge3egP0QEuOKO/XzmgBXasWlEGMfmHbpw3ev7m2bYb5vPL17sT+TbWc2EKc
	 f+y1GfkJw77QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC3ACEACCC
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176315879357.20857.8341318232066666602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da5b0386eeaa184fbdfdeb1b4f0e2afacfb79e90cf6f42470b49f30f9c8fb5a
Date: Fri, 14 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763158793
