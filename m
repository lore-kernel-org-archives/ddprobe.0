Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEB972639
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747570196; cv=none; b=Om0hbby/IuL8IsGToaNdxmyVcr5lIAcznO3RnmwKUIz4CcMnaoXivHRqJt+wIciNyZerv8N1n6QZSKQq8bqJ8WoYV6BH9QEw1b9Q2wRdMrpazfs/UjgwRtAQtYoXsZqEDoDZmKlWdNA0WR89h6QeFXA9jn/vMj5nahoFOs66+t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747570196; c=relaxed/simple;
	bh=cOD3k15cQRCwVvEv5Jq6U3pYdunWCVsrYmX/lWuK65E=;
	h=To:Subject:From:Message-Id:Date; b=R6nGVLksS/oXjqnsiQULd4PRY2BnCDVSJjspfwCBN+WAwg3Ii8lKa5YcH8GocUT6CPX7tKVQoPBerKUk+RS7E7FF9Yxt2t9w2OvgETFxqDCr3ctOT3LusdeqJg+Ua+B7PE4MBY7f7n3HaHrqIOucnS1aHFq06gLNphbrrXZ/LfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfL+YQ9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfL+YQ9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A7DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747570193;
	bh=cOD3k15cQRCwVvEv5Jq6U3pYdunWCVsrYmX/lWuK65E=;
	h=To:Subject:From:Date:From;
	b=HfL+YQ9OWfMJBcU1dhBVBKMCQtupSzpEZred3N6UWTmjrnzZ2om54euhfcfFIFW5/
	 OWaWJhdu6HrIO4X+tXIl/91Aj2ktX87wDL8N5MjXJ9XpKcFWpne/2EhZb43K6H9Fls
	 /0wpLXSkWCN0lNe+m3czls7Av1hirnrH0z2m8hH+EqJ1GlrwzqdSI+iw43iD3B5uGo
	 FzV6Jg0uCd39NYEDXpA7OSOn3sQYjKXkKL85tgacpu3hO1D0oA15m1HSSMRsg82ACs
	 C+oq1Fc6wHpFFGErlnn/lxaatio5234CTxmG/CMXsIn1rz8E+Ew8EfQMydGuPqZeH8
	 SCHVjTwa3Nqew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E42FC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757019357.26191.2211673996815382050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d649ff4fa7d55806cd1d2ea0717d8a3fa9072894b0eede8f8b0be99f24478be9
Date: Sun, 18 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747570193
