Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33122940B
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760493593; cv=none; b=B4gHpzy2Z0UbQeSxBgsQpl5mxRDWXRANWjadoZ3WTasWr4zRU5mOqUMwfZG9qxqVZ0oDJ/Rx4VPkfzueuSMqEtAT5XUzSiuGXA+mMCxMms7hnztwJlbk+lFgAejtmOhjkzR1ga3x7RXb/LYJtCqNt5ql6+jBzA57LL3A7QzAO0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760493593; c=relaxed/simple;
	bh=Pp8epuLjKjBTfsq7scgSHDgjUpPoz0u8sYBUaR+M00Y=;
	h=To:Subject:From:Message-Id:Date; b=uEYX1kZqkaI1YlNTjnF1ru2/z7MFhCsnVNH6T1vSlkK4EhT6X0l7I+/U1AP5dc6lAQOIhV60uO1SgjbFxq0k8RHWzuq9uBXeOsMkLipsoafe30WRx5zHaYTmlK97Ml9vyn2u2IQe5IXCZfOHBN0Z3fSztKYwY5oHgPKs4LEgugw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUzR8mXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUzR8mXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B54C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760493593;
	bh=Pp8epuLjKjBTfsq7scgSHDgjUpPoz0u8sYBUaR+M00Y=;
	h=To:Subject:From:Date:From;
	b=iUzR8mXPduge5Zbu/qUuM7or7BpWpMJbhofKj1nb/j+szboA3ZxY6CHgu15sS7jvs
	 06ghFNGHbyQ18YbStwX+QVF7X38SXYBv6lDxx+Hn4XhM4ju1VxqURno7xVPgEIhIjS
	 KTGfcMZVR+X0tHBMq1eZeWdP+lQX43lNnvaekzj7VjfERhUG5fdzWPcuelBvJGhNco
	 riyiBCtqpXIz9FuaoQuxSfBwBDlbwtY8QBjH5c19Gte8XZNhh+Gz7fk/ZDWSve/+cY
	 IOZ1T9MWCdAn8fAwu7Ecp6mV5/hyF47bMXVyYnoMJisFib41wtrkn/sR3hiySmf9+u
	 AbrGPVswJ57Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E3CCD184
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049359357.22766.998402549581268658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3e31fe29172bd36c4269e24bbce7bfd2319f9d3efd05e643c6c25d07def9fb
Date: Wed, 15 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760493593
