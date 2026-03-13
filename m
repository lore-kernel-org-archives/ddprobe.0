Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C082F6192
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773383094; cv=none; b=OkKJKPS8qYw0j1Spf71YFOHIqDwRWlSD4O/EY24xobrMSbhDChfE1ky1P+aWeltz23NyUy8YItheXoiTTC1zuAhvSDVqnVNJSdBTTkhTJUHcW20RaptMGcE1DH7T8Ho0KG8B+4XWGpKEACIq//W6g1Ue8qR3D3ViMdNdNLiULuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773383094; c=relaxed/simple;
	bh=l9tkzXqzF3xXv/VLFnlAAEBeeQ0Q6OggpU9dI/X5gz0=;
	h=To:Subject:From:Message-Id:Date; b=eLWzJk1jX8Y7vCuh9nNiFxrEVmVh9k3lW9gikqVwIqSlAwksI2Cut69Zi37CFMPLXpezmWUkX+d4dJoy4/FWiAjH4iG7rsZnhrcAJ9f/zxADQMnMDWgcNNc8O4alD3c/wOQ3Jt+Z0NILlN2b7QjzMlFtWwbuayThNPQMc5eEFt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVE+2/1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVE+2/1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A338CC19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773383093;
	bh=l9tkzXqzF3xXv/VLFnlAAEBeeQ0Q6OggpU9dI/X5gz0=;
	h=To:Subject:From:Date:From;
	b=fVE+2/1/Hn8KxmtK59B3RcSxJZIJMvjqyVGXm8Tn2ZhfG3NUErvJOI09QHp5a8xG8
	 i+PdVGvhC7prPIsJdb/ViUF45fdcgROA+1K/NokB/FoyUQ+5u7+GnctBeV8JQu4meF
	 8OteoVAx2XzoI88TeCzEEumLGii/4Oy3YcJRWRmum0xH0wnsG3tSSHRQ/RZZRefWDa
	 QR2yohzOuIoIGef0Ia8+8Z8LoMWG7IPD5hfk5ws90K6cuzXRDxtomaAUAJ09B/zIUV
	 QmsZG0sJ1u7+85QqdKg8UT05TYSNUqpO3xqdou/afZgF4fPSq51GjZyD6nwpbj0rmk
	 P1WIAa4rnxWMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E01106FD87
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338309358.9233.1546628695205449490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c7e75c5c825c9dc92527fad459cbbfa88e78a52e81bf9b8a2337dfa97ad46ae
Date: Fri, 13 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773383093
