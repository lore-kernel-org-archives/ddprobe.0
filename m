Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7037434F24A
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790068834; cv=none; b=WwpGvoRU+Po91Bf4qVPYPdzOu/xuQTmVw1vJXtKMB3XbaZYjqpgAyHKAjaxup5t+2oApkQbpuoPH8RZmUcGRzsyDqlg8Ml5jdISKSYDSCgJuPDHJzx1zDa12w6zyH2ow28sh+hCanPxL8SMUKdGaObTHvl2DzezDHfpFO7gitu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790068834; c=relaxed/simple;
	bh=255odTbZyX9f8BdsXC1NqdH8iwaZYYpM6Q3DAC0vjtU=;
	h=To:Subject:From:Message-Id:Date; b=E3crgHpvDRvh/mYFFUU7c4k8ifA/1JXvR2yRqoUEzk0eSFAKlz9Urc9K9zvrj6l9091LOoBoajr/uYSO0YYzBIOitwL/dJOUNKJJwzaPlF+w5WID/PsePBj1ZbzQBf6fYY/JI8Mg9aAjP++2WFh/XWWq34LcZh0wW69nQXA+Lfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGkHOyxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGkHOyxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81D0C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790068833;
	bh=255odTbZyX9f8BdsXC1NqdH8iwaZYYpM6Q3DAC0vjtU=;
	h=To:Subject:From:Date:From;
	b=jGkHOyxnUe3xUDxJIfPwbgIU8Dnna9yelSL7l5PGkhYTbzV6C6NwIrLZHrYIvqIsc
	 uGpAGJlzGI510KfDbqfMF/6tjeMrr5CA31Kly5IZKs8q0YHjqkYhR63ILCdDeVDiyH
	 fNwxmuQilLbgxOtoWVXg2/3OjeyqHfI5BAocUmKGNb8DXvm0FXWn+hNky7B+tEbVlG
	 dZK8AX8CbAga+VLb5EjVq5oLoaxXOhrkd0L3tjvHVSRGjdrAQqZbDas1dhsNdvx88n
	 ciGWCOoKTJBkYPNvrGiHjb0tPjjlQ4uiyik/fE/f4FcHRVJt2ECodflc929MeJBbJu
	 c5sXIl2EphspA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49BBC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006883371.29957.5309534692459934903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc388c552a1fde5af54ae8c035cbb6f38e99258e5a0ad3d35c0dc55603f3b072
Date: Tue, 22 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790068833
