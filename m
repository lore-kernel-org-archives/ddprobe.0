Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429561D696
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721655354; cv=none; b=oi5P1hcwJ/4cfumL/YhV901msZlhJcXAgW+WBjMHTD9vefcsdeyBRTN85plaNG09lernmR+Ltl6tmBClabdPAfMOXK2OB1SraT16rRk1hsjSAHUSOCOd0H9q6S+sLgsIvsZAGUWoI7YukRGXPvSyERnw9vyKMnRLBb2wJfn3ak0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721655354; c=relaxed/simple;
	bh=re7FgsbVX7R9ZLEEg8hvCtAY7rPDWyIrBi3yjcDbU3g=;
	h=To:Subject:From:Message-Id:Date; b=Md4+c+PBVHAHvawDP5L8jfoUymaFNJDLeWMde1XwT7FKiaR3R+9h0k5MKvDyiu/rdNE42zYoYSegVv2erDHLsuAWc1cfivYaiIHqOI9dpDQfu4ZKOLwkr1chkq1LueSDB2sKvHk9BC/TfKp8DyV0rpSxXYjL2Po6kj+AU6A8g/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D9XdnYb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D9XdnYb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F38C4AF0F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721655353;
	bh=re7FgsbVX7R9ZLEEg8hvCtAY7rPDWyIrBi3yjcDbU3g=;
	h=To:Subject:From:Date:From;
	b=D9XdnYb+AiLmLZRdXx2xH3ntwxMUQfrW6SfZGCrtaAQBDs70oiC3Chp8CSvQE1iTz
	 738Z29oBL15dD14EGq0o9GYdAbVzr5bfMVzDGzOZO7DN9ikuLQqD8oZASW0YbiGJz9
	 3rTHGang50PIt31Es/LeJhkt6l96rT8/Qa1NiVm3gYqi7iE4pd7NBQ7VmRlKXIGJg6
	 ho8AR/+OC5nQ7xFMJWlBVROz3KyesEYDiXnKTIa9ELmfM4KBvQc9eK3XIWeDWFuYow
	 75yR7s8GpCxcGBagKOnGE3pwljUT8WcqkPtcOZE76BZTADmqBATdHByExR0zhAf8nP
	 D6eukP+/uwQXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EFEC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172165535367.25342.18308089099384070347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69c47610b6b8f8c99fc66a17a77bca0a4f95bdb19845a3086e4a493243c3e15
Date: Mon, 22 Jul 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721655353
