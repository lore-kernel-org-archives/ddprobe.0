Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A841F09B3
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763731913; cv=none; b=Zh8oEacACaVck4+d8gthjzn0cZ2b/vXP/eRdhMF7zxlwuFM3h5pnsp7I7fFsyGI9R2AJx3gHTBOZK4sznhMF9KB2qO0dl9LyqVq3uycfgFu4ptRg87yFh7sW6Rmv8ABimNftBJjPdnBpNVuT8P9bCK77Rl3aMa8V4PnWIW6uFc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763731913; c=relaxed/simple;
	bh=VV5zt/My9jqKTYkbrEdKKCQqYA4GDjys14K4CMPxqdQ=;
	h=To:Subject:From:Message-Id:Date; b=kCXVzbmPLyxmGPRoiyY1ysgyYOmMFawBYRWrlnLBpS9zvGO5kz9AAVu2VedmjG64l5l3FdIj9yFDJqOTAKvjo13rbJT3WZsoVLwRK1YssC5QEH30OKXVxopg50EZc2uGXcyKn76yIZGjBKko6aM8vFOmEWfoXvW+t2a/Oe8HLXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecWF0V2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecWF0V2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA89C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763731913;
	bh=VV5zt/My9jqKTYkbrEdKKCQqYA4GDjys14K4CMPxqdQ=;
	h=To:Subject:From:Date:From;
	b=ecWF0V2Dz7AYlB7muFRyZ+t5D4ntAu+RlLB0xmQ+Hyau70bMHFSeJ36LhuMRBUx7k
	 KwOOi688i9WI32aYVlPPnKoW8QNyj6ZIWxWUXhqYqjNEP80c1zepy/wlO0RjkFIZiv
	 jyOuXKaHbeX8Ya2RZWQmMVrKJWVxwy5qS8z0/JNZ+y1Dkjey263no4L6iue/vChZ6l
	 GPzqkzXqsPIxxdj/Sa8pQ0fbe06C/W+/ZcW9me7njpVEHduUz7TJ423UpGrezA+d/c
	 tgxCq72V9JZcjYZAKNz7LnHTxA3zWNtpadqreQlZEw3HUxYl6+VKzpQaqrCvYX+2sa
	 ahEpJQHhS6yZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE1CFC271
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 13:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373191358.24036.1342162991086828485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f450ac7d84ca5d4790cbbc33d5abcebfe8f086bf62466099277bc1ff2ad02c
Date: Fri, 21 Nov 2025 13:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763731913
