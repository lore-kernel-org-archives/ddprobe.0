Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321DE25EF9C
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747216794; cv=none; b=Nr+P467CIjLbWTX+4pUxqx7NnYgkpLn2HEJhQRE8kAI3ZuHo0ycsa8/2UxGpytG0uA7+zW5CXDIPRt+GIgDHZiGWWCurnirwKb87gdbhj5WW4QVOK+UnCpzy9HAVGXIctNBi22WPoUewfnwijEnB4dsLEirpBWRwUGgGKXux/T4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747216794; c=relaxed/simple;
	bh=dqeUWTYzIgoJtfibMaSMM+nPW+svZd7WCW1HIM1XwUk=;
	h=To:Subject:From:Message-Id:Date; b=p5ZmkXqhW+OpKV1CZKz/1EROqgXGeANB7IOWFLze+OcycdnbhveFuRVpK4U4qA68ShMJXTYRcXWQB4ZrwCZCIuqSV3J7IIE3P/flir60RYjzuFV1RjG5BrXRBli4Ify9LCYRx1qDpkGeFp8Lm1bue7l8JZKL3G7FvlCxkw1idUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBEItI3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBEItI3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E576C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747216793;
	bh=dqeUWTYzIgoJtfibMaSMM+nPW+svZd7WCW1HIM1XwUk=;
	h=To:Subject:From:Date:From;
	b=bBEItI3vGq4yl1iPkmsgKCjXrEmyyV4U7qSlGw4tsYbsDO4G31dktGUAeWiGpzwE4
	 ZdQ69zu117A7RBjX9bsdbLmzoSksKWz2cU84rA7I2bmQqCHin/MCKP/obLbe+Kr4K7
	 bCmwObFvRduY/qL6vgMgQWPISe26W9nApmYzIOSAKf+OalPH/mlO89CfKEZIcOXq9Q
	 TkCFbWajQlJ9HU2YilU8GIBXak5BD/UBW0K4m5hUEH5+UId82Fe5iecDoGfJQOzvOg
	 U/zIKvQyCMsnEFnRCqCK+L76D27OWnM8aXxvdoW0UTrNZVlTuwTRBwugcqRlHSlvs1
	 EamMECmkhUDiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4D9C3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721679357.19687.1739473372717479703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b46f30add1215bda29ef704e07c8cbd9a5f71c9a6f6b5ab306687d69e02a6e
Date: Wed, 14 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747216793
