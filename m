Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264B113BAE3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751187595; cv=none; b=K8yaJeo6I/GdWl42LuJc7R4XzeNcf4tBQtJFxDV8NzFqcTSSkIkHR92tIa0QyNGpE06hGXNdG/sgsvkzVu9rnkUxAm8ekvvLolmgHyLW+4JE6bwDtcCcClhAACr+KGnaEDGhSnQVU0Q0Co/alOFPbYkHVT6ZMLKut+8c5lsCuGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751187595; c=relaxed/simple;
	bh=3iMHoQHnXd9LYtBxuM1XYFKs851ZZJ8iAjdyTwt7VDo=;
	h=To:Subject:From:Message-Id:Date; b=L1OT68NZskejVIsxJYK0iLJU5u4MsmGZy4mJb0CyalJMrY5CWPIFmvVDSs6NiRkONmhg1tSFoCY3egHbzI+RozfkkvoTupykRk1U4AQ1fMHbh8WZsmM8+Ar2kJUDd5kVWZf78PggDsqqvnIBkxXs36foz52d7KsioUlB+ZrLTnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZkhcCgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZkhcCgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EADEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751187593;
	bh=3iMHoQHnXd9LYtBxuM1XYFKs851ZZJ8iAjdyTwt7VDo=;
	h=To:Subject:From:Date:From;
	b=SZkhcCgc0ZjmIzaypgCxjpw2ZfWuHvnfNA+V/NjsPJgC1naDeXO24TGkXc3FlhWq/
	 2Q5cZ89IIgwp4RdTYaetwDBguZdam/6/Y+u9n8x/mNQ8tM0C4WqzHAUzqPheNB0R4p
	 +wmFoyvA0hB1Nqacw/AJH9y+g4sr5H/8ffjC35mM6zqOom6clEFLJqxWKjLxQZe/d4
	 AnEKCReDhxuLNBbFioGkxvVHRoeHe4nhjui+YypD5vfM51Txjvfj/aZ6QtyEZPW7y3
	 JpxH2fX6UH93IcADQ9OLMQRIGP487jBJ3pcDrg5ZxHDLj2XGsPkUfxgJiXN9AFRC73
	 1/1qRPmnVVkVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1A6C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118759357.30558.10718327267956868509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a361841a2c10094fb7734d7e51a26da8b8001798f0070cad4c1bfac06e9cfa6c
Date: Sun, 29 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751187593
