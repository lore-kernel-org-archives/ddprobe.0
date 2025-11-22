Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B327FC0A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763854314; cv=none; b=uOCubUPsu4A+KX5mODsnLg5ms3kgAZokZo9gwwb1nRzaVOzpRGCZ7FnK7qlm7X4GbnNxaE9lZSuF3hei0gv1bfLMHHu9csMz/neg68di0VVqJZqoJi/NXhMtwYG9CF7Gcd+NQdhqjyy0OmWoikOtcu60KXOXhJiVRzdOVxXkDPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763854314; c=relaxed/simple;
	bh=Tkis0ISicKkhnNvmyyMIV0xTapMnhMVNTwuax8K1I6A=;
	h=To:Subject:From:Message-Id:Date; b=VZAYA5jbAQe8x3SD1zbm8duhP+0kc7WGdIlFWihUSvJ2V3OPj+hW0ZHJg3Eav3j4Q0e1tHjwuI0hZDX+Qk5buCFCi60v7pNwoo7pIx/d0aGHPjxW0nWPU0FFyOaq8GE91nplLsBO2HZ9yPYZ/ZpLsOSu0IZNQGlJaxecyaGiMNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOBYnmJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOBYnmJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE63BC113D0
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763854313;
	bh=Tkis0ISicKkhnNvmyyMIV0xTapMnhMVNTwuax8K1I6A=;
	h=To:Subject:From:Date:From;
	b=kOBYnmJ4mRkKprYfOEc2Rbg8jC2HWUMWFnHjAGjUdx92HfQEsfb4q1V8dbeqSJrZY
	 KZTx0nWIo4+qlQtcDfBMf8K1iUILbaBcDVaHji32P5AKwzHu7iJ8Vl+Qa3W+zVkihI
	 9JIjjDZ98oOWqglVgyj/9BIkrFzmJayHB+pRQIBWgmu5yNgLRCOhscR5xyU/Q8TSSE
	 iNIW6AZS33hWiN2v6yog2MSrZuMOUXaB3kTk0sEPrsedPioHClwtSS+BBor5AHzABt
	 +i4cspZGdOY/BEn9rWYb+ZKWIuxHAseE+z1MK17YXOzM/bd/weunsUosxKNN2rynIl
	 +1dbarKZww2XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6B5CFD2F9
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 23:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385431359.5309.14847352220742097308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ed441e0f66b78b2500b8611dabdc6a4b4c13649e13ac67b096cfaa1f07ef5f
Date: Sat, 22 Nov 2025 23:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763854313
