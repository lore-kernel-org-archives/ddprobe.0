Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C74C9DF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790770834; cv=none; b=GsczpCTAzA0tRt/lO6y7F/GCbB9nbcDhGh8pTzk805wIcBDHNoPgERRCoELB6tJLHGS5t2OW+Uq3QrsOJVKtqg+qBQWm3FCcDOL34bvPZvlvFHZ5LMrsTV5z89wuBCxYnzPNNaF3MfIzWuLbJ6mvCyFXPRSWoNiVEFAEbPbgDos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790770834; c=relaxed/simple;
	bh=D45dZGAM5dNkXHYFTgi/ApxOfkZjvFEGBNzLRSY8WGk=;
	h=To:Subject:From:Message-Id:Date; b=uvlEj5tTX30lYxSxrUU5THFNGElLg2AiAHkjr3t/HmLlW/oT4ganqCtzppmyq5FrrFGSA3ZI/kXjy1FEpoBOaeI/BycCTAbuwNnsKZE/rzL9/yKBrQCT6uwF6Jw2dZpdt8ENB9iyDTmyyUtjoof6NbL8sAeRuQi+7K25C2LUVxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeCpYiGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeCpYiGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBD2C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790770833;
	bh=D45dZGAM5dNkXHYFTgi/ApxOfkZjvFEGBNzLRSY8WGk=;
	h=To:Subject:From:Date:From;
	b=HeCpYiGT50FIu2ou9y7384NEsCtQxqSWJXKsfcTme1oRMQ1Ze1vZw8leylJtGxWFQ
	 WIqiqxRuAd9Vn/lUQxAHh+m+U8XTXpm+LmKOVqNczCvzCUTXFjfkac9qOE4DMwjz1d
	 YUZoY9SfIupGIrq5tF0OGH8OsbdPUuEJwUIg9IaXLUa1YDodx12cYBxxIswiau7SOQ
	 I6a4KyM7rh1JuR6azOpNuEM8kh4a3MJcDCYu00YolZ/ZzAEp9/leT06ZWv0NYJ99r2
	 1dkyx4+GQgsHmxAK+mWh88ikS/fzJ/ESQ2fv/PrXuXZDV+jkDbZ9K+Wh/uqhP7o1UT
	 Z9y82rGkG4rnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4ADCA5FAC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077083368.20762.5858574983874451620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89730d96ae3148becffd0a811eca0d7dae9dade9c4293e92d2783e4ba5bf1f40
Date: Wed, 30 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790770833
