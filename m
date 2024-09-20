Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E9F537FF
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726823154; cv=none; b=tRoQcKh8sZe6t5rC4uLR3WUTDnIPqH6F23Bd/t2MJmo3cLofHPC4nCTk9RkontY66LlWAUPuuErGCTQecfd+O7ELmtBr6H9X8GS2UbadTXCzI+Jfk6NmAJy77b3eTasAw5nmCOgpfMIl29kXGqgXX8QML016XbQICX5YA2sGKtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726823154; c=relaxed/simple;
	bh=SbijknXoOeXyIbt+wih3Gd0uY7ajbo5f+aDpR/FtLiE=;
	h=To:Subject:From:Message-Id:Date; b=DW7adZ34jqoEi2CdQ4jdIN1wtxRAonvP3YL6tN5K9CcyW1qTIjUt3cPK6OHQyPeROkovqLRtEBRhgOzWreK9Sg59aYeLxb5Ckw23p0xvb4kiZoMKidG/kbK/eh/J4xAG37m97Pyy/NaYO3JJikU0gHosaWjY5DlrHmjQjsDoDQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAqls7Bj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAqls7Bj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A94C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726823153;
	bh=SbijknXoOeXyIbt+wih3Gd0uY7ajbo5f+aDpR/FtLiE=;
	h=To:Subject:From:Date:From;
	b=CAqls7BjCqW2vZS4bwi8foqRIoTLTQvKwrweXo21xr/ACWUMtzTOLpzPuHfwRf9Kc
	 A3II96mZ0ZvFU9uz6uhElNcPlnCkKRsZlJvMj/nQLw+cbz5+jA81S8HEkx22RzqK3K
	 hJ2j9XIYC6cIq1enAOk619gvhK1U9Sn2aLr9u2N0d4sAK/Hb7+AKnO1Nw1myLBgwCM
	 J3sRNjEHU/6dFE+BZIaFkQvHHZNnHRUJgBznDEdPmkn3K5xMlTkfaO0Ugu5caS5nLU
	 AKLIQWtbYwtDm7gIVNYct9lKnzcEdChmjrRcdTEeJTTrZ5DqceNd2vNp+m83Zw8UNw
	 8a6JaX+PmKftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90759CF58F1
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682315358.20922.14725616914739122466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0b6772f8917c2ae7b08b22bfdaedd8b2741437a5597ad5c3fcae0f36921223
Date: Fri, 20 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726823153
