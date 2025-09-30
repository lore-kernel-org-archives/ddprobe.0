Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491F11C862F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759254594; cv=none; b=Y+u8Rs8w8rPUrt90Nc6uJdlD0Xh7nmpXJRnMfQ3tzjLHywa8ctKaEk1dZx0eYpS8WbvQyh6er8OrwizuMXg+n8YjyPGu62sfJhcZzda17IJudmW/d/A7J6NpBYhZDLmBgR+Wo0Q6I7upkXM2TStGElK3Y9rJMc/AI9+YHYM83eY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759254594; c=relaxed/simple;
	bh=+rnUbi01gCp51L6Gjhmhups3T80hQnq8Jg/1xiDopRU=;
	h=To:Subject:From:Message-Id:Date; b=DhHZUwP1mWW8Su3Z2fqJMK6IAaVg0/k4siiJS6y/2lnJbOzYu+ZQtqz5XgHzmFwi7JLsJxjkQmnjzt4utzXE2bE+/h+VM7fmeDzVYa/gXGz6p50YqwNbHeBaqUh/AHWDU2Z83dzPtQ8E5/cgAsqHY5f8USvo8KuKCUylNoiGg3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsz47dCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsz47dCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6100C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759254593;
	bh=+rnUbi01gCp51L6Gjhmhups3T80hQnq8Jg/1xiDopRU=;
	h=To:Subject:From:Date:From;
	b=jsz47dCAylM67ob4GcC/QOPy/1hLZ4c99zaZh136EtuFPO3NJN/wfYgl3I7ZxkQti
	 l1nNmda3bflc5aWRbi9XaTRlsZQFSeNYLA5ZE2kgTgohAP9EAnwzeyvwiVx/uxrwoi
	 a2Qab9cImMwzO8PktG4pQWuzk1kJ75RcNG0t9Q7SfDejvdOE0KEHqjFQcdTdA6qtSL
	 vb2mkfYwiSH3OhuFQivKqWTRrjhet7YK0CNwZQvIVIHFNc2Fh4FVJwuE0mjskpaG/i
	 Iu1FumwwZmdsvxXLw2l5lqu4o/DxisiVdBY+fM2Nc+BHWKNjSi3JsvU74Gt8cGNRlL
	 93uKGWXVKmL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91943CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925459358.26189.1183774418841976352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419ce18411256e7b010535f1196a9458bb163fe4a68b03a69ef461c430f99ee4
Date: Tue, 30 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759254593
