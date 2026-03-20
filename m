Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BB113635E
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773980094; cv=none; b=qr4T5NivSnhblWLbgPJU9yhPWMg7+GKfsOlWvahwhezQIuGdcp4QR8nPYoicCHNPfWj7+OM7OarmuWuG6PyXz+9rEdLWLR4Vf/Kpj8eJWuZrAkjdgK1vH1TQCyWrvUq7xeNjSzF03DkQWGxX6dZOKcalvUc7ujBEfxHtOOjVous=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773980094; c=relaxed/simple;
	bh=cvqY53htRFl1onBGo2cogZHaFVcgAIwcfuz0ltmQhTA=;
	h=To:Subject:From:Message-Id:Date; b=IkngA7CP5LxcIOFZRh/dwB/OazeXwENZJehex0okJbY7X6oN6l0ZmUHEwW7m+BNoXoMMb3LbSND7JiaV85YHnKZIZqLnut2//Mewg1qw9wHC0EMXheIJRRKuOhSrbvn1X/vA5rQETuaVJeGUonglkfRMPHbhUjrR7D0JReNZXoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzs6Ya5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzs6Ya5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773980093;
	bh=cvqY53htRFl1onBGo2cogZHaFVcgAIwcfuz0ltmQhTA=;
	h=To:Subject:From:Date:From;
	b=uzs6Ya5Mg+vmL5d+vDSYz5+tCfXweLOcA94o6jqL4e5uXf/Gu03L/UoS2PD4pYHFx
	 krnO97+1/RJgdOfcHmKwGY8GfS0TK0SBQRKIou4exxBLpnllrb3lbKXD19kWSNPFct
	 kmAsLkcdUtd/zSo8ulWOB70GIslgiLYXzuPG08D4hz1LMzeXXjwg+3bXI175eQZgnd
	 E3cIBUxcFMf6jI1wSXTtHlUF6xohfTrFhJU3YKbL6P3GGpZQlDjw1mwxEbE11YxzK5
	 EOsHZW9p+WNKSPRdDHlfQOzuqyvweAco3vsf6ZjKtwb7pxhQMp7TY8D6f2zaxzCUGr
	 0tSh1VXaD8Jvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B6FB5EA9
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398009357.30073.11276714916199115558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8fbe1a70a215521ce7a291b2879787256e1d226060681203c5a34cb7b6fdbc
Date: Fri, 20 Mar 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773980093
