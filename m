Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8221EEFC
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705916297; cv=none; b=jcDhGNv9svBhmqkhTa+l1CimjpENtX7g6xTUhYGFELBoC9A8BZ+PQ4KXYXBZj50FB6amqp2l47NHL7hhzzt9eFmphWK9qJSFfPY7crJZ0zF3RU9guSZioumsg/fFgLIOx3+N339L0RwxeCfERfnj7gDHO88MuwTgngA4dY+shqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705916297; c=relaxed/simple;
	bh=Ih7SRrsSNIs0xvr+RqKxgPnJdNBmYXFgoNNP2MwBnmg=;
	h=To:Subject:From:Message-Id:Date; b=H/n1bUG7c+k+pAhjrOc2kmQA52BvtfW49pzlMR+OJnMKwISVuj/qpTr+O/bNtr+IZbo9UgLZYOqdM0vtXfjzofEObIte/1uMniIwi47QI2wtBIvSchjKeQ7OIa/8k+6HPxcWap7VbKQO6pmGs+9LGfNntyrclwj9kzLUU9rhuM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjaPQVZa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjaPQVZa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79B69C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705916296;
	bh=Ih7SRrsSNIs0xvr+RqKxgPnJdNBmYXFgoNNP2MwBnmg=;
	h=To:Subject:From:Date:From;
	b=gjaPQVZakwyA/taSgILA4HKU6zxVKZfeJiRkDwlExzyUq79lJm2LYxM3kFVqDgLDe
	 QFI6fJppT0KklOmeO3ov4cYvVMpshmQn7oix5JBMTFVlavD81vv5PFL+WZAApk+mKL
	 5joCS7ZuvMRatBH02c8zPAf4s9num6DYkOqEnQ9g717TNLt7Rsmw4P+UjXxNqehDGj
	 ee+GEinmnzG0yRSr50k5frMdjgo1bdULzD/jwBYlzeCu4zZICJfSz4LmtQNfXjP45z
	 yzB7XHC9LtBtIP4wmYi+aiYsZEgy2Vkj/l4Rlpm8YWtQMrVnMAUVx19yS2CSKp4jHM
	 WigxtAlTTdIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6037FC4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170591629638.27918.6698605888383518037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8968bf0085499631e0f3a92af47bd35bc8d382dd8558cb1140a2eedc3cd56968
Date: Mon, 22 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705916296
