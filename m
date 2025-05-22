Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A692AE7F
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747892997; cv=none; b=T3nXokEtQa6yh/PHmTs9N6k8xwXa1cqL/k9y0YGcIZm3I7bJ/Y3rPygnORqsrQDri1t+U/ELAT7HpbSj9o1jCFGhWQ8E/co+Y/cISy5YN5i9736mLdctw4WudMstblCJM3mGqRI19stGCvrvSzS2JYxMxlXubxSk9TVMhxpCegQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747892997; c=relaxed/simple;
	bh=00V1tGRInTcxb0RsCJQXp+nacxwkqhSw0jDom1wF1v8=;
	h=To:Subject:From:Message-Id:Date; b=tP1VaQhGKLluoWUKhNS4XZYtQjhzJKWg3FJ8Nveq/paZxir8y4r7tu0qPTw7p0B3umVU76FPVEmb/n6cAkNee9YyTnXO5iDtMRfltwr5sBuiDpwlM59r45jqO/mmXsmyUCTWXc8YFAk8hprYjZ1zKO1s4Wvvk9lAvAC29akTMKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoF8aVvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoF8aVvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98E09C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747892993;
	bh=00V1tGRInTcxb0RsCJQXp+nacxwkqhSw0jDom1wF1v8=;
	h=To:Subject:From:Date:From;
	b=hoF8aVvMmjIbh7rxzCFhhJ8p8YDYj0vZIiJrKmqwBF5pw8K5gquRfYW1RsLhA37Pb
	 jUGhR5goUYaOx/Ry2t+xCgDKAbNc3Ru1WHgprZBg5R4rQ74ZsM7bYda3dwkqC73hPE
	 0Nfb3uczUZ0A5NZX6O93RDvXGCUiMmHciwczGExijKiGvlEzXw2I1+qHnOLKBjLWWr
	 Hebek8olEC8wqBpfLVhBJzsC31SnagtcafZYTGDAL7o9oghmNrOLqSei2GJUWLzS/a
	 ndeTVOyESfnGX7wQUUr7bRBhA9uDbucJ7GPbRXh4g5RO7hzKcyiWZooyaqPT+sjQID
	 D9bwehK9OWtzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE40C54756
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789299357.3121.17558749091287652660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eb8b9a92ffe9a5919cad503e938fd548591cba602eee558b34e8d9839a4b244
Date: Thu, 22 May 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747892993
