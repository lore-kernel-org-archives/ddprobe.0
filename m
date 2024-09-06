Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C52D1C8FD5
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725615954; cv=none; b=hiTYQ/Mg7HezTczYbjBhHB69oMkgyeT3pLQH+Hpohmq9SY/skC0H0pa7HNyBVNyUWVIG4qZoOUuTTP/Wi3XrXqU9DkJqzDyLKDd51kaxk0Y6asfZ+32mVA+7AJdKeEF6tXhTamPZVt9ylK3f70uK5WFynWQRhjb3hA/8CX1Zvss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725615954; c=relaxed/simple;
	bh=+M8EHJdZ/sZ3zVn1I+h8WlCYMTChkn+D9R17tLsF0JU=;
	h=To:Subject:From:Message-Id:Date; b=ddXb4BXSXV33yA8obftKI/+ylTS8+RvuYBEVudHQC3APYRmmNcAzvVy7TC4hjG12lW4tLTRCyZvEw65P9xBaE3IlHlCf4F0cVEcjzWnu/IJinLnkvJqZh4SUOFYsDg6FY7YgXOkVaVFaVVwatYo7epnqsVExwbzb8E0zaqrT0GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g06gNo/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g06gNo/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9838C4CEC8
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725615953;
	bh=+M8EHJdZ/sZ3zVn1I+h8WlCYMTChkn+D9R17tLsF0JU=;
	h=To:Subject:From:Date:From;
	b=g06gNo/hgrD02wfbMAhAIn1GwmPjs7TCQYStQBJAJNhWu+b1fyjk1ZBZGtdvyYSz2
	 GbDsB0NKvhMFcUFocpOQeYYtkRW5lk8f4WDWMesrinA/9zyz0jK2IaNTZtdJBU7Ech
	 Ztc8aQiceEd41cDp/BhEbRmm6Ntm8kimjIeuihxR71sQ0CGaiqywmumV3bZWw0F+Vk
	 pjcckiCsDocE+OH51sx8Jo/EfnXqBl5s8UulT7Bwx3pRfw9DtnLHao602rJXPHsre/
	 egW++L187B5Dn9ZyO/+jJdv2rTzvUZXJo6bUXMMmLJJIH7m/dv9cdKJ44k9JndOlE9
	 23nIXbQfAdamQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985DBCE7AFB
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172561595361.22941.4406589189207063778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 944f2a064feb6ea59c78482100b5a7b2a0b50d24f7dcd91ceafbee40ca28f74c
Date: Fri, 06 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725615953
