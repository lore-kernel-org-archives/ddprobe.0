Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DAE2367D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751452194; cv=none; b=IsS4gLMm8gSCtCh1+mD4AlEHczKAtzNROU8zUXgUiDj9DFAzm8pDwRccGjwWPR2Vq1QhNXMcenQW9u6d55AwBYBTBQ0YDAyYvQMI9xvMEI1yFBvVLPkCLCiB4Qavr5KcixVDqQmX/T2yHjVebCib4jG8N4mf2ODCwLs78LAZ2zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751452194; c=relaxed/simple;
	bh=5CWlfmK9vk2BLjrb/M1zwpJ3NcHqnW9N8XDPqyB3Vbk=;
	h=To:Subject:From:Message-Id:Date; b=X65Pxwh+KpZ3U6EFnqFD8ylC8TMJuKu9lp+jz9xkB4xUj08Um/+I6sA5dvX08bFCD4r8Z1IUSoKM138QrDEg5HC5T8f8tVnzf66up75byE4mJ9QcP1iKjoS2RdEsXOAXybj8ra4Qt6EcqDsZiRdAlkZSJ47N53T0wmjoLH6umRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaarSqrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaarSqrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE81C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751452193;
	bh=5CWlfmK9vk2BLjrb/M1zwpJ3NcHqnW9N8XDPqyB3Vbk=;
	h=To:Subject:From:Date:From;
	b=NaarSqrc7amkjoWkvr1eTh/fzBGe6xNLtDSKmKaUov9gFjg45FL7OiYgaiekRKYB+
	 u8C/xEwjoie9aChgQblRF4LeJAE5I64xVbUwIJhB0cqLBvMg4Y+J6bzLz247Kv9mbW
	 bfe2RwqaOdpNRw7yNgoMrxreQZWSpaLTToiqLzq8BpBXhfGA53qGRYdxKzVd6+tuCK
	 XU4n5a2P/peD7HtKgyFa9Lb5H6SGU/jZpz0E3UgQCDaLFa/20A6/UNr6a6eXFNWKqX
	 HKmpGam4VUwm8mCTXInXHWLs5aF+upLtH7G26/oWvZl0CcX+AKnvtE6WzOr3+84204
	 7u60e/LmZUJbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC0CC7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145219357.12374.6541825247267272364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89246c0e5231356a5c3e2ccbeb8b1e53ac9bd09d2d8e4c95952a6e74e5c2d36a
Date: Wed, 02 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751452193
