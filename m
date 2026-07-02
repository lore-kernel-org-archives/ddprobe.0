Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2313241C312
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782980914; cv=none; b=Z4wFDY6frrMOtCi0REjayU+Kf2+rmx3ORgrdw44V4tKBWOgKfGaScESIdyImbQIyMgFKDDyUWJsY8IuiG2QejkTDvUZKT7CIdwE+wD4gp+aQNDHlgjqsiaEWj109ZlXbhhH3fpOsnywf83xqKlW5Rjeb5zTvH74HrPPJbU5Iawg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782980914; c=relaxed/simple;
	bh=CZN7C1q3MCgtJcraVnQYf6xNBRMrWta9KEmkVkTosUE=;
	h=To:Subject:From:Message-Id:Date; b=pKjT3JAI632JPyH1mJ/y84Vuim1CAAhJv/TDwjNeEk9NioqxpHgtuGCpCTQd1qJT2u0DRnzs+O02jyxBVFnqRNMK/9EeK9edGiqzssgQ0oALsjIfOaRhpk9BUOi9aUS2NcLRwW838T+aDoXB8OpdJzLv06NmfKnRl4dCbFCwQxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7IlC4BR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7IlC4BR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEC7C2BCF7
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782980913;
	bh=CZN7C1q3MCgtJcraVnQYf6xNBRMrWta9KEmkVkTosUE=;
	h=To:Subject:From:Date:From;
	b=G7IlC4BRpgPy8Rebxlw1Oo9GZy0JR8P9ZB+5WX+JZqxCKgeK8DdSey6lhLoMumSEq
	 311NhrlOYd0r1hAwMnPcjGwBmk1Svn8HP0j7rSPpbfWV0MfW/q8tCLiEq1znaMgs29
	 ZevUCxebDUb1uhx8SVG+eQ/OFoEh45FlQWOAWXyTOYOyewa4xIph7BggNLW/IQLg+O
	 DEQ+I4cEOTA67mYqEdaqZRBnZU62/+sl//UiaShGMdG0DGwba7LrPSpMUG99J1yc/0
	 mc9BeJLjNTzHJM2ZGE8AQR/cYa41s8iozuhCIHo8v7tqh3stotXyYs0E/xQN5zAsiB
	 peXDF1Wdl14ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA225C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298091368.13832.14132415998414839343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494c6d16bcee93c807f6c9eee142fa37fe6ec858381d23846db6086991c6533d
Date: Thu, 02 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782980913
