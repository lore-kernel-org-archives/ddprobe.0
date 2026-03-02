Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824113ED114
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772479494; cv=none; b=XVfms/LK0PY4MBCsJ2mxN4nL6Suc5bvc2kVN7IXDtItsM8+tqdRetR9XZY9kWWZP6/nbYAdeL15FpSVIz3KbUbl84TG+bCiwnjOlIvHyZIS435IIlpHaSV9W2AL2dwCVetYQGAxFOab6frQVUWVccwpK4Eul31GRYwO19vPurHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772479494; c=relaxed/simple;
	bh=K7OyvrdxJoNmgMIknWKA7LlLTr01kz6OxUkqzSQnfYc=;
	h=To:Subject:From:Message-Id:Date; b=DQLS0DIUS1spJb4wS4QKACj5JARBJ7QpNeLLcRwudL0iI49ungePAI56GnYLkVCGMgZYe+azi0nXYozTGkkizHOUBA5gumyrfIiJG3Y8iCuMoftCMpoiXdRxh3tE/+iAGNMbZR9SO1OqE8/m6KfhYN/9HOWpHg/kOLldOSqQfAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJ2Bo0g9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJ2Bo0g9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E82B1C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772479493;
	bh=K7OyvrdxJoNmgMIknWKA7LlLTr01kz6OxUkqzSQnfYc=;
	h=To:Subject:From:Date:From;
	b=MJ2Bo0g9g+VQ3eeJ6vvUug3pYPUOv7K0LPI5GXX0NfeqhajDxc4YaHgyILhKBlC79
	 TKB0i9MPWoPxA/cZOrGwohU1SL1XjziQQrdJdsSEM0eZvhejI5HzSLysgy3ONM8KN8
	 hRMjQyPjrcPlDSVaVINssgGt34tjss1h47yhsuOZRm+h1aWo71Vn1Gv9laMyWtIBFy
	 qRtxWGJycsjltSRShbtf4/ucFDn2OhW79NIvO8E9uR2lWrJS75DcTFIMGhIWzkyagG
	 SkOTXsy0ZpN5h4OwlXP6PObzWjuJsJ6J81BSBYSnFDvb6rR5H8HDCZUtEOPaCYQ6DL
	 HpiXvB4mIl4DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED07EB362E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247949383.22116.8981343376912600749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa9da1f1dc0ecb19ae3d815d9c73c57de49d685d6dcbad1427276e8699c32bf
Date: Mon, 02 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772479493
