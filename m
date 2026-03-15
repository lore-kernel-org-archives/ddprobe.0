Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B3E26FDBF
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773574494; cv=none; b=sdZyh9HqJLmUIEyNlgRtjjk0ENJw360ADz8r1VPq3Z2vlS7VThtdlBymG16TLsEwQ0Ut2hbGZesayLb4s8pVkz7FdPobMUFtbspcEkkdxVrQpUG5MTryKHZ6/a2b0YapaF2DxVN6pNEap/aGiRTfUWG5cSjyswAJpcLKBhl8XrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773574494; c=relaxed/simple;
	bh=TOXsrA7WmS/LWwcb/I+fPsy/5WCqqoBsMEc1XzJEE18=;
	h=To:Subject:From:Message-Id:Date; b=WY+5bzWpUjEOltikb7NTAAKUNyDfXMUhe8jgkzkrIrHfgzfE2yCRy7GV7gT6bcjFUu+uYKFRtfKu7Eqv6IwnoqiFGjsa+u1xfJgxKzdWnA0WREODfu3Qf8qtbCTmsXQTPEQKWJIwOv2/uzg8Y7F4zgxG3Pz4cUf0wY1mOdj03mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9aqRUQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9aqRUQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FEEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773574493;
	bh=TOXsrA7WmS/LWwcb/I+fPsy/5WCqqoBsMEc1XzJEE18=;
	h=To:Subject:From:Date:From;
	b=H9aqRUQ2YOB8quXkWkPF13FBBDOGScLbuQlCJyU0zGSkhZd2acsJuhGdKRu8JgBVi
	 u+lyaYKiVx4mSs/PNnzJ28tLTCZp6M8K9FAbKd1j1fGq68rU2nKauTUfTXaEkuPIsc
	 T8HLSuAmJfGywk3qXG9pdJy6xeZOhyVCg8fAI+zua9E9peGgzVIJRpOTs5kR4+yOyj
	 9y3L17N2VuG9sSMcHWRIbTEkr9mYGHOf8co7bJ7Bol5duzPE9F/CfUIlyOz+s6AZTE
	 loORegVDTImxtwkwxmSrz9/bQv+hxO6ijLuXufLfx8PcHdZ4rbOo9AcC26hGu4uwao
	 XCVIgpw2yi54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F66D58B19
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357449357.11624.1865110657260647808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d9daa81c8995bde2c307a0136321e56f3d00873ae5c763d969d9b57cc4228f5
Date: Sun, 15 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773574493
