Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D3119F115
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762656594; cv=none; b=tvqUKCFxNicS9YWHA1rtR6WCmPoAXVlflLbyXbDcwR5I+w/8IZTdJRLk7POBZBPbwSnuh/pNBPJTazuknw0/wY/dw4A32C6FS4cesQG2xiKdwPu+GzgWxfhV1y26hvMHeUJ7KuQQky9OGRm3lml3OBbNaAYlJ03q1DaCan1rmNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762656594; c=relaxed/simple;
	bh=YobX/8cB2QSKV0Syqrbsb16SiDEu6ABKDqA1HieQ1Po=;
	h=To:Subject:From:Message-Id:Date; b=I4Chv0jQDpyJKUqisQUl1aQ/1IFUj0uq0lczZTI4UdGHzLTj80Z+n/WX9m9T1JFM2LXsvxHTKPEa40f4N7N6cRhMfjU4qsI5oOXT5VQ5R5wHfksjrj+U/vL6cKrV08SuwEQONdQtj4kUs2w/n5dUXOJdFBZ2c36FjfKeRpBG3/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S0RvSjDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S0RvSjDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B2EC116D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762656593;
	bh=YobX/8cB2QSKV0Syqrbsb16SiDEu6ABKDqA1HieQ1Po=;
	h=To:Subject:From:Date:From;
	b=S0RvSjDlfesyqI/dD8JKWnboph5IZcDtzrvZO1Z5bmiEub46BhHcdeD7TV+gKFVre
	 V6YsUcCY/E1rbLZHJrcFV9AZXKDVquuYEJJWhhnr87suWGxdeAFxD38QJOgJq3eQ0m
	 hLJd2gmGDZ6TujBNlC9jB6fz71qvvG5EUUAxoIrYu2PuYl1Y5gaoLZENu8wIAHOOGg
	 9metFccnj7aDLHgLnTZjoCI3E97hjzvFij8/v/YTXFD/TwWhR6auBM932BoTnNDr31
	 qLu2z1nlducunhbHp3nCwpmTYq5ZIld5GkLX3skN4kh8zO9WQJ/JZsqacW6sI1tu7E
	 6UpypEmEQxMaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAACCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265659362.24359.11733021968593563549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330d32e15136c7626fd74586b68af368abf508dc07ca0e23173a15f368a20c37
Date: Sun, 09 Nov 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762656593
