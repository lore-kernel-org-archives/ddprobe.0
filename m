Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5722857F9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758142194; cv=none; b=bNCpqkAajOnBPDA6fI+d9EZzjeSHlorzHu4bfNosEM3OoshFb3P+DWX2xPt5VvuJ2VjwSroiorvzxTN+dRflO7GlBcBqheCIYFdEpheT7TkelMFZa6cNp9AZSWDaol144/JUH5IKo3b0OJE9OqIPlSw7/iqT3IhPfmcfwDoRFwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758142194; c=relaxed/simple;
	bh=mK4O86rdRJYtIuVuBKL1TloiFfPB9IdysAkfyiGv9Lc=;
	h=To:Subject:From:Message-Id:Date; b=b+THHgN6JBvcNzQULLSi/VBr23IwKxzJmwMZa3MBGFRC3La76zVGyq6+9HVXfmwoSbOBqQBHAgpUywLjfBN+2LRdUWFyU3CTKs4ItR3YXqXWdUytw58UtlzA9ZUjSWdiuqgxIM9UN+PGI6RVLzAHc55Hy8X8WjtNgKJ2deD47RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5KSohx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5KSohx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9D4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758142193;
	bh=mK4O86rdRJYtIuVuBKL1TloiFfPB9IdysAkfyiGv9Lc=;
	h=To:Subject:From:Date:From;
	b=S5KSohx5tUUQKKoV8hbW3vOzHyoxEMZa5DacQvEdH6TxnMmbTCSrH0BWDV5Nmf6Xo
	 7EuIASXnb03kR6v1FYIQMhz40E+bl46a5yeIUOurKp4rFZ4Jo+kR6DNj9ImXqdLESO
	 PcHcV2/+JVfzt8zZykBD42dvsnbLy5a0h3CdiFLsNUSZTl2ftw36jUyE7ixNbRoeRG
	 9isqefSkWPG0iLLi6ZxQEJP2Hx6xkkxH4UNq/ItT0PdWG5irKXoAAZ1i6Pa08yjtc6
	 56z7CUguCYjXuASIDUs4OUbAvwQlkC54avSGWJYQyvtOqQgertQXRUxyQuWYxn0Tsi
	 1FQ9fsRygxfvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE6FCAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814219357.12373.9369693488263756823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ef55e4aea6cd695fcfc5a604d5ab36eb103ece2684258083cd82cac8d6f1a9
Date: Wed, 17 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758142193
