Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD1F1C2A1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713889823; cv=none; b=sJJFoBtRFkgltmRjhF8lGP2MVs6eqMAC/5cFregjGBadDpbeRlPsX4/Lkzayc46haDiA3gfUqbJMxfPf36HdeMq9udO5TXQCy7QAe5WhqMvT9xOu8irczw9Kq5Rq6RWD6BQ4oligVA6Cu01dtCXjGmiWQ9HD5FuYjiqOxuWOOcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713889823; c=relaxed/simple;
	bh=D7IQlozS9XsKVxzBhFVx7mAxeIeQmlKMMvY6lTMyTCE=;
	h=To:Subject:From:Message-Id:Date; b=dSl4Zo3luEgSck087kVV66x7Vvgy0WiYb+FotKX/1Sq9av6nAptUkWC3hPokcwPam1tTKl5DcpRV8/79XZBPcqXwz7bQENUanhkNeqTVgtTWIlVhCjJ/PagCqvvFdmmoqRZC5n/WXshnq9MdncRt4ExbmU3sRMXnYMhAGNXaHa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byKNf3Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byKNf3Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7420C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713889822;
	bh=D7IQlozS9XsKVxzBhFVx7mAxeIeQmlKMMvY6lTMyTCE=;
	h=To:Subject:From:Date:From;
	b=byKNf3RgfH1WphNB66M4EP/KcYqxEfXtQR65XEhPbSxRvWdsTiMBArXsgl2DLsbrk
	 UaGZq5zE015hrI1+b3qvZOJTTIL7V/Vb4UPbm65UcPmWEks4GLsH1PnElWKyVZb7+M
	 JfhYVgQrsaDyHa2bbqYbEsTBhPObvSXk4fYxwtxL4f/zL5oRPL0J+BAvgn3v9JZ58o
	 1FzdiTxmPq6cxyBrrzwEHf1rUxyQ5v+KED3x6AEdupruIQGfLYp203BOJvuxT/C5L0
	 SFTb1z4yZ2W08JYgOtEnTJm/XZMCaMz2t4Zlf9O8RTtt43GVakidZlwLAMuhPZeYYF
	 3u3A7tE0sVdLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F4AC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 16:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171388982276.24640.9627870874015617221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1027207a73c0198000bc48258f102b05fbde099b6623196846f6b7bd3bfb41c5
Date: Tue, 23 Apr 2024 16:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713889822
