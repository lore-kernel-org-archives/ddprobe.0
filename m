Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADCE14038F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719770663; cv=none; b=mVeCtLF7ReOM4sfpzfZGqjE2eWlOIx/4lSckm7eI/bFtuR5evElF92/jWVAKukE+QdORiu1RZKYgp8mx4a1Eac9BGFkod0xSHgyxwbLEzuzA4auAhEbjkT+HEcQ0ObrCQA+S+J0tnaE8cVWRQrLpOGQF47zNokiq1nE6g2a5U+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719770663; c=relaxed/simple;
	bh=23s9eKgFs7QV7RgK/vaW59+NaQuuVe4TbEbDSEg9TD0=;
	h=To:Subject:From:Message-Id:Date; b=ulDO6hjObqKk+lcO7/lXm/VDv+LiQTsWXX25YGimhlIENJqymGnij6TbSXWQNOuTuT+zn8mdZWJv7RHv/7ktg/ozkL8xg+5mr5YxT4788vWYTEdHGWF+bMp6Mg1vypL/8t2dnnQegTx5ftxn6vdf93UUldkRo4uFhGjO5Ii0Id0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjhhoL7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjhhoL7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE1BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719770662;
	bh=23s9eKgFs7QV7RgK/vaW59+NaQuuVe4TbEbDSEg9TD0=;
	h=To:Subject:From:Date:From;
	b=QjhhoL7XYmk4+RKn0VkPCPeCvH1GcR6DJnLXzkM1B2Hwv4vxyIoY/jc0tB1sbirOU
	 CK2Rpjywt3OlDm7TvsRYGfLXKvkdXMFFZTeEeplL+G0v8+kP/RlyEVtwfVXx8eoY/2
	 Md4gZ4mCFGxEzFzsks9bD1Wt12FmbF36PTtn4x5gktuVksbed3EQz/tF+foMgYAj+O
	 bSOFaIwfFjcBGSp6gkFkdyW5Kn7RsdgU8CqjuIX0An/S8zPX+eYiyijAkZTcJ+VLBV
	 FNyUTplv0TPoSvjN+Woln1C03l1Kq5WJ68ZzHTopejoIeZoVkQ3Oun0pANAyVqezsp
	 c+6eIbEPqDDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F8CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977066278.15443.8835800570599520632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89012306c29b42d0a51bd7c8b733bd9c559f5cdcd82ae2d7a5063d5e7ff33f3c
Date: Sun, 30 Jun 2024 18:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719770662
