Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339E633B97B
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762873794; cv=none; b=JHVLYBp/g14bxP9Yh5cgxMYJz9F/UNCc+aaJdYjzEiGe8fcfnqf/YBsEAUwdOECH6gxyBv/6YtzzRvY6NO16Fz5D5/PFd1lkhOSi4Lf7ldcH5uHt7EjPftQStezMZk3z3flX1rYt3SytSCZM0Boie9K8ijuibojqyfBzOh3ESs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762873794; c=relaxed/simple;
	bh=aFP8qJ6Sv4+FT7ML3W2qTmWADQk2XWn8G6yrdO+DQQw=;
	h=To:Subject:From:Message-Id:Date; b=cddbe3yoAxM6TvP4ZEcni2wKDlWib98c1XdIOMW+WQjBDco/wXyJ+GG3VsldZHRSz2sg5K5pjPL7M/FDXyTVC7fLIEc2N9FXSVxxDZWmDr2oAWguWXTdEnyBWM2zAI0CB0cGqxJHbRgqMTMapLl8ZYCbdciD+mvUNqEVJTfaOtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TwR1XuoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TwR1XuoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC132C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762873793;
	bh=aFP8qJ6Sv4+FT7ML3W2qTmWADQk2XWn8G6yrdO+DQQw=;
	h=To:Subject:From:Date:From;
	b=TwR1XuoHd7s1gsrW081nU3yjGtSLwHZHObB+w0OCCLPcGI4uYrpUytdM1EpZ0kj7z
	 N7/ZfbeCFpsQiS4/wBZVzfy6W2KU9AecHALAD+UoK0Xk4Hebx8MMUVtfOUtkESXM8A
	 FvQab1YGtMBnAKwuFCdEH5UPqfmjKtkBjqeSEkwSr6IiCZy+cf9wWZOceFhCwHzMvN
	 /EUdHWs5SETbJmfj8aA7cUQ3LoDK8FacrlnnavGXgExVDRZ2lPTGRrgBaW5CPuDeWZ
	 0QnBW/iBOtNR3XT3mBA97n0VfppTjLEpBjfYFABGETQ3IQEk86EdUJeg5EIf+MoOh0
	 a2RkMCp7R4MDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93586CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287379358.6731.8519902527100706672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575197493d76e6ab0dec6c83fdca045fe71206f7903da0bcb038fcc2f63238bc
Date: Tue, 11 Nov 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762873793
