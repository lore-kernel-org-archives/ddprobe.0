Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E04231842
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771009494; cv=none; b=Q2mO9PwAZrqTmzH2tVZPuPw0LXfwYDGtshIPs9VV/eVFZgI+AdNr9YL8WYzJ9lkXa/LWk6BY+tTvVsE2I2ejA8AKRU+ovjNG6avXE0AzS28fmgQe7DcGzbjKfbBXHk/zRXVCbk4eSWjdSXKO6cu8Jb0qnjSIgoiX4zF3rNhDYZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771009494; c=relaxed/simple;
	bh=u2nT7VeqFyE9cO80VgQmqi2tSSvy13w8mWv54qWsOVw=;
	h=To:Subject:From:Message-Id:Date; b=TKs0Z3TiPORVTHmyIU0YF/f3VZ4c8JT0uWmlD7TSRcBWqqJhwpW8+BQJ2JVyo1BJ+TFFNVs0AS8lRZYS8CejGT5iwKcadAORPlgGOIk/KcLK0ARkgvFTEX+ffD/+UHcPGJmKsMpG+iJPkFZp8w9bzDsqLhRrRrK4SLLJ/3il5KA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5eSRBvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5eSRBvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9071C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771009493;
	bh=u2nT7VeqFyE9cO80VgQmqi2tSSvy13w8mWv54qWsOVw=;
	h=To:Subject:From:Date:From;
	b=U5eSRBvoLXsvyirvgylBv4tG7nwb/OMg6PBJcLynVfiioWPOyobCqYsU5yVvcA9HT
	 M2tqRApzWEOCDo+xzNl/35co1RgPnQKyvQ5gvTm3d0BhJEMbhlU+gpHJQGAJU1X5O9
	 yLd9KXyawhLjk6qLS6Dvgoa37457ljD+dlxGyQ2Zt08ZDSB9kHpGEPagtW9gBxJJjI
	 mWgL+pNZcyhcg10nr4QS8Kbj8mhJtKANxsurZpcbxJvq1HHcHHaw71KvRZkkmJvV2Z
	 K/ByzTJhFuiFEEG2rzwgjRvRkWLz0up1aIw7mE5YBAk5recjBaCxRuDNtMwbseAqFp
	 LKuoggV7U0njQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDE6EF99C5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100949368.24155.6998497895575375931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5672f59b262b86f09074bf4d0a8546ee01b3a742fbfb05d42206ce2c50d4fc20
Date: Fri, 13 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771009493
