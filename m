Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F38B661
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760574594; cv=none; b=AIBP+z84Qj3MtI+2uZEwtcNm/ZcXmQ1DfSYx4iaQ8iletCGA54ZMu+EJ7sJdr9/82q4MFHwLhgnmKiUa+twlfhHx4FHeYggHb+WPgMMqO/ge4B9xrptQWwIb4OBaftaDIF1xJUIHy9C6t08blHsx4Gdv2e9zUidOF23RGHIisgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760574594; c=relaxed/simple;
	bh=l+Jj8e2jpWs7Jy1QpjKZt0xoQYH8TqNUniD/gsoH43g=;
	h=To:Subject:From:Message-Id:Date; b=bJsn4Zy9RYMmpNrBjiRiZ5ec//EYzOI4WuQHpzeYWegGuz1Dm4bvtM3rGOaQPbJjBEf2EGlHU/TZpCEFeunRZg+8J+SGxy6PsJ3i7wuAXd6SBcAwYOdsWYVr28IokXsQg1ZyG8uGINThfHLgu9mhE5w3FfhxtUzTdQqDcF0zPfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msQko3L0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msQko3L0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EBBC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760574593;
	bh=l+Jj8e2jpWs7Jy1QpjKZt0xoQYH8TqNUniD/gsoH43g=;
	h=To:Subject:From:Date:From;
	b=msQko3L0P13OwDnzaQbPDSFRZC6KhTzHVwlg2HDdHH0fITtYyKLQyjzpsvgRRmhq0
	 2g4fo1Bua4wETP81kT5M3EHm6KFdKraiHgjWeNsyrk+UtpVWgaHG4jfhahYCkl50RI
	 vfZSl5MVQK3YQe6izfON04GW7J9REYG3UI/BR8iW9FaFFoIXJFpCQiF6GfnCoZcfHU
	 trPyP4wiDkkZxoYMm8JNxVbcOIgCzjdlgLDzwvXMGztguVmkm8fRXL7/x/gLhjSjMN
	 wh9iHL1Q4xbtirhUjmAhC/XO0/xiW3nMjaDQm4Z4I7qLfg68/gQRQLUPFX3iE++/Eh
	 Yxc7D9Dv8Fupw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94597CCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057459357.9435.17548664999047644024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71d5fe8001eb44692bc07dba9048600f36ed275f724652d42fa7488775a93cb
Date: Thu, 16 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760574593
