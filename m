Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F03353A7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756426194; cv=none; b=Nkx2Ymr0AG3WcP3grwgb5UzvTboLdQAAKXihCZpLdVbnnN7Uch1nYw858Rc8hrlKA9OufGyaYl1pZeOVpqZcPTnDPHyewuNbPcnHvKtKQpHQOVBcNXLl6hgTZ460eFDDp3ECO/E/UtSzH8v52MdynkPPTXOYkXcmJ092VN/H4E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756426194; c=relaxed/simple;
	bh=5wB1umNLNBXBboSsOLaJqxMth6b1J3zYcPdwWx3pLZs=;
	h=To:Subject:From:Message-Id:Date; b=SMMEifFktA1fWSX0b4y3RP4v7YMuLA9HeLf0WCQGjWa06CVhMrgoIxtjtFVovROnoBBk9IyTctVfP3AzWYi1MJ0LdoND8pcQ2oWlyggIbfr1SubV/OuJkZHowXpJjddxqCKE+XSfjwX4Whn1tX+9qrcNgc83PK1LAgB6nyRZmJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6eghfWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6eghfWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7FC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756426193;
	bh=5wB1umNLNBXBboSsOLaJqxMth6b1J3zYcPdwWx3pLZs=;
	h=To:Subject:From:Date:From;
	b=g6eghfWhITzlvYrkdPQ5UZFASEVEiN4TZ7vK/+aKoQuoaxRWhGVsOYD/TM2xHS9PY
	 97hT1kYgUcP0DyooMJiaUyzdw6e8GDJbRSgZrHHDBLYmVzx2/wcZrE4F52mc7P7tEG
	 EJQzMDGAjt2VJSSrN/87Xrobk8/1iaMSePG4ssQIpez7qb7gEoh6DArzeYQnWiSkjn
	 HX9phhGrj6N/xmVciXxog/ApJZl1ODsLAxPZOOhbBlLnROSajkynxwYTOn7/RMB3Bv
	 8G54cbL611bcURM8FDA5LmMJMOf9KitF0ZAy0zO/1lE7hpfa9rSxCHdPy//xJUUuNQ
	 wcvL65cUNsSjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA15CA0FF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642619358.15359.11217415267059362241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a207389b4fd1bf97c1511809d5e00044a6042bf01d4a8ed1ff076046b4a40ca6
Date: Fri, 29 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756426193
