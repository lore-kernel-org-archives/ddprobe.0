Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDEE1AE877
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776038254; cv=none; b=o5WQEEHfZ/XB6SWsNaz153NpMFq1xAH2kTNXfsLzSN7cgF/71m6sQKzBs+dYeGW5uKFX5yG/6c9v/LNWva3/AMEGVA0FQvJdLOMokHiPsh2o+KIOhResnBWzBtPGAMbOCA57MPVAzA2PWnKw/ehgYoSEA1y1TJyG9wQDqJk6QMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776038254; c=relaxed/simple;
	bh=r2lebfFCpLMoAfxuG1GD1TT8WFtXcWzBxiG5XI9BAUU=;
	h=To:Subject:From:Message-Id:Date; b=LZIh3VG/AZukL7tz8bOGLufmTq9JYK6t81Ps56KPUNmdGzKDg06he5JmRSB1GM4e0lGASBmjxGFat6xwyqB5YqJ2yZ/EJjhaKx9p1kCkwsQQeR4ooBMUb+oMg5lFb3gba6OWZVLJQFmOGjY1mgNfHhsOc5+xBX9TU/1CSyE7W7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsAlvKQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsAlvKQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD18C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776038253;
	bh=r2lebfFCpLMoAfxuG1GD1TT8WFtXcWzBxiG5XI9BAUU=;
	h=To:Subject:From:Date:From;
	b=VsAlvKQC/yrVFzw4Ne/QQsJvC0QvHrF7GglJWcgO3aPeAG41BRCgckwauz+z8sPMz
	 LbH7zD0Of3TZzlQSgYSGWDfF9IIU2O7scz5cDwigHTFD1ZvubHV5K5j76w1NTudJ8i
	 lYiwxKW/Xt/opwfZI/7hy2IrT4IF/ZxKRMR+Hy3dIS2VgjCL4AGUiC7Viy4S00gWJE
	 XmU07vf+K660RG+XZ6lWp+K5V9xFY2Dsd9va3rfAywuE4pQG7NapkHk6/3EGMgBDBu
	 eFQ1w6TS5HbP/n7H3zUlL3ofPqOnAOe8O5XcIC0DcFYnzSIs1EZIWU/JnNMsGKDMnP
	 UGGI2Ht8fT63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB40E93807
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 23:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603825368.30990.2995897911060759228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218d38816c25a2fec01237e1652b0df059342d117ca30708c0ddfcd41d078320
Date: Sun, 12 Apr 2026 23:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776038253
