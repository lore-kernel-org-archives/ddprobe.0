Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCE8219E8
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786820434; cv=none; b=XLqWjLT6hiXdIapfJPCHwKW+ssUyr5c5H9IoheCngg9rzTJMfKQTeuhXlCzphVWByZsyu9f3u8QIAtxoaeGtDcCCAVD3PkmWjCLBBmZCa2dFa2T2WtSG7lVdIA9d+agYt7v/ELlMxnRj/UPxHUd8CsYIOr4L6CHHXkPWZGx5VpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786820434; c=relaxed/simple;
	bh=OdnKmnhKh54hOEnjQG4upY4888dYKW7IlqdwjvqxzxU=;
	h=To:Subject:From:Message-Id:Date; b=AsGROVWihJNbda536jimLwNx6Bp0GtifapR+uVrwkz61SeZWHo7ofIME7w2QDGOE4epye8iEuWCa214tfhBgJxznVBLsCsIA+cACBzSVENljtx9ueO53VBzZb7QWQp+5bWa16aVqDrGwneuDb9zQUXyaldSJioFcBBk1MpQtXsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu5am45R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu5am45R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FA2C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786820433;
	bh=OdnKmnhKh54hOEnjQG4upY4888dYKW7IlqdwjvqxzxU=;
	h=To:Subject:From:Date:From;
	b=iu5am45RhrIca4Xqf09n0rDQO65Vri2+j0x0XrHYXFJxBVolJh0xz4KE3+kSBuOsS
	 VbUfE8MhZyy/ARoqurX7OdCDnPpGewtVpMw1CW7sx1o0d7PGoECeZ5watPlxmV16IL
	 i3/plVBrZp+EXvaIeWA25StjabPbIG3taN+70DZUOSjxpV4tbGAWX3xA7H9Bq2rMAm
	 EKvSJlrnTDjzwbFvVO+gzVoznqXbpWmWzC1TDHsORAy4b6xJl1X0QWcXTncaVL97S+
	 qlfdkZKc9PbEsgadPYJUgy5iBLdBc54XNrmDUD8XBnsgBxHq+qXRuaejSjWq6SGz47
	 mYBgRf63Yj5Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E3AC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682043369.2840.7053800097663769478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62343554f1d92a6cef79fb273fe45a0c67e6ec0fcc30eabd0a85adb1977f0e4d
Date: Sat, 15 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786820433
