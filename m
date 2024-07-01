Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 732E086131
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719874523; cv=none; b=EScqy+wSUA4c59Oqi7tpqpO4rEoz3OShP/dONW6qY7oND/vfLMgPbIUToQXajebbr5rM1/A2Xih7bLcRsK7mWFbooA3NmJ+mQLTaXxdQaRXG6DArjP5r2BTgnONH75MbdJ3C/13WRgdKdvWVqkd7gWYtwuylYSvnA0YCv0721PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719874523; c=relaxed/simple;
	bh=k3UcPBirVHiQpoYYkrPBYvi1BqFGzRiDsMjOJVPr5B8=;
	h=To:Subject:From:Message-Id:Date; b=Zlc70qNhIr023GdJQlKkKZ2Ba7KVqmutChNcjxVcIKWG6mNXWaal1rCTR8mg5q2n5GAO/SKKHtVStqPTgtCXVyelVAGgaxdEez2aAp8pDJI9iDcmuW8fCZoYIwfmRf0zmxsjAukx0O7XzekXx5QF/BrERpdRX/fQP6erhmf8OTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVqfrMl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVqfrMl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 001CEC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719874523;
	bh=k3UcPBirVHiQpoYYkrPBYvi1BqFGzRiDsMjOJVPr5B8=;
	h=To:Subject:From:Date:From;
	b=MVqfrMl18iyxMeZYgPCSzPpzJaRT254IMLKgtfyq3wq5ih9aO75HmLhp/e7z5R3es
	 BzsnWFHLFal6QSHRBnDb9MRhUh0Q7GZk8lfkdIvKPxEvjU3gXaMjKUogWf6Xk3Qe7d
	 CTot/erDUJ2RgP30hrkOvZTZaDhV7UZyeyxFqkyFF/aX779r/7XPB8KAZ9bygCVBVK
	 J2ku41SmtgrC4CXjZqSlcW3AMGr+yURJ5VMPE3iN8G9fKb9nzwL/S8aOvBqwQvolgP
	 nW1AFeeH/ZbV3rBADEEGl+KkYKWtSGQ97vCxY5iUgTX1v6mv+vjITDrrWQGGu4Wfrt
	 Hgd3Ow8Y7MMTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE9FFC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987452287.19017.15701136956363208059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3b8a3bade9a57b9f589c99401c43077a6895b6873958c5ef91a30422c52690
Date: Mon, 01 Jul 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719874522
