Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245C0824A0
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732130754; cv=none; b=fvOc96n4yLL2Rq5mhYWnAZQPsCIfkTchUxTQ0K+wt9qjJ4sJ1wZKOykyzwQbdVPyY8oPZ0Ysg5kx7pXzgyFHwGmC49NNOY6b12czmzqzaJW3oRBazQF1/6whp0eN858LCpsja3ZhYvTxtfcQBqDOOON/7Hojph21D37uir2imMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732130754; c=relaxed/simple;
	bh=12j/WmcrbYhRvET34UD35Qz/u/cgp3gKqR1enrSEg0g=;
	h=To:Subject:From:Message-Id:Date; b=e7kZepqsgYeI/o6afsbBiDvRObdHs1ytI7lVRHmedfQn+OpPFLSD1QzjRyioaf//SswdAgfXLSupsFI8588KgPp6d6jA3XzlLWRfwOWI7DqNiOtT5b+RmSN5bffJZsr/m4bq6ellztuOF2A8uFXWy/fEo17IT8UZ6oxUB4C3Fn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7xRcjpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7xRcjpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE09FC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732130753;
	bh=12j/WmcrbYhRvET34UD35Qz/u/cgp3gKqR1enrSEg0g=;
	h=To:Subject:From:Date:From;
	b=s7xRcjpmvujqcXX9r1m3mmfjlGUBjl0Z8hKnOsx7WKeNb8ACYBydgJJGGeONMT+I7
	 Dw2iBfffr6wxLjwh2js1KE0vzIsaTGFY0ymjUMMQ+zbiSbU0lNu6Vf0scPLdyH/AF1
	 wkm0aZ5pE6v7qCU0c/ezNX7Bd6DeXY4g0qKwfF9HQlJrAzt1Aa4ugtMqWaH/V4BQ0g
	 B+c9avH7Li9Uz5iDynNPRbj1Bi8l7+Z3++mbuOqEK6zDDLEc86z1YkFCR+WS+uApd5
	 ZwbLg3TFM3VuiXyl9ovNF9kihgW62sq/xHP0Jm6bfB0N0q7RJCow/j6B/v3zvsedEw
	 joRLvgDm8PxBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FDFD743C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173213075361.25798.5128846383910902340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f59bf3e97b9f1d0ecbed7493564662464d51dda32600c3801b28eb5b7f8b05c
Date: Wed, 20 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732130753
