Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4368B1C5D5E
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779746554; cv=none; b=STiV8IMQAHp43aCH9a+LNoQItU1h4chbgarHIZ51M4Nz5/rJKw34tVF1lU5Z70LZoSqQxpiMwIwfo31j1BIxqV7PKWDWwoQBxjZF5IISf3osi3XtcXsaWDNoSZtJ0JQkxWo2pBj/3Wgrb5i+P/SUG0idTO3liNLBw1/2BCAbIu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779746554; c=relaxed/simple;
	bh=F6kw+CUfPjquVYpbZ+wWLtXBX5CNu23H4ssnNj0NK8U=;
	h=To:Subject:From:Message-Id:Date; b=X0euI4t/F6gPmI5GBnhDD6UTuUDkd3RlvWq+1cU1T42/JnoojDtEuw21C8dTLUAKfHhIKqVpZGt1xtiXjbAmMz+9alGSUitab7fL+kED6p7NaKnGuZ/ansK/rknW8P3sK1kO6BjQaZvXU7iUj97wrkLhxTisNp3G/k3wjc8Uvbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RlaRdeyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RlaRdeyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66B7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779746553;
	bh=F6kw+CUfPjquVYpbZ+wWLtXBX5CNu23H4ssnNj0NK8U=;
	h=To:Subject:From:Date:From;
	b=RlaRdeyjeSuGofk7K+JtoNpnHMrhS+jd57Z9LOHptq8VGndwXlu06gIMRVdt//L6J
	 pOLqHmIaggSwENfnhlals0iFtunQy+3+Tk0PMG905qaytT8wUaqW50nDhcfUDbwC4h
	 e2NqQTRfD/2LWcQkfG9I2U5mfSSIqFeHt2tu4B8oWusXa0lu4QrS7bmKQD8vw/9AjT
	 t/wkXM91mAm5yTYmXaXb0LSSBF9Gvun0B6XDHnFpgFOKLmfLZRCmZEYqgfKJrVdzt/
	 VuDTEJDMWU+7sDRXW6lLedr60naolOmCiStywHBJz+LUjgU9dLbpZYcqCSQBlzNJFN
	 DwP+uvglxfvhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC422CD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974655373.27969.15366751540795397417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13eda182517819cf6be81600843e650b4413c1ac1df7d2511667299c59bdee7
Date: Mon, 25 May 2026 22:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779746553
