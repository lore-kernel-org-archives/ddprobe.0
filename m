Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5DF2D0617
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766415234; cv=none; b=bkfbOUZCf9o0+huJqm9xH0vTI2ru0Y9zB2DOvRmzcCk2fXU0hrM0ekcD/t0NohrgFffLblwyFQvUu1sufnqoBHpU34GKahSjhwL7f2Eyb0R/QeqeRqxxhdeOX013N2sPTIB1GondctO7edTk71xyef8IZXmwKqBqVdyP2oaao/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766415234; c=relaxed/simple;
	bh=z65KXmuh07OXzaMiGbgvvnVsjLzJK6j0jTKY7m6z/5E=;
	h=To:Subject:From:Message-Id:Date; b=R+8zzmpaprOyy7M+LZJ6LIRC5lz8YroXru0+AqkS5a5KCFb7tlpTXc+zTfUd7h7g8v7Jza+L7ow3LKhH/KFCURV2noGlPWPUCaOcf1t6wgk6qdFpnHAj7NV1Z0wCIjjDG/Qtzf06i897fcR7Lo/r1ulmQEb5dYQg2dQD+MvMJMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VspsTLon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VspsTLon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDB3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766415233;
	bh=z65KXmuh07OXzaMiGbgvvnVsjLzJK6j0jTKY7m6z/5E=;
	h=To:Subject:From:Date:From;
	b=VspsTLonNBhUO7kJWs0w1145x3GKrPrAlCEwaCEj1IGvXdVXrdXHZElzzMYxr3WX7
	 y+AgzfQ1tDB7xh5d9uSEl6GrHHQVVtp5l8cnrdDp7YgOGm11zD8UcijW0pkQ176bHd
	 0ERjQYs5FIMf3i4B8CLWgo5EOTj/7f99h3hBDEWCnMIOm825pmfV203q67RUQ9WacX
	 Ynhalx+FABL2Qk8K2t03LWAlAh3eaYLNroNL6sknGq/yZ45qgZEfjbWEe11+HQWF3/
	 zK04mm/8U0JSUhLb548MWkfmCqeQPfbJeuBydEvAnNUmL7zEtM+Kg3RyTuWlxw7VQn
	 jV6D0MaGvzOOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE07E674B8
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641523358.2899.18279082260002734241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9708b57a1a8e0c87816fead7103921c1e709519aeac5c0680c596173b84417e8
Date: Mon, 22 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766415233
