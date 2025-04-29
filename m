Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CBC13C3F2
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745939994; cv=none; b=ade1Jwvt50eUJD8/k9+Mms7SvaQp/NW/uH80LFDViYG8wan20u8oXNVl16ispxaZR7EKDGih/f7TU/zDEHIKecIKYxKeKXtgaI87nYYhBP1c4JxZlta/+RL3B5flibAoBl/g7lpk3VQQguO7e0iKvVnKVAPuzvtM4LJCZhrmj70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745939994; c=relaxed/simple;
	bh=MkqdgHLNW/xXKeuh4phkZwRdlHdYf3rSJ3sN4HP5/Do=;
	h=To:Subject:From:Message-Id:Date; b=ZVzI3wU1nZItrtBnYE9BuAj5XSa4LViYfMhvrv5ZzU3yL1ikTa/pgui531tgmg5Zw3Z8OLBC37n4bt81M6g7TIwa4GyMrsL6QQjM4589ojI6CGBdKqHszANDRt60LwxOtnISyS/A939APFh6ywPxHXm6T1UtAXjMdsl8wzWvS58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krltqadq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krltqadq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B77EC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745939993;
	bh=MkqdgHLNW/xXKeuh4phkZwRdlHdYf3rSJ3sN4HP5/Do=;
	h=To:Subject:From:Date:From;
	b=krltqadqzcYxNPKhqVLMvTWq2iUAI/4H4FZHUO0/WGf3tLUUNyQJw4Cwq+Tk1JItU
	 91b+2ahEOlZgmp7ZGLIkfrpdIaJZEl+9fuXkamOZzTGxThcZZgThLIzBIK9Yr0sGo8
	 g+w6krLrg9VzUl7NlIG5FwqrCGsE+8JnNyDZEqKGTpoRI178n+Lj/nsIwBwMsb9daV
	 1hGVbxDzJQDkrhHatuAKKRUGiwU2j0xP5bRlwCtWxwBr5EDaCgQm3fTgCwqajJGKqw
	 hMaImDIWnL3DLed25N9DbBYfryini5VUl9pdp+eIHz/HI5iqehQs3E0jsuWXzK9gHg
	 SmUDu+qcvRl7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF78C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593999357.9028.5257302154751886090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f340939cac60f2463892c214588257b4ad3d60421680b00d7f5b5235fd4cac8
Date: Tue, 29 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745939993
