Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB1C50096B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768049034; cv=none; b=G/eNSqcrdd5pMw86uq0QaPUGOKfG0fJ/HqPXIbbVnEhlwh7DAYtm2TXh3sWcDTropU5En7VphUjN26x+OX2X85//D337Yx+Bz4+BhH/q1r5EVXHeRxhDePY4XUNTU84+cGN+NVZXYRsWrbDtaZgSJWijOmDkiJ3h46FJgM5LF24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768049034; c=relaxed/simple;
	bh=kql7RC6HMRPXWHMnCOrYAcmg4Dib5FaELKHHKDtkuTk=;
	h=To:Subject:From:Message-Id:Date; b=ZGaDjhVBvtuW/Ouf0rVwv/xOwJ51c/ZMzB/Ptec/X74a+be+wWOUB/XOXD6njiSJxLOdUuYGDBi8+XtJvC94FEhYhsUI+wq+Cwp0qLdiB9rOgNRdtWrTQH3tdjqMwZujn1wVHpceSSOOELrHL1zlov5eNKfxEqEsgY68720aiBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGrWVoW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGrWVoW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB5C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768049033;
	bh=kql7RC6HMRPXWHMnCOrYAcmg4Dib5FaELKHHKDtkuTk=;
	h=To:Subject:From:Date:From;
	b=EGrWVoW0kB91pKnX6Hzm2i3SJWcxZioF8hwmIQZnubU+GXfBtTBx97gekzIMZrgHv
	 uIvLpJxhlY0nPBnC0lGoS955S1kuoYxgJ+WH7uJKe45Yj9vgA64lLzhtlidHH0Ln3H
	 V4zqB6cQDBMLIbrNmdq3v/L8/xcvQqaKVQCdAhJqV5UKacMSYEbvcBdoyYW9qXu39f
	 IF6tWYfC2c9w8TIMcItNqJkQ+EMPuaEhS0lP7Gz18CRBK8Ofxa/iw0yDOg42szLyQO
	 oOkrjR5Ndf5GlKGHQUIMpj5+/Ft0EYMOOZ+evz6so5LXryHLIYkcaIelEVf32zDnQw
	 DYY5AANDxDPHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E6D277D9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804903358.13396.15661679989555656963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909dc6bdfe49a3593cbac81373164702bbb37e6b7c56eed76cef6e5ee55f64c9
Date: Sat, 10 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768049033
