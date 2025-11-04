Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476649659
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762288194; cv=none; b=bDeq6S9sMKaomrhqkf81+NggUGeDF01MrRaitm9NsY6JVolVzRfHeWrDGm+i6rphxO2KNy9R7NGzdU1lZ0qvjVzJVLc/89A0lYRhK+XpV5wf46uDDT71bjVPXGDqm20SbFKRVl5w/IxQbNB4sOIcEgOTnKAAHmHrLexApcZWnUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762288194; c=relaxed/simple;
	bh=8KlFsPJ54969ZKDZ6NQsN7pyKDVB+nfDLl/J/Gcr6j8=;
	h=To:Subject:From:Message-Id:Date; b=Sf2O7yFJJqnitTVwKmaguY6D9yflVge7R6FucXi4b15MdUr7y6cdWT7a+9/LnlrxWdSLW7r6j07VkqmEbV6vV2RXwB9cWWkB82wcPW+3qwqcDBiC06ytC+WCwQS6gEtj1GY8YHPuX+hgVcPI8jaDOVWzN7OrmdNjNrUL9xv9tgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1aAXgOH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1aAXgOH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3821C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762288193;
	bh=8KlFsPJ54969ZKDZ6NQsN7pyKDVB+nfDLl/J/Gcr6j8=;
	h=To:Subject:From:Date:From;
	b=E1aAXgOHGnHXvo/upT3maat/OmQhxhObytOD+7yHuls+7POwNI2RxL44Wrz/rA8M3
	 85t2zd7l9k8GN9+QBuoJBsnyS4RFBGSiCWZKDjNBWbkDLgQwQL1N1r1Wm2FZucfLpL
	 sopwNPr2bjsyQSh4Wt3powcQqIjllUkiUcWYydStLXqJa05HXXNcHx5A6VGf0jsHQg
	 DkkGVvHRF8sdakusAk9Q6fxXKIPMzq/0JQYpcBlfWj81OI+vYdg7L8Sz0NBxEw/xTi
	 WY8Rj6YQi+rQCqEQ9WslPzlcsEk8bFQ2xEgkxBuF2DPUK4BQ6shM5HyL4LL8bww2qF
	 jOOVYXaVZApbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94233CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176228819359.8594.8547296104745854908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ecd66669fa0ba97f32c60b3420f0a767547a276ecbce0583a639a44b8c541f
Date: Tue, 04 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762288193
