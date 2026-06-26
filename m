Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4943623BD1B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782439054; cv=none; b=WmZ1WC+rXQSnqYbK+uI0nDFJNDgCFlbuzSJBKo/a/tLYnW1JkrhlF7uBAbI1bebBqSIGqW7C7xdVVZqchHbQO3Itf8hfovppkToU+RX5VTMvH4urB3mHiKgXYMKFu667vDwDsckq9R7uJ+eAvyTnHp5JgmM90pFhwrjswGAimKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782439054; c=relaxed/simple;
	bh=zudyAeZhcBkn4ZRkJOmh5CHQmzUrjAMe9zf9nERqPf0=;
	h=To:Subject:From:Message-Id:Date; b=M+nfcwEy8SSq6R1YMKTpgRky0fdMmziaTK4UiVcFgp563mPPFV24/N2O0zgwuyf6aWMlmOZEZZzsFxKsO+IYRu8IGtRl8xZ1/9Cv40cCH8u5AUnTgNQDE42uv9mO+97aqfOMVFOUNTcaOEyCEMA5reLS54An4SlHxCl/+0yqX0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0ndkACV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0ndkACV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28F5C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782439053;
	bh=zudyAeZhcBkn4ZRkJOmh5CHQmzUrjAMe9zf9nERqPf0=;
	h=To:Subject:From:Date:From;
	b=C0ndkACVuWzO9qBFfoNQO9HQ+chZA9ue1ycpd+a9Mpg0ASHQ6cw2Vi92fAM+6S0T9
	 RqSff6yeFaMADzyIs2rpv2hi51xUS1eTqtXEeQwZq2SMVlw0vfwUWZOHOjlUkNXfys
	 L781K9JNut4f0Zc0m8nsc9I/oNcxg6mp3bMKJd0QzBZPCpFTdXIATpmdcH8lJsQ8EX
	 4ctR6CTOpLjKfHoB3I3GbzmqdXSCvzaaiioHkv9dzMYEnLxiZZpc4DAC17ugACUdKb
	 rfJpmnpdepIx5FIL3doYtpVZ6cys3iXsbTG12Y5EjNGmK1POqaKLIdDO56zG5m6NFH
	 b60Q9kasDX3vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A964CCDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243905368.21669.8685033129918563894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a133ae86fe31915653ee608776b8c0ba62751be4c383a8f1b8abf8b683fe63
Date: Fri, 26 Jun 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782439053
