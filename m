Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2898F15F40B
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732307154; cv=none; b=TADVLNMHxheb4P19JiTrqrP5zDlLZDRV9UXQVaSOyh9HZT9rb1TEfLPErENOkYaYVbgM5wIsPGRepUW4okb7l0Kjg46BvU7aXr/jvDCaAv8nLcQlMdQtUkQFoa6iWa5u9HjBWKNUwK8TW+LvcN0RhHoPCcdQ2lYmEtD8mZsSDtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732307154; c=relaxed/simple;
	bh=1Nhl8CoqwABZdzT0hjlaS8NaNaY+B6WpE5QApxqAUjg=;
	h=To:Subject:From:Message-Id:Date; b=QyCIHOTpZCi32stPGPJnlw9yMzk2CbbMH3AnGgznjIRsYpexN9Zdu5dAzLiHjJsHqDTT2m5+MtKtrIxbG/8kE1un5FC/FychJBdblnCeP5wxH0GRsH0rnF7DLhiCB+lRpRrfmrDjm0CpgcyK6cSMbbxPE50ZYqqFObsicBHd41Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLrSriTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLrSriTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B912DC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732307153;
	bh=1Nhl8CoqwABZdzT0hjlaS8NaNaY+B6WpE5QApxqAUjg=;
	h=To:Subject:From:Date:From;
	b=iLrSriThqo498YUgx4Tc9c1Jv/eNqTVL5QdmF3rCtHoaI186jK/T3AFO2IbhusXRm
	 G+Sab9ndotwGPDPRZcPRuHsXLth0Xf5m0BDc4ms5eyURfZclj8iJq9VBw87WZYftsJ
	 qS2/PnTPYHAlkL75XyD2oxcDfBgAuuBhoKN9fyGmJ5t8OvEp0cSIfFcGzjxv9lo2MB
	 T7ffLYaFrMzmaJahQyA5+/3PyYS0ipNk/M/NxNvS10Yu2oYNI4cGZePcaGW6AM4/dX
	 yFr5Qku8onJtklBWXUG3gOTPXnytzuO2gpIOFguQ7LoOVwabo4wtoj4t6pWR9nFdlY
	 b7BXTvW28NLrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1732E69191
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173230715361.6763.14203386686328340885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bcbfcfc9be3dd5b0013e4e92f88caf895aacd5a05f10234c636ca0209033ce7
Date: Fri, 22 Nov 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732307153
