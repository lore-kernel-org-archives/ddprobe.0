Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E181A9FA0
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771304094; cv=none; b=UwczPW8B+mnYFkC7bEFmgS1F162jJXsfAIF15ait9hVXjVRBtD6Zvi6sRvQD+80PtTpCLL3PlMDKm3EFzga2bvTP2HdtRZEWQEIttQoki/jgismHWSJzR6zvBG6GsryfeOJ9yYftLS6QQWOJKjuNxJ2FD0e2SH6QYJMY/eVBRRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771304094; c=relaxed/simple;
	bh=ThuVmwuiQNf6DtMeM+6KrDALqKt0xwFsoPRRturCqsQ=;
	h=To:Subject:From:Message-Id:Date; b=QN2kFAdU5fYMm0sGgVWjY+M6Y4m1zIzPQaMAq9fLnyhcgomMUcW/SwNBMq7JeGqkexWER35vyOUtDqc1dBVAbiJiRxUPcdD9IU2bgSX2maO5o8P6XWBt8UkveDRhJcgoCqQfEdJ1ABaaQo0WnN4YNcJ5aKYkHvhvXfHCRPsnuXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX33GHnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX33GHnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AE9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771304093;
	bh=ThuVmwuiQNf6DtMeM+6KrDALqKt0xwFsoPRRturCqsQ=;
	h=To:Subject:From:Date:From;
	b=UX33GHnfrQilayznsVhxKjO8EW2ryqxnUW6MJzy9fhjCHKl3LZ0BJWSSxPYurhKHW
	 Ltimz1pLJJHwH5HjIInjkITID2Z2HYyAmwBXgfB8J5KPjxZ5u8QbmxXY+GQCdFgkmC
	 cteP8IV2HkBwhQ9gmgrB/CrqtuWWMO1FrSIRZMCRk5ddBAEFg0Whg/WdQTt6zC00eB
	 x5vvppCkViSW/apYTuO1wPq/bZlnGsLAdo4bo3FmEn6knvozr1Bu35pbwtliZ0GdqR
	 dJbDWBOMWxXf321f4hfwQX4jV2jRPISApqvJEOxtJYSggzCMyvkmQbRqZvx4lamc02
	 dMVQF2ZCxvbTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087DE83852
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130409358.24962.15990131358125239701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b8bd32e1b4a688f5386b3ed20a8896d53332b4a96ccf4d8324202befd94a17
Date: Tue, 17 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771304093
