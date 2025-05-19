Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F941A55
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747613994; cv=none; b=kqDkEPwJFoW/hy9lV8cY5XOAnGx1DJ+LwVp2cec5un2Nff+KQ942KD9v0OdlogvC9m9/A9uZ7qxiO9SnTDzkUcn+9sJUWV4G4rzDvhCQzrp5Jo+exjtigPmaDL96kRDEjx/UsfCB+FYthKeflaKm16YFDLbiLWQWewOuh+edlx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747613994; c=relaxed/simple;
	bh=KfnbznJC9gbbGMAR9KIXxN9yyI54yvMIhIKRwoj5v+Y=;
	h=To:Subject:From:Message-Id:Date; b=bFHpY8NOZiwK95a20WlRNe/WO/zqVh5jiEBdBlp29fb7eJLmd8M2XtHFHLXtMI3yVpUeCDlmyKpSOZF88diu271YQ7kh7BBKOwoIn0g4Gv3qeZLRvbObsgOwU/7F0kkVR6Y3frtyMCmJEg0Jvp1uTZ2fZORD/X7+1/TSPqdrVcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaN/2yV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaN/2yV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F2CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747613993;
	bh=KfnbznJC9gbbGMAR9KIXxN9yyI54yvMIhIKRwoj5v+Y=;
	h=To:Subject:From:Date:From;
	b=BaN/2yV2ZZ9ohj1mBqYrljNIao7zxf8y/cex9nwwem7GY9ltz8aEaCxjesyLUG5eP
	 MK6OTIbmwJZ0lz4huN+2Tsi5F691Wc/46nRbNcy/u9MF+NXOPux86V4bcKMBYeQQ9i
	 R4z8IKKPX2ki8atYZp/TTtsTo1I0vdqXAeTCqfLCawcSC1Atv0B64u8gYos+CMkc+V
	 EYPbZ4K7xiINWwHvp5sUCUSlwhGztE+AG/UE51dPlVWHqY8bINLWvZuhB1L2vHDke+
	 ePccOghvHXZ3uA6+fa/M/bObEneVVEclNaqSQ7YiyVKfl9fXWsz9EC4UPR8yIaj+YR
	 f+5inL9t+nbsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5EC3ABD8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174761399357.18349.12774563512313893782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84e122b52261dc9e21503d7a0797c213ff398e73fc6105faeac1c660b1cd0188
Date: Mon, 19 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747613993
