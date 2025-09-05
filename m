Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28E931D72E
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757087994; cv=none; b=nQDJGIJzCaJrVx+WXaZNkHjpHVc48eUsyzMrFb75z/ifKLJ8xe1HVjiKJGnXmud3gbm7i7BvRrgLIKKjZSRXAY+VIgfy4xK+B+YPKgmDGiDkiWgTvjbZ93MTKRMbk4fJoGG3RS5h/ecRfOG/gDU1MGiKKgIyhZbqysFnNKvn2pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757087994; c=relaxed/simple;
	bh=G7vgEo49z0OVYa2AH9eKJdJ09ozmPFDGS+ky10M3P2Q=;
	h=To:Subject:From:Message-Id:Date; b=Kwt0finOXg7QhgAEeh8Xerf2TxDyQS/UyeOsXN0X+kYAVIq876GivrcBYrKj96f4d4HpgPxub/SqIrL3Y3dmXWPzOexjU/gL2R/92OZcgtjPHFhaN7RVLMGSGVr5qG3qWGQnukIvUHwOoNx0v3BeJ6IMHuGamtWkZZNRMkTd+bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrwQrUQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrwQrUQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0947C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757087993;
	bh=G7vgEo49z0OVYa2AH9eKJdJ09ozmPFDGS+ky10M3P2Q=;
	h=To:Subject:From:Date:From;
	b=IrwQrUQTOTJ6d9LnTsZGsf//3sud3ZHoxn6LhMg9lxlvITZZDF7L9sZopqRzPRLTQ
	 l8DzSShTLem2lvOW6kmlDF2S6szOH9OBKyHj4NkZ6s9QUFgf/6imRCM9UAhDFmr7PT
	 P4VoeE1uFhgE4TZTiOzIKsps9xeZCpwnbWYjDxPlmXklISybnFNE8Rcm6ebfFv7bXn
	 qz9WB7G2d6MtvJImr6Mw7SePeHyuyT6pBZPZA/ftOjWf7HK3I+9IDhEXxCbtXrCzgO
	 zJPo6sxzBEci/pmGVd29cMFdY+GLjOUjuBR9S8kbyxf6AX/D8s2ItOOnbnDLWFVpzW
	 a1I2sxNkiCG1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F865CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708799357.6490.652380203524723394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dea13f651f4c58d14c24bc8e1b81f28a3c8b204a72d49cdc56b325519d908b3
Date: Fri, 05 Sep 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757087993
