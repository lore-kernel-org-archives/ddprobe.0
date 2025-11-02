Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F141F5F6
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762048794; cv=none; b=PlBtcYpMzOd7hqxzvQDveMyeHRJp9cWFyklesOtPDx5hR9qlSDLHrYS8Rz6vxeGdIV8ABsfIQD48ftPXTRoFTQ2+MmxDeJXa2tyIqzNZMN5FEQSQ7CY49FUsmPAK+/70M67AbC4veYLd0fyDMQrT4e7508Xhg4hP9Jb3XsD40Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762048794; c=relaxed/simple;
	bh=WJk4FpaLwsoX/u48a2YzNAZpJCc4jAcPoS5HucaDsCw=;
	h=To:Subject:From:Message-Id:Date; b=QYp5XaxB3FNcOjEEAfZNkosoSZcPyXcnYvmcgeBLWHmREtkX9ZIZ5jkn0D6cjf88TgD/tIzkAvjQvv24HXfLk6mIrisNy7Q6h7OUiLC2yypUutgFr/jt/KuvW4d6nrrqC34BDqcdOI2QgV8Sxe41DAmMrQGV3NOAt2n/DehS96Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TThgiP+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TThgiP+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC84C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762048793;
	bh=WJk4FpaLwsoX/u48a2YzNAZpJCc4jAcPoS5HucaDsCw=;
	h=To:Subject:From:Date:From;
	b=TThgiP+jhyK30guppMs8Wyvk0kgSZewOPKPTT534DJMhc/ABJxCo/J06oHKzKlAjm
	 aneQcAlzK8uAx0FEZ7AkrzjhA+blNThusFHssJhCSVAwWid7F0dckXjyitYQ64rpHh
	 OMG5StUhUl4YewK4Um6K+e9Ai8hd/WmUrW0meFEr14iUE5KiYZqcEMJT6jPvYNNzlj
	 soRgdyqfgtpZX+yU+Xv2vKBUtmNvvxtzbVlR9iU7SJPIvQUbj2SA9EleAjfbU4IgK9
	 t7KZkEWNQ0HufCv5c4ybbP8n3YMUoe/JzdRnDKTw3NZRujCfze8frjikE4g4dJFEEJ
	 c3yNHGrI/7KDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994EFCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176204879359.30302.4463061302701294181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45aeeed75a419f27b5dc63330f3254959d86b2648c40c422c7b8072534debcb5
Date: Sun, 02 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762048793
