Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353151E3DFC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737393954; cv=none; b=osCwpPKu2xpx7CZTHLwQPwmhSZ2RQx2hZJdJUE+4MhzjgE04ttT1N0g19xMT5vjuRVY5gu4WFpXJOXtjfaX+sq2ABGA3Ie4OfgrrLFinoyp2mG/g4ZwkQyx+jQ3UmDfc53Rdz11h923iOA4zJw6tGIN+DKHaAN3kdF9laUVavg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737393954; c=relaxed/simple;
	bh=L7p4emV/ZMtBTRIettKe9Ehg2wZSlaTNdIffbKmJsb0=;
	h=To:Subject:From:Message-Id:Date; b=pgXxjk348LfwO5rkmwLFSxqc8NcYpJiNcJNoMwKuGjint8woDUSM7SfziYQ/QSz7ne/A7EIwywOgognsDPqLXaZwTF6dGiAgzna0qCHYcjxEDeUfymOVBnLs/WTfoNiDkdvAGm2Nygxu3Rc8mCs0ksE4uXdXNSAqkWBCfv+ASAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0zAsZSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0zAsZSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DE0C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737393953;
	bh=L7p4emV/ZMtBTRIettKe9Ehg2wZSlaTNdIffbKmJsb0=;
	h=To:Subject:From:Date:From;
	b=g0zAsZSE6oz48L88yyQOSgsFYj/DXnBmXD0OI1II72nvlKiG5/Rg/x4L/yIfIDcK9
	 6oR845+yPCuqtZprTBeSqxvXLIFNlao+UOLkWrx4KanHKceI5YbghrlW4UGJJf7Fxi
	 New6jkNWLHX8+5w3oNdht/Jvudk2u/UxlC+XE5O9Rxvrk6EUFQmgBzdlKSIzw2mizw
	 CxOhjDe/xoIo6bFKpbIoi6l0wtKvt4FuWmBffYn2ss4AphTwJ4LIOd0EcKSNned/DE
	 dThYAiDjsy0Z9OF/HvYO9q4dmAuhP+j5WEdgAzKadtv7bQAjyb85x7v7J3M4L59QjB
	 ByRdJDbuzEKOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EAEC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739395360.25722.2075934954104792953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534165ee740822f7f9d11f81d45f408d12b807357417506038a1a48ed13323e7
Date: Mon, 20 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737393953
