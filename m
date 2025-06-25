Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E577D07D
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750814394; cv=none; b=r320EpZWagoKymFUILuGWQixBbK3OK+YpOR6eRFRHZl5ZyLSr2vtfKSgALffcv5Vf8UaSmk3i3oZdrQmGDo2/EmB1CEe/R1r43EFKSnQRI7QcT84LhEU7CiLAic94y+uJ+w0EwUcdHaTTK4RGcFod0FLvNtduKnPI9Y9coy/cCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750814394; c=relaxed/simple;
	bh=bjpjML3Z/YIbjlTj0kNxQHo/wtxJsj2NV9POdjQ5eoM=;
	h=To:Subject:From:Message-Id:Date; b=LFDROEcu/aE8askO+PNkHu0QGvVF4BGAVYtXEAllt9oE++1xMtDVy4G1GTM44FvmCX5f0d769NKH4F4uWjoA8u/JhzNtSV+Xd3q3eEkmEO+KXmZtCXKL3af9AJGyJ8JIHi0Xk8s6KEymTR0wKtKarJTeo3RW0jNJLzEZVBzXI/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6XMB4X4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6XMB4X4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C74C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750814393;
	bh=bjpjML3Z/YIbjlTj0kNxQHo/wtxJsj2NV9POdjQ5eoM=;
	h=To:Subject:From:Date:From;
	b=o6XMB4X4a1qGy6SwyJiNWVt59UOgXgIL9hQm3q4ORrP+I0xVwSlyvu4QCByBzLufL
	 MKUUPB8yz4LJVWtHPqSCXkBfN10pFvUICIvt75fv5FNXKx3zcIDoOb32jJF7hv9pan
	 9HytBhfbCdnBGymagFxk6dFdW3ZSI3Dde20ALgz6aMmXdaNgTwB1T1p64DgZq/Fv/A
	 wf2AsFXgmOHhoT7aEAdI+mlf/AaOlGpw7qXf4yKIlhKMt7a00BradXjszlGukC8JQq
	 NlzckYxsaE56QSjjJNRQLLPlrWAWHjtTXd+yuOp7jvshzMZ8XFpPtDZHx4FInGdhku
	 ZWr0clfAiIE0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92806C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081439358.12001.1181610036395479724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd3b6eb5790d4fd1232964364ded5ae2c1b5fe18112a786c3020e77f8e66a60
Date: Wed, 25 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750814393
