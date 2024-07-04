Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6268E8F54
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720055123; cv=none; b=XFfbPLGn26Ne9kIkoTc0NasWjV0M7S7MW8i5hY+sLkWbntqxOv4l5RZF/B1YQbeaQgvphk0LGZCU+hym3Udc74eEbXr188L+JjPJQEeYyrpSVQN+yz08zL9CW14T6RxKWepl3xPbtSLhyDI9zOp+1zgFeKwbhYX70/EuOKrn9cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720055123; c=relaxed/simple;
	bh=C9pAj1/HL8ptfCZPqiWyzzL/3xreZ08aLEXTft5jCq0=;
	h=To:Subject:From:Message-Id:Date; b=TuD75KY3GzuWgKuJXlXykSu0HbZOSm+upfK3L8FJWa3wUcCl1LxQFxPiH+hcIpsUKq+eCXmzvh2xg7/3SdfBdgowt9lpPhbZCMRnJHUG7kqqHM1gKXy3qWwWvuDuDvCIxrc0PuyD/EG2dAVLaqRdY3qop7JTMuo+oB2yWxPEPuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKLy5Eng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKLy5Eng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE91FC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720055122;
	bh=C9pAj1/HL8ptfCZPqiWyzzL/3xreZ08aLEXTft5jCq0=;
	h=To:Subject:From:Date:From;
	b=ZKLy5Eng9sycoCcIhxCv/dhJnNunpjXmhBu26rHkXdmBDw1b7rr3BOgU2OIy+Z4kf
	 FA3JePPxF3lubqaLGi322Dgs/MS3/I+B96ENnSTAsYlmYcpKF/+hdDDcXyuIjMMSzi
	 Tpwh2VafEXjN+S+11OgmYTrjBrTp1e60EDDdBYPYGI7szxuKu7LJuFw736g2PhxltP
	 MSM0qHPjmTuCeI+T1MTGu2CC9KZSp2fBoYP2t5aJpDP+/Sll2TRBLTL9uIeMJkBXk7
	 /JPaKVN+UampngfL0STCK9YpLW6acMuQqXK+gvmICry/36ZyzaXqaQF9W96uhVu+f2
	 pbto3zvzGaqTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6852C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 01:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172005512279.12933.6935965267807742411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55b0752d2dfb5ecfe87c78a43524445ee08097c13a7bc1659ad8f034e55b5b2
Date: Thu, 04 Jul 2024 01:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720055122
