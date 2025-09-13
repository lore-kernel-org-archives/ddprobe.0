Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E91C2E6CBC
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757743794; cv=none; b=TdPoOwe+iB1LNPKqsrX2rAseLIPvFHnPc6+P5WjiWfwItjQnBMr1h298RPH8tfRWUNrKRDWsPHkOLFjr+Pc55WZuk+l/yRTH6/F4dC1Xf2mWQ12LJo4JAMd4NMwziyE6YelhUXSWQYkTCY0s5/G9qKjWMwGHSttOTPPzu4osUZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757743794; c=relaxed/simple;
	bh=gqL6UP4WXG+CG7XZKZJgBjCWI61IsKi+1Fb1JNUwQQg=;
	h=To:Subject:From:Message-Id:Date; b=tpP3+39/lirL923K8FhL1bHs/xRj5QKECbkLI2yU9svgjwOz7jzuHwedGwSnWJPZAoCcn+Fsf4V8V+RAR8rOOj+sYOLi1jXd5HdBB28zW5jmFMG8dcfbIuTi2VJv0Tyx2b8EJYZfTNMrF76LAbkE2AcbYUvkP8JSv9XwshjA640=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0dikDj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0dikDj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D46C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757743793;
	bh=gqL6UP4WXG+CG7XZKZJgBjCWI61IsKi+1Fb1JNUwQQg=;
	h=To:Subject:From:Date:From;
	b=U0dikDj4xNPv9Zt+ZuqSn9wWp+R5rQLpN/h4v4kn0cxlT+xes1und1w9+cUoY7JOX
	 YwFGz9n8XP6dox2XlS7K0HfnZPAQ9OSxqBH9i5uieDUHnw6FvE9fx6JuFkJXCqkKct
	 hopwNWPFDPsYFChfWbJtqhpksMs7C4vZRXEgy85JFXZ01ytsg8Xgwm8pFT01lCX8l0
	 rIKHRHoaZIwGrbK4F6fCiUvv6BvdZ676/WDChkF0PvnQAcoaFiXenvGI+HlUa35PjE
	 5b+NoOFwMDAmGkwRLCPeivtJoe0w6Y/FhN3WfbV5oJFgNTTLmzr7maecOJNy3W5rQH
	 CvFIyuVAca4EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C7CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774379357.31904.17843938411393570549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326f74a67d58ac469582ebe3dee71ad79661a224d969a733bc0d8f32f3307559
Date: Sat, 13 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757743793
