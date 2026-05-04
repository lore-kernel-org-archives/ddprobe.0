Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FB713959D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777861054; cv=none; b=Jtq7WidSwdB8APgx/P9kzCfvCJ4DmO2XM64c6ZzX/v4V09vbF8TFZt7PSAaYsO+oYHR7s53vEnNa34w01adLUVxeWPJYKrzzE46EN+zR1RTAJDLop+vM95v/vsCzc8gEQRcFDKTwtIqsIsZwkdGOF48IZg3ZtrKw6T99IX/4miE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777861054; c=relaxed/simple;
	bh=NlwgDOvQMZuxZer0FmsDE/LnMtgUlA7975C29hno8lo=;
	h=To:Subject:From:Message-Id:Date; b=NYnZ0EjBPQ2FOO5MnML1Dke+2BsdugXx0fKCBsW5aOYU2dN2IeEvhifseo3/k4XFv6doE4W2A3UU67fW4ZNBXqorXuBQUU4lOUdo2+p2WVzLob9rEhMtLiKzNJhNevBSHp7sJx95gs0neza6JhIKAVKMORO+dbYQcrCX6WuLBa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qIeL30E+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qIeL30E+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C148AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777861053;
	bh=NlwgDOvQMZuxZer0FmsDE/LnMtgUlA7975C29hno8lo=;
	h=To:Subject:From:Date:From;
	b=qIeL30E+E7NA0L7uTr6FV7+AqyxlxjeJ7Y58wzMbAwq9qycDbXY2pE//Jh91H9y4T
	 BpJ4+lgnBfUDBwj8w89JyqkjxBDwO4ThpjUdBpv+486FxsZADSPl9SgfOuQkTnNPxV
	 5N1qlZRjZ4KJFKps/us/jgQU8DuQyXOU8cWoJi3DPOQnqSgqWjX5V8RFJ+W45uSpiu
	 OxFf3J52LNY5MLMOTHleheURsQ0tm1lD0umCf4AemE24L/4fq8Fr9iYSi9B/cU42Ds
	 HIx7aDvLSwynvEoPTyeRs7JTljl41veeBXUMD8RRFF5COHrTloY/IPzuHkk0P+XzWj
	 NvtjnrjNjjPTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD718FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786105368.13539.13857003041464757290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5caa8a14f320632af4325ee43690d50a08981b6a1e45b7794ae758d36dfd51b
Date: Mon, 04 May 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777861053
