Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6067D14A630
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737748554; cv=none; b=Vsxf6ktLg9EMg1mirmU3Rc4tfh2rqmCEQTtMcQFIiaiV2ywlfjdKSHWfDgYEDWjwWuUEPanGpgajbPnvoN37ueN7UQb8pZpKoMBeXkQTzHfoY9qLauBhh56FDq+MZNpdcdbuseys43rjBkwS3ftm7H+s0kahxSEhXDzK2Xj5ZyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737748554; c=relaxed/simple;
	bh=ZVx+7yx+xgzA1ZVvhU+dtS9+s5PCywnj+tFCfMYfNEg=;
	h=To:Subject:From:Message-Id:Date; b=ipIe6GaMGQKeEuUYxiQJ7sxQberHAZLOYTfN3iBHm4ouE1eDNKWpUmxBiaMWTXNKDDNProxdjew/7xaNWz8jH+Os8oKxHmQpG99k5iG+sY+eoPjSEkA3JXKo3rg9jYMcL0iWA42irbyPrwNxeMGwQFeTVeKv9EtQ0kj/MiKIFRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DslWvvvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DslWvvvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3E9C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737748553;
	bh=ZVx+7yx+xgzA1ZVvhU+dtS9+s5PCywnj+tFCfMYfNEg=;
	h=To:Subject:From:Date:From;
	b=DslWvvvtwy0dQ+KThWTltDZ+1qGoQnXViK80Q7XTP4ooqyz01ZmUGqQ8WiT1zHG1F
	 ShuaPW+BeM573+LALuKEN6fAjuxiv0vSAgMUNvnh6tvEkmzDCJYk632RhNITeEYr03
	 j56hODg14d9YcNh9EYvNhsfwgliTkloR4Ooh3GJpcZ5IhzYLqu6bTx02LJ/YBQtYMH
	 K1SKs8/nLGKqo8qsi7WtMs9ofPLMZhHvfKOMayN7AlC7jl6OQlc8DYXF8LSRDv2+bZ
	 1KDQnZhtvSPT3tKawonbTod+ll3hhZdp4Igi06Ufl6XgKq4FzqIsLQPJJkSI8eXb2j
	 wfLCyQnY/MQUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7257C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774855367.10220.7130391431539288536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03eaa11a53aa533be892d7a2246d7e3784c957babad4605b3f20d1330a7d50ed
Date: Fri, 24 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737748553
