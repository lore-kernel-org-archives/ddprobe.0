Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FEF78C9C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785771034; cv=none; b=Bq2fL/kXWI414K4N2Fo8RAnhE4JkiUnBrhc0tGgzG9RcyyBnzthkzeqBwPGrZ02/oPDj+GqvdzLTCeCgJIYiAux9RZTc6KKq2XAJOhe+LPY9tAw2F1ZBy0RNVc7mAx2iq1jyfFcZ7q6VzHgy2u2gC/xHxVb+f/y12b0p47ZJi6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785771034; c=relaxed/simple;
	bh=CQFDwYClJ9RK+k4nWgdngR5Xhhxlsj2BEmzKN7vUqZE=;
	h=To:Subject:From:Message-Id:Date; b=pHAsBkBywRH/Ng3uhl3cw9Qkc0tBwrCVmgi5X0dMy0Km4Q6iKJWa3pek4X0w5MPQoFb4FWtzJ4Ra5uHWoIy0YAuzz2E0UCCps4FSNGqwpGUkCEt84zmvlS7e6bgwnE0PJdq9bQpIM4QDRVJmFo6LA21kY1+IKF0k5oqL92BU7y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rwi4GxMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rwi4GxMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBDAC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785771033;
	bh=CQFDwYClJ9RK+k4nWgdngR5Xhhxlsj2BEmzKN7vUqZE=;
	h=To:Subject:From:Date:From;
	b=Rwi4GxMY/NRicmI1+zx2nDHlfmEdt0BMNpCrhsOPpn9J+yHWP8HyIPRqklht8yXC8
	 4iLYGMLw1A1sS6Y1yjnxhyYcJ4ugp9Zf+E/M+nyIFOz7GCxOPYpEhmjyeW4KxAgOYQ
	 ISrf2Wj3qvwk9XsepFiRWEtn5TJPBJUOdspjypHG0e2Qd8bsifDyRbAAuDw3kaWG9R
	 exoumqKBLZKx/ShSAMBa7qKgxuhvpzCfnUrQ1iNhKw4LQ/llwvQ+jqICZ+RZl7KmC7
	 YjUkBcFWFFDmPyv7HnVJb7nUa/xdC/vr9RtBK/od3qs7ldZjO+FedC787BShEXkClN
	 TtAM+jwi+a3tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA60FC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178577103368.15413.5718542479852403066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0209d0051572dd006c2cf5007df190b19bb80503348c9d0fcbabfbed86351e
Date: Mon, 03 Aug 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785771033
