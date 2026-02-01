Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2291031ED88
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769939034; cv=none; b=u5IakE1Qw9kVyQyUMWG2/0RIUAIX+7penGJZY2mF+O37eTOEMF5zAmb9rzir95zyZz0e4Y5XLlL6C2Xcu51nAtYH3xdWwW0bC/A7gDUXrcYkPQk/bIm7F+mVy8cvnK8Cs8TNO/eU6Cda/HwlIyYS9Mg2467ML+W2zXRd/sWfPrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769939034; c=relaxed/simple;
	bh=JuhSUMSiA6wrTYWTgx71wDb6oPe+zdVlD8HQenrrhqA=;
	h=To:Subject:From:Message-Id:Date; b=VJdI3DablKQHoyWtwsMOb/+8HnrL5fH7Lvy+uLM/Y8Y5GeUJ8QJyCRXnBFNMdk/ufe6xE7L+A1gVVQs4KUKmlvrFz1y/WzuxYN9BrtZ+2Uyz1SRNii1FOhrNlwDNxMlTqV/ZIJDmukS4wsAdjLQ/fhDzbmKXNW8N30Rcv/rkyHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WG7mj7xR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WG7mj7xR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AB5C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769939033;
	bh=JuhSUMSiA6wrTYWTgx71wDb6oPe+zdVlD8HQenrrhqA=;
	h=To:Subject:From:Date:From;
	b=WG7mj7xR1+6n2ZlP4ik30bw8DrZfN1INjsUUZf9e3h8cFa61JUHfo+eOwwCTL6ZrF
	 yw/FeD9fjdc4qOn+Y/Nic+lttU+Cj6T0khqn5UtlBkcrYelHqDpo861bkkfdUWTcgR
	 NBnF/RT8NIfuFi+U4x2zQ270nN1U+31RFzJfqjVb0ExBsqHtPYqd2lTzI8D9Pmaton
	 dNM7PDJ6HSGe16CKq2sjqUTk55lEDqfRUYur4a/03s2MqycgmFJJXwh8wzcM+9XsIy
	 LalcRWpek3JnLVB5M1hezuRtfobtUi3ZkGHwzZSLQk2be7kIZ4d8QCmOQQkXycoTyn
	 HAj2XU2QsBkgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F6E7C716
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993903357.12850.14489202311064315866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f8db8c0ad0988d85f5f16bfd4fd15b2cc6340463bb6120d3f6139a1c0ca5263
Date: Sun, 01 Feb 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769939033
