Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600B51CD1E0
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 20:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732220754; cv=none; b=F1NPIzjdqsFCWbKbzCFgCY2O34s5xr93H2PtZAwp/Y5fBvfrWt2aaz/CThU/Ehojt1Os8EGjfEhk2m6UIyBlhTCnvnPgKU+sGFwSt9VQPoaXQUXi6VmHmomifHzIhz7Me0tkpVx0Ava+3/NC5nsnYaUJxZtBQVpqTYhEc/StwU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732220754; c=relaxed/simple;
	bh=+UgAkrZTB3PFl0BFUUxNX5Lu4MTYtowlzHEckimU8Mo=;
	h=To:Subject:From:Message-Id:Date; b=HsfSMxRb23zbvpKGrYf6LZ+yhJbCmB9Z8IKVdI0BnD8hK5JdJ7XE2TrpJHh7c52uzvBxSCFtQPYHWZ2r94UHzaUUNqzL7FojtDT5f7EAaT497o+b7LXXuo34deKvTLJfZbdytYxfoMoX6oDcBx2LWAEnKIzIKkjzJyaSXT4aG1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGpX6QNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGpX6QNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF962C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732220753;
	bh=+UgAkrZTB3PFl0BFUUxNX5Lu4MTYtowlzHEckimU8Mo=;
	h=To:Subject:From:Date:From;
	b=NGpX6QNVlNnhnN+CXM7OkzWxpyJf/fvNCktDTJP1+x6AnZlpnQGLc6qU09uRFgNu0
	 R//NNxlHF9jnC5+sr9TP2GMvx2Hl/rac20ui1tQQ4uAYNSjizs0ab8/zJE4isB7gyL
	 uP9WuB0qi38KokTwZeA0v647xGb3S/H1gwhGfuAhbLuzmikLzVXdeuX+jztyo1C1oR
	 Y29xTr5ip/AOKlXFfew7dDzjswBRIEJ8F4K7vOViAGhejm/4LqBBStDJ3LR5z3d8ct
	 +CYDyaj5wuyoFH85vHNcxcvXdUMlEZeHfeugUtzPN3cGTAbnw4wjLguLFRZWj8oWcX
	 m93a8kG3TeudQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF965E6400C
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173222075368.5093.8125994084593080926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb35fd96d8362f22c9e62f13790682cf7a0e45dd3195af1d1efdc5251ce93c1
Date: Thu, 21 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732220753
