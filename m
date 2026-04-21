Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C152FA0C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776785854; cv=none; b=YFA28YDD7YtVDffbgY5p6YmTcy0YxDD34v8aVkbu65UWa1La722LoWZubZk0cQrRCHG+mzBJajsWNzO2mSInNMLLS71hfgU90Q8ymjUYBMsLkB9PsCZheTOyoxLQSVm2e3nh0svWYZpEznuiH03ymbw4uabwK9XwjFrwcUHvJWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776785854; c=relaxed/simple;
	bh=y0CL8mw4QpxOjHEFm70YGu9JbkW12eTbjhf1/S8qcTE=;
	h=To:Subject:From:Message-Id:Date; b=Dt8HS424UL1GZ+gJFPcj9WsjGRygEQtFjcERaCkjWvDqR4v8Vjnugqpr5b2MbCVfiNf7Kcw77Lyiwk6QHCrOx0jjyWrw0LadN1WeeZ3RdAepSaeEDEdhV/PTRzWOSHHw4mUErmg1rH3I0G5iKYBBhv1aLxx2sE7QY2FNoYUWUCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSiOch7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSiOch7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB9AFC2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776785853;
	bh=y0CL8mw4QpxOjHEFm70YGu9JbkW12eTbjhf1/S8qcTE=;
	h=To:Subject:From:Date:From;
	b=QSiOch7sCWu4uxzy5lTYPyMRdOgFA9DCrnksH6nlULuxpTLUMHokrvvYgsfx3oHGB
	 rstUEGS0XMeKuf4ate+9Tf/Z09choNkypTNU2RUKb+cxCsrVRWozDKeWAh3tsolcpD
	 tqjm5A7lpOV2giQZs1wRK29RsFxH/u2rsUEwAxC/o8GC1OAQPj1uZCl4OJH9ETDpxm
	 nDQ+I+hvK/Dxm1Amy72OvJigO8aPauRyniQL3d5DOGPzThftDtrT9l9kvA4Y7vIYWl
	 Rk+IhbzXvdA2abxd9T4PDZG85ZBT+rCnyd50SMXo6gGqAk9yPSvr1CE8Cf4Tw3NyXv
	 4h6vfnhzAYzdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA08F8FA94
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678585369.4285.6137428377266372328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c7ff4f16292c7ff119b9f38fd8f1ec28bffd5befbf99a32b5a51ac66f9498f0
Date: Tue, 21 Apr 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776785853
