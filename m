Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300163D8111
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780054354; cv=none; b=XNu5v4ZAmT0IAvywdw0UYXlam72uEdSL0b6yllGck+u9Wg170QfMZj3oX6cqJ1NJsV+mYmBTfRXCa+eBTXMPym+wWHNNwyJMqLZKFAdEQIfgJUDGd0htMv7OGB6uWwQHn+/x2b48fzuFcGIk4YV3GcgvodZP28wsPFjIdn1j2zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780054354; c=relaxed/simple;
	bh=w5vSfDSYeL43cbCJE9mR0q3SdqLSCMEm9lRUUg/l5HA=;
	h=To:Subject:From:Message-Id:Date; b=JDWJWFDEwBpOv8t/ZU/PNmSmkRB1O991lYXs9hmk7WL4O18LvKDSz/oPKXWaFAyue9CjcxrdhVqk8GDnyqNHJGv+tM6TffQFUjkR8sByPHupkMNq+clpBUJ/cOacmgq3KeGcXewn7JwOiJ70trYLS9p55DXIgIGpkzEXlVqUSZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYALRIP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYALRIP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B471AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780054353;
	bh=w5vSfDSYeL43cbCJE9mR0q3SdqLSCMEm9lRUUg/l5HA=;
	h=To:Subject:From:Date:From;
	b=UYALRIP51c4KGpHgExf3zsdC8zfWSyBhGHBht+FqQRTZZEAfbQ/l+NaQuLRBfKl78
	 uZ4HdfxDwpH83Cdsb34RRZ2NVTd9BC+hlx+/1tQMTa5JL76zftdXJu2H9cYX7xVcsP
	 jUaQpNkcCP4DbsvXP9D2kiDB2orkS/DwgNPMJyNPL1IUTj6N5RZpIsASYeXdNEKysK
	 kAv5QUuDWYkvJ7hX8thXXJLqQlccuiJ8GdMIJZFZcRUVAHxEqMrt+3BUvLmj/Mxrgk
	 fJReEoXznuqvuYHGkNkfLjFzglcp+0aolRqEEH38agF0JoJbihpBV+KkX8Cb802ru5
	 CQZjeWnw+3GrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8602CD6E4A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 11:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005435368.6498.488636348534439328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3368653253a954b9cac8cd499eff1fe3a5c4897f2d914ee1be41c7699255cbb
Date: Fri, 29 May 2026 11:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780054353
