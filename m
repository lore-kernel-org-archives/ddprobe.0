Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E44F4207A
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736197554; cv=none; b=S/nKtgaokMIwIukRHlnZVzQ/8lmvAuwdNSklT58NjhpyhD+8JykDelpjGs6iJ556NhlSk5DIqWybbrdHiHTCN+Iqipu7eQwGyUOfB9iGHe2TR6LvK1xaVDOje0WhpDBUwdnI0lff5YdPBRCoDvD/j40YUNiMMS+AdPvhuezaO8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736197554; c=relaxed/simple;
	bh=ygUOnSOelUZUf0FhQITUeq+qkDsagRVLgBiua0lnLPA=;
	h=To:Subject:From:Message-Id:Date; b=rsHrSjbM9JkVEy/vavJXyxFAhfLiFPRRmhEKXWytd206QxfFdHdLM0WcwO8AKAh94QbRCDgixcAFfaE8D8HdDfrw7+q/MxRgLUX49wrRhgyBgA+kFkrbHlpviz762fZSuI0GkAIzzkTn+GwrZxPBhXTHBevUtZUYVRif3MqGKI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/3bay96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/3bay96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B9C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736197553;
	bh=ygUOnSOelUZUf0FhQITUeq+qkDsagRVLgBiua0lnLPA=;
	h=To:Subject:From:Date:From;
	b=I/3bay96OfJ4dVEIp2jwamaQwckhyvT++8+AFykkGWfWdr9pItCdTWs7QSe/8VwH5
	 CW0QOlCgWo7P7jWV+Hv5yI6ItFWlaf7BNK/FRFIYxIyj9cTFTjVCCUROzU0jcUNbyo
	 nRb38ZacAtLyPQ0ldnCrPixBJMk6Ma/1NHlhESOcq6u15O7hDqb4kF52wsK5aS2LOY
	 0Bbpuldo5zYCWzMsu0TFhafzoj9FGYZyNbN3M2IDHCNLvOuAvGbQn671uS5Gc1XvfB
	 Exdel88Lk6wXoVooM10DeUEXu9iXm4Z+8Xthw8wZvhXHmx8XmQZ/Ji44Ktu+u/hPqV
	 65O/+VvpjSiww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9414FE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173619755359.7812.6486584515560316340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0b873b6a7a110f906eedc4a2d2b2b003e742ee317bed0b66b837280fd99140
Date: Mon, 06 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736197553
