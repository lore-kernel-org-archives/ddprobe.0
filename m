Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA4022318
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716841463; cv=none; b=e8kLCqKBNEIABxVJu26LHr+ZURzBv3mP1r5XAYyYpac3PvB6J92lOKzx0qHJ/6SkZUD3vhoauxcdWhJkTBqrHu+Xnl74GOEvMi+NhRPewZkqHjEkRKgl6POsccoQ9j5j8/6s5JEHLLfUSLc6nq0qmWIAvDezhpHGiIbq0PaSTLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716841463; c=relaxed/simple;
	bh=4T3qfeEPOx3zsfKb6uWgm56PhDupsZSXd4d21vFCOGI=;
	h=To:Subject:From:Message-Id:Date; b=R0nAsr8EGmIiWvnsInRkSIXV8casJdz3TxXoock0oNULQ7aj4L0twsHZBj06YEu3Yd1pXHMzQmz1TDyJFrQ+L+sQtLTgskffoCCHB1UwhH0BwI5+Cy6DaZCQcSh9vgjqYmwUhyT+FsCv5Xzi2Ssi9zEQI3MWGEhEZ6D+Awmmc6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WTB1fZI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WTB1fZI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D337FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716841462;
	bh=4T3qfeEPOx3zsfKb6uWgm56PhDupsZSXd4d21vFCOGI=;
	h=To:Subject:From:Date:From;
	b=WTB1fZI8kSstB75WQ06qg8nMXQMP2VK+e9eve2LSxBspayHJ4ne6bTw4frcUCyXi0
	 guMS17FtvtS4Hs3hO9DGcHxC95JoxfEchaPXcEXBjiv5RIflsDu6mliKNEj5eKuiPI
	 6xjg1VWZC8vGjrP9PxyJOC7xu+W/YIHcXWlIQ9OVdt8ISuIaaxK/7DEfxSfLM1HH/G
	 BZZMzJWLUSKVcw7mWEp0vEumRkau30HZYtu61DgLd8MYOwmgx3z9faUQBxLytcYwN8
	 KyNrB0NtWBht2Mi21shpyYsNKB1tupc5uvcduXkDYUq+5mvWjfZY2zKKym1AC5Q9OV
	 xLTQlUTroIyQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA96C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684146276.9459.247286170036559143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b095555ba392ec11f248156feca57ee7aea0879a54a37b16ce795154bc6a64ab
Date: Mon, 27 May 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716841462
