Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5268624BBF0
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784722714; cv=none; b=ekQTm62sw7tZU7oZvoPhy80epKt4qDlEzzmtcSAC5GQ+aJjurjt6wou/STrLaYEpPbw42PvGZJ40QQFeCZXTq8dC2vuWvIl0RLWsH8JXs1sX3kaMO57scQHjOVl0v0KC39Qzra2Zibee+NX0otdAtPbgHE3GD4wfI9JLA8BRcjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784722714; c=relaxed/simple;
	bh=dY0tjy/UXFQb0WBgqSJ5UfnIpm5T7uVop903jNr4CP8=;
	h=To:Subject:From:Message-Id:Date; b=t9KnSupzOfXEF7n4cPxKwQHycFC+M9J4CKsFR8Gbzdt4fzgCSY/ZEpEI0vHRx+iLUrRiH//6mPn9jlama1WT/vfk71TkESoOm97lC7yEVisXkfFNvFj2aH8nXmOrwJwsrCF2KZm4XoRWCLq4m6uiNbDWA88upm0AhyKHoBR+b3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5Myaux9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5Myaux9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10258C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784722714;
	bh=dY0tjy/UXFQb0WBgqSJ5UfnIpm5T7uVop903jNr4CP8=;
	h=To:Subject:From:Date:From;
	b=g5Myaux9Zlr6vRNSuiTTe+gb0QRC1NwDDr/l5l8jzBbokGOJeMaWqeJKtMYkSCy0b
	 BFUqVxeolQJdzbqhEFytxlRabCAxqFkJEWMI1IuI4CmFaRaM3SUaBYkzmqYjvERzHQ
	 B2L4N8tPpLGjkqOLNyvRDjqPHOoF+WpuUGotlKFidxnI2t/V5f8NcNgi1GBs5EAgvZ
	 OXy5NymYCmPol70y4tVt7WhAnlUpqhDqp9c9M4ybzZaJjG3RT577tP4q0/tivkSyzA
	 IeG5Pm/aPbe3eYljGQbdfo7SyfCFmCkpkdxOTI8vXOuxOI2NJS1NZtoJu2F+aB5Ha4
	 A0ny/oh85C1oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEC6C44536
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472271381.28012.14465482423582733662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c2e093c0994a944058d3075bec094482507ccb8537f615e885d802169a277d
Date: Wed, 22 Jul 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784722713
