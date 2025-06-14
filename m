Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F59619DF99
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749913195; cv=none; b=P4ARTxTr5BE2VZo5STIxknepAAU+Nc3DB1iH6xg4juyQiuPjxRF1m0UykOaqxdFuuBkpbTssywchWnVlfBlWK4DQ5TqgIlVjhfGQAMfiiRCVeox0xBF4s5J0yvkOUfW0++eIJjfXDMmVzfIug5cs0u7C32LlpK3kbtjt2J0bzFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749913195; c=relaxed/simple;
	bh=pgTRrdWshSPl9liE+Hq8yu12/3buWQ5puOGaxbOcUg0=;
	h=To:Subject:From:Message-Id:Date; b=n3rFsb7njQ3fLYN0qPo4ff0s9YpAMbD8SUODagNtPXVWPIza/MlJN5v82iYaQ6VjHsyT4VfWmdtEeJmuLk9mW3tKP8/5uLPD3ny5s23jDaSAAUtTTxrnaB8t+vwLzO2KJDgYEmKx3mQw+U/FWnpjUB5J1YGqISR8M3WIEAlB9/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGusO8ER; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGusO8ER"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE4CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749913193;
	bh=pgTRrdWshSPl9liE+Hq8yu12/3buWQ5puOGaxbOcUg0=;
	h=To:Subject:From:Date:From;
	b=EGusO8ER5a8UaVYOlv8WdZ4HlkRD0quXa8rjxkzOK2XMhRA7Pn5guw15BHekikWcC
	 qhHOCWUbtRwhSjnqMKdfeWsnipnNKCENL8/9kN7z8VNl720+PU4Qf29Wxiok42Ve9v
	 xMf7k36C29DLQJ5FOz+3NCGOwkXk28o3s4VN47ENxrEQjRGS6IfeIrc5lIF3zfS3vE
	 Z6ASBB3L6QQlmK9X+LmnYA4eVhICHyA++041tHHc62ijL5SLfBfusOMDl47m1VTYBV
	 DTMj6cEio/rdAAq7RkwRG+kExtK0j79fYHqQP83thuuJnV+8jYlVt9EgQvspcaL42y
	 jvfE7EyHrJClQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0E7C71150
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991319357.28360.8117935532208779037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeee06b1007b9aefcf455545805e00087d6e86d260be193db7f6258d8a12fc8c
Date: Sat, 14 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749913193
