Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3731A26CE36
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759592394; cv=none; b=BSCkXZ3opl5SVV84iDd4lklNzhoK9trXOBNtv0xVUtbYl+sHAXZlALkxWvCs7wh1c/B7m5217XnTwNnjeeyOEqAGqMHJ+8mKi8e/zuHro8QqNJr2EJhktcQ5WgoAelHkrHWGuXvFdtwHXqHqU+PViY8zKhYVX+jSnx/ecalXMT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759592394; c=relaxed/simple;
	bh=WKwpmix7B+rQhogDwafASTBPFTPh89olzpsxJDdSRy0=;
	h=To:Subject:From:Message-Id:Date; b=aeZKKe6zy8WHc2ec/rDJljyuqEc3uCmyGVsf7aVpdiS0yCVo9Pw4ViE5ObPpnahpmequW+OZ3gFdw15Oi+yz02V631xVK9S0yusRqbnLOSVH5X/huRdnORG3eFcyGa1SGxaD2kwUH3TPSOAxQ9gY+KQxxJw2/dc9fKR3FdwY9qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkRrILyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkRrILyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A3BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759592393;
	bh=WKwpmix7B+rQhogDwafASTBPFTPh89olzpsxJDdSRy0=;
	h=To:Subject:From:Date:From;
	b=DkRrILyk+o7+uuj6dyESmiaVeoAJKKG+yZZwMEGFHrebaxDOkK9F4hP7wXPozziMi
	 VTb0GJwmr1idmTP1ATQ+vQxKOG2ENh4z2gUFRdaUnJM1ZLsRkhr8Hp6Zr1fs6mx1hu
	 PJ1GtC62kjVT7sF5Ju5XanxsnqO1Dv89piCx8efcl5T/5rQMZg6owCQRrYg3jRkzfZ
	 tLmFiqsiW962mBcwCQptNuHb2lNBvKTSVLtRBo85T3uuww6vhh+YE5lomvgpFtZt2J
	 KQ6XTZuq6Ye6ZwiuU15nIF+UHjr8cvMUhekHHzKRlYCFrW68bdFHh4+Um4usZT68Me
	 4DCjPyljB7UnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D7DCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959239358.10706.9937287677043804219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f7db7639b92a9292288fe613d8aa3b82df2e2e7d1c698fd3ab5569dc79da416
Date: Sat, 04 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759592393
