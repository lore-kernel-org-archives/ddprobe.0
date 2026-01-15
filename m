Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CA319E968
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768486435; cv=none; b=mKPtqhys7i4JNpYbRzCXhGJ9GWAae+B6Wg8O3ooMAsLPpxDIIMq9rZ/RICMSt8nwvJYvd5WBJtymg2d6FyqEwPaHEwDqjOKKKvmhIEgnNUYl39ToVqLxV0+T3iUQth+8Mf3i7xfV7ONqDDwAvs7uZu//M6Jgy3s0I+cShzjW2Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768486435; c=relaxed/simple;
	bh=wIv9Q5WrbW1c9KHCt9PTmQeewcIaIEkxtqi+muAxaZY=;
	h=To:Subject:From:Message-Id:Date; b=RwLjc5YY4bdcQ12l8kBEEeXbvR/14lVuG/mUM2IvS5c9XXILaWZ6FFDZ6lfiWJKk1zUP8jhChr+uK9O+nwZt8SRoAhg/G6uqNKH2ki5z7ukhueCd5+FyhsKJ3lBNn1jz9alcWqBS2oliGQdJZMQCafWDN9QtcwzqHyJgp88Rics=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k12bHH3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k12bHH3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3007C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768486434;
	bh=wIv9Q5WrbW1c9KHCt9PTmQeewcIaIEkxtqi+muAxaZY=;
	h=To:Subject:From:Date:From;
	b=k12bHH3YYmYgyjcNNfQSI+cycCS8OD3WPKSQnBZ8oldLfQMTk1FQ4i+JTFkc8DR8J
	 ortYJOQt7rPaIhVBW/TWnkVV4FTXPly0Fi1lJlePogdHMCtCMICG21Xp+99f5KMqm7
	 cHgQMNfNZi3KceZ2OvplpQGV+ZuKMEL6JKK0DNuY2G4aK6RU2VTpIsUlyN9gekHKft
	 0FfHcX2MfxU2z8QsROKjEBfX822KDXuAEw/rJvD0+DEgZia68YbYeUDzCcXjhgS+vY
	 fin7VGcguBSScwXcSGGrsGrkKNQkSbZw3rXlUP/WxOR7fyNvGnBTl3X9m8JBTWf2TM
	 EX869tRPzxrAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91658D44C48
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848643358.7296.18039000519907215834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f6661321a787df6e45d725f7700260d12c33ce0a88f581f0481d5acf952f82
Date: Thu, 15 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768486433
