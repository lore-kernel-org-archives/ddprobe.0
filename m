Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24746A59
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754113794; cv=none; b=VPIRupXFgGBQBYYiuvndwmfGetVVi/ojgE3D4P7GGGjBRXtAqyTYjGdIxZCVXxuxUX9WvX3wGNdJxd9IIfqS0iq4GRvcgR4Sm+JdfeQ2smj+qpUkMq9xiMPEypMZlHXwhrbmWRAWQxjy3wsf7wZyrV1bNK6SwZ+dNef8WnXSFlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754113794; c=relaxed/simple;
	bh=VD9ziR0hyGcnVop15dcjBvyD++LaFvQLUkld5RNNrc8=;
	h=To:Subject:From:Message-Id:Date; b=uzz+KpO5KWXZZst4ypOLGWRj71Kqs5Jpl5dYcy73ghp1WnzOfg3wvIKKmss7MN+t+lO7g2W5cHDs9dPunCc4b/7cDFmKVZ5NmXjv2zYUIBKz2qnPrJjvaPCsyqW6b+qROul5jC4ybk4lefjJkmg8NoIf0LjjxzZk8KxJyYFVxBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RovwUNqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RovwUNqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57C2C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754113793;
	bh=VD9ziR0hyGcnVop15dcjBvyD++LaFvQLUkld5RNNrc8=;
	h=To:Subject:From:Date:From;
	b=RovwUNqFp9QTBSjFXjvHzgE5cxLh2cJirPax536iZIzTkVshA9Xsc+zKy67/X03wX
	 dgcBuanfQtItMgtOYG+Tj5FIigMekLd0Ezn2vrsMfLi+ou2bTQGtPTY2Zl41FXGWMr
	 xhpC+WyDuBlnzV7JoWP8boi7ub/B3t+ydJ3n82Yx1IFafpIFHWjDcdY4IQLHJ7HLbj
	 W80PDVbwCkl9BkOIOwuja35ePuvnZ/RdgB62gGdzvr9kLLPrc4OXn1Jul9hOeGHssr
	 sDmwxbX1nys8hoBiWHPDfdQhnC4J8CZUoClDj+CVSaiWVnKIAOS2GdjxYRgraJ5PUo
	 sdfvhwtnLaq7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FAC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175411379357.16421.762025000550414269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00a0c1c9d174773443797d3ca7c3c38259f3fc7d37d100e767dc5c8e3b80497c
Date: Sat, 02 Aug 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754113793
