Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A5F3C9EF1
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777406854; cv=none; b=Qa3qkJt/M9XfegRaj1IX3XMfgXpyoyT+nh5gMETKWSx0ZlbRoDyxvfoEBGl79/BaY6tf4TTxLwW/ScB2DW+IaPHspXjjx1gtQ0Q3GTPFK3/u/F4yqfUa+2hpMnVuLiEKGgTOeof9VhZFg0Py56LLvQfmwQtT/dHqsg3WPIkFurM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777406854; c=relaxed/simple;
	bh=EKWJhCKXruo+5RA6b9+ZLtRS6k4gtYQkMpthu9jQh7g=;
	h=To:Subject:From:Message-Id:Date; b=YcCNmEb5TUeGVzOEy9LEw+YlJAhaU2tyEzyuUi8fHm9eIEWUpV6QRO7MWMr8VSpo/9BixDU8GF81wxCQsiIMyjqxAlznHHo3m4iF9WnNWr81TPrhVFHhKUvArUz3e1N6Q4Of1gd4ggKA2pIoL0umS8vlrglB8WxdpHR0Nc+G+M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwvRxEbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwvRxEbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6E43C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777406853;
	bh=EKWJhCKXruo+5RA6b9+ZLtRS6k4gtYQkMpthu9jQh7g=;
	h=To:Subject:From:Date:From;
	b=cwvRxEbi5IAxApgGnAIDuceVnYY2Uc3YSOeGw9+0p+IDmWLgzRWMfUh7Xb6RMI6lg
	 F45PfZHOiuJn2QNeyK1INRu1ajDtOjK+46dlXFqHn7UAmOWoyYRkqFvOBhIy/vNAT6
	 bwrz0LPRNXH1UI8ugGiP/6faFp1EzSikERc+A3fBkj3s7SzKAeYp3jtD9njZZtyj1I
	 6wJHzamagC+lphM5PLo/vj0oXm0GnmpQlsGVlfi2YLGvrSK6lXK91vV1atJ6MsiF+y
	 PunT2a+jkOZ78cKp86lLi3/J8Ftnnf9V8Bs/Bpbcwup52y5VCv98w35PxKDm8J7WjH
	 UuBIYC245QpZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE7FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740685368.16848.15233016699882871759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ad0ded726b62bb9d6573df91120cd234a15197029bbcf8b9c4e9f1fa53e279d
Date: Tue, 28 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777406853
