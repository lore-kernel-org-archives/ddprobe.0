Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B09521CC54
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746755995; cv=none; b=tpKLJvwd6w2NByIFo8fPW/HtOR6Va38t6aKJ7hOGJ7z9Oy9Lwk3vCET/XWvEn/S7qCgJvnt7w5YBgvX9rdFfOrO4beVNvWj6FgpMU4okafZDPywveOwQ0CmuIVok3/IBmnm8Sg9uaMlQTju+Q1cWPejOJWmGU705ayhaj8UWsaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746755995; c=relaxed/simple;
	bh=lB5xDA23kU4MoSszvc/5TVW+wHpvboLOJh36k9A2D4U=;
	h=To:Subject:From:Message-Id:Date; b=o4O8XabmFiGr9j0i0oadTj6yYgQyQsVahFbw2zQQ37oAvJ/ETjro0fCa7FFy6JkyzoR5dPGyvv/ug2V3cXP0lVKdBpGv4Zrc6hOyLbf+oNw33MP+jxemtJpgThHLy4Z8KABRIRrlETsiG0wdQYdX+G3+PK4EWKiWeBHDqSfsnok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfMD+jbu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfMD+jbu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A5C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746755993;
	bh=lB5xDA23kU4MoSszvc/5TVW+wHpvboLOJh36k9A2D4U=;
	h=To:Subject:From:Date:From;
	b=XfMD+jbupku09FJ4+T0XytO0p45x7UDn8+7vrtq7AhQ3i8/ytiLnQe5w/e3yVlGBz
	 M5Wz6da9svUJuF+l8R83duHx9Y5JU6KZYd2Yvysndjh72w+8XFhxmjIfGOy63AF+iZ
	 wlmqTDKAr5Zgoip+gXd+CxDCSfxAN4Wh60TffdB2BGoru1A+xiD4cmJHBzZsJDOjT+
	 R9wyzLXF6jffJCPQMZlEJGEuW24J+U0HTh2SZqSCLVjmEfeLwxql0TQ+las5b4Qqlb
	 xqKEeAEeL9uhmiResqBcZFYJYduOh5j7DkrraWlEBrNlnjqjnePTVX7wModOA3Xw2F
	 VxIL1qwaYGeFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906BAC3ABC5
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675599358.11252.718493077860584734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae5f2ee5cc1c69dec64e85152f6890150473506bd57d935d6ace627fcb27861
Date: Fri, 09 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746755993
