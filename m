Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B88A322DAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730194; cv=none; b=DkEy/wGO66vR1bfheeGGMOe3C1UenRIeQHFTyfnuZyjbBmNlh1ApJLGRBKmoyEptNOjbLIbT1OpNV9WO+K7YMukt+KhVhyRpCA41RilHoxwv5bX9ZMIsEYgJoK+hV6C6ZMvtMxOlHjBfSdn/DzXOWXaZgNQqEwv+tUWwBdJsQ4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730194; c=relaxed/simple;
	bh=tBrywf3cgYoDs4VchLhGrlPhbsjJGgUEy58T6QUYJ7I=;
	h=To:Subject:From:Message-Id:Date; b=nQw8hUW95TqFOUZRwRQiT3wiRN8HPZ+PJWtlFIO51jvpdpflGLrkHhsR5KyiQlFmoSQrhlFQO/PI8O5JQNWYlLk9uH3HtKkANiNYyAx4Z5DEglE0FNqurKznfF/QTRXePUcxIe39D5Bx41XYjHkG15Bg+K+ubOwmOM1E1MPnOaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axto4vt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axto4vt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFD9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761730193;
	bh=tBrywf3cgYoDs4VchLhGrlPhbsjJGgUEy58T6QUYJ7I=;
	h=To:Subject:From:Date:From;
	b=axto4vt6+WovtcKaYVNpK4uCr6o9wwfwuD3/8cl/9dnT9kxK9GUieZKLBVCYmAK9l
	 aB3KhtroyAsu9J8+/8CMX++gjTf3kk6Ad+lCaQst1e4A8iw9DFBYnb2cYs3Vl63v90
	 EyIfgyEygdqdMTf1yHIQ5D+rcuL077szIVpchVZB0DEqp37i7X+3E/Ix3YnzqCgQ1l
	 rtaZJriqdX3URtMuKBWiyX5nNCF27BKrvBlpCGNDzDaMKjPWGL0SecUHha+XuQsIPf
	 wqe/oUaExYmWpTUM5oQF7wNEtFUvg3x54cpDs/qjOSD8QE9Rp6HbWyWPwDCrK8dqjB
	 5D7hqcidrV8ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1FCCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176173019358.28047.11555784585572977873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcefce4411784c95ed998ea23b8c9f1ecb3c348c4d26fbc01e30f7d9ce6d4e78
Date: Wed, 29 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761730193
