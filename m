Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD9336D4E6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764418374; cv=none; b=o2IqQzVFK/BwLxeVfVDUhkZY6n96YqMjvxasWOtblytZlNIqE9ukg/4jSUCgKTNF8d1cGis/LoakEsEUsJaKv2YQ7atqYp8Lic2tvKSvGyYjU0KnC3h+bcVaWbBdnYPJKS8SkhD6HOWMFOKYGggJovU7VRuEc//VJYjVJUa8eT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764418374; c=relaxed/simple;
	bh=BySbMHAw1lWlqo0VuPpdCcP0pL/4ZpGq+zMBKTZAWrY=;
	h=To:Subject:From:Message-Id:Date; b=AAH62Dd7WT1C1iQddjW04vu6vQjIsHnXo8OEx1TLVWTB8I2oduNy2niM4mjbb022n++rM+JG7+iQF4hcCa6e4FOkPenfHrZFsJP7SWhKWy0RfTE35Al6o2J+TP+nC+xEqsLe0wRZGTm1R6F9OJef38wYVFUY5EbVUO5Bm6tD5Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikb3zIHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikb3zIHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF46C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764418373;
	bh=BySbMHAw1lWlqo0VuPpdCcP0pL/4ZpGq+zMBKTZAWrY=;
	h=To:Subject:From:Date:From;
	b=ikb3zIHbSBUNaE0mPVKhX6TwyDj3LMp6LUYmlFtsn2cIIPjnTVsmVckbO0KyXVIeu
	 iEHL0YknhyilopYRPoGzNyTnwyMmc2l6fz5LjTeNZkakM+SvTx3e0CnCDuqwxngy9J
	 dK/vYL7rgrOHWUHMtkIzFgvSpHoURKBQCvK58EMUDUpdq7GPATavaDWjt5dUSrxrdU
	 YXWxVICZhNbgxZK4QW1PAVJgGUWQnws4QvpdBh5CpV2pJeglT1iPqk9zKgQu26UAOa
	 EhVi06GGm7rjU/MquUssZtFqOZes8nWo3goX9zYC3hHpW39H03VOCedCnVSTbyqi9w
	 jn+fdEmzWuIdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C17D116F1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176441837358.21202.2857969728506556591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d01a4b7d3e932ab1fa6058775392248860933d8be001629f564b412d92b66d1
Date: Sat, 29 Nov 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764418373
