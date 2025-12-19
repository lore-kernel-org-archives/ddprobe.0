Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107F12F3621
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766151234; cv=none; b=i8BLFFlRd7toHZpudunSGE0o3RKY33hDNzhrI2TAwrvTMMxV/A+bac9lqWhoV42YZHMMjcIJmiK6lm6IO57tfoz4+7zZ4c2utAUzZIVdXQsmQk7cT/yBy0gqjDLuf+j+v+TJh8nCFIZ28J5bcXgYlfOT24HoMR56wGQoWSg86w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766151234; c=relaxed/simple;
	bh=sHVScot7Cj5ikQsbZ07lwPaSjgVYCVqoP4lmv+oWXi4=;
	h=To:Subject:From:Message-Id:Date; b=Ky1dl5xHwYXkTS8MIhQ9DLJ7jdfZjjkmo5HzLnzL8zTHxzGG+L6UcS7pTAn2cnse8jq1CEbpGQKW1Zo1khx+n7egIyuS2yNV4ZA/tllfXd2vb25hvmVz5lzbBU+brtb3FQXbQ0jB0E8GM++sI5GLAPUZes3lo+7GZlzRice6ZQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4MgT32X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4MgT32X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0603C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766151233;
	bh=sHVScot7Cj5ikQsbZ07lwPaSjgVYCVqoP4lmv+oWXi4=;
	h=To:Subject:From:Date:From;
	b=A4MgT32XQKI2bWNMLMXaEc3DL/PsutGxw0pqui1Eb+Hdmn8J9gTS6JqX2kBUfz3wP
	 XfkOMU+S7ts0U9+dwMLnkvgl0gMQFPUTU1FBOXwSwJIhGoiImF99RhbMqQ84LeDye4
	 Zl/nFXbJ6/YMUyqQw0FpCGJdc70T9NPiSkFi0cOEjhA7dH8f8B0r7FWxchaC0AKWiy
	 q0hXV+8k9KU09k69WsDqCYLFB+svPXlnHmK2otpc8g1EuLnbJCrEMgs72gKgnx03wn
	 RIoHicpW7Rh8GT5CWmD7hU+7SUEFDiPamS3khg/m01URPBAQQ1y+lQU6P34heVi0VY
	 f+xjirkNWHDOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90412D78774
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615123358.13232.1096962412658773907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7af70dd3958d1a5056eb729c0adca1694a6dc8f35a30a8eb112016a54a1cf49a
Date: Fri, 19 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766151233
