Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6512348F032
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792238434; cv=none; b=k3vssa4zMiV6blIF4R4d80bbzNDsVcggicrPbWcgOgaHKMi9AuuXd8iPd0T50kL7nmk2jTRcbF1BWYtPSIkoQBNlbdz8Jj//p+tEuPCldq/Ae5lk4yXZzfLcqCDWXaXa1JlOdVwtfchMZ8gCyZFHy8y+3AV4xeC4uhAcaSYvZVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792238434; c=relaxed/simple;
	bh=jla7d179gLmNG4Ab+ttodrXkdEY14HOt7ktVvvznFb0=;
	h=To:Subject:From:Message-Id:Date; b=XsrHQMOhpusAG9Lt6tKPiYj8QnbtZRYt8QrF4s8WNFEE3FyD7l+zfaa5AqFi5ZxrBK3jnDxe9LTHIIyr/BBOnRRQnbHqL0dShpxo3q0SABV5344/+V7EVeJjnM4/0RPHO+jXwpV1wMQqoLYhGSHibSlWzTq0dWRnx8ICBmlVU6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ivFZAt+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivFZAt+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3099C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792238434;
	bh=jla7d179gLmNG4Ab+ttodrXkdEY14HOt7ktVvvznFb0=;
	h=To:Subject:From:Date:From;
	b=ivFZAt+Z1eT95jqFC2GUpM6vjPxgVOpGYmAn/2MlQrTCt8nLnGRmvj6b5fR7jaJWV
	 1vI2CnuSTiLL2Rmf4tvRKtoi2HfFMxGqkIIu6C3bVi//UfFMEv637wb8aV1JS/GrkJ
	 au2TVIEwh26hg9hpxfn5itKzzvp37bYtB7Rj6joz13+GEZ4JAltObYiGZiadBIENAq
	 rEaEcRP735Cc+GfxM5mnGSQgNLb8k9L8iBngrEvdYwzld+3tUnLdo1ANyKM7TXBC8D
	 ZDQUSW7+FYAjgpWkX4QLb0sc8T9d7UZuWQOentnKA5twmnkRovn8e0/0mdwhGRuU9M
	 GjM85BoLcq4BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5E3CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223843376.19182.4448747299273977825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132f16613188b930be9cc9ea485303c07865b91c3107d0581e6ba773297c39c5
Date: Sat, 17 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792238433
