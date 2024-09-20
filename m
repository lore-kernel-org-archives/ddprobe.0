Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27095F9F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726791954; cv=none; b=NQh/Y2JfkwSfjp8kixosZ+apHoFCDwwkRhReVvIJtoPSmdNEU77E7r/P03N7d8IAh7C3JEkK2Ci7CbFTOkXu7Jy6Va4aAARh8UX5HI8UKHtaUPF3a+CDxx85T1OVPC4184i9+Ve7tqVYNp8cL//VFoOVkKqUIQiDCZhm4AdS7mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726791954; c=relaxed/simple;
	bh=unGZr/rkrCNM43BtpYBic68+7zFfeFIJZpHuqD8fEGo=;
	h=To:Subject:From:Message-Id:Date; b=tZQmBc9TUTyyZtxyg+bgJ7g7k+By7npefBdDWDSilnXxb1V7UGLPBSh8OdEtY7hqffW1Ewv4fXbSnYEyFlTAT7uqe9rhmLTYxC03fjADzIgJlyh16yalwQ8gzhBKRzLivTWIl4nMRjn7oxYZdeN9GIv1YSCN1+Hqg26mQ5/a6xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jq24J/FN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jq24J/FN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B30C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726791953;
	bh=unGZr/rkrCNM43BtpYBic68+7zFfeFIJZpHuqD8fEGo=;
	h=To:Subject:From:Date:From;
	b=jq24J/FN/6iba8TFUVn5tnwzsf8v4l1kc17Dc2Bvyp1OFf2ZnLH8uRI1z6QHwE7w3
	 ajke2goMhRcAMkfkV1wWhbPyh10PtNe9N8zJUJW6GvCBxhTmOuG6pjXpyaH5yrMNJG
	 9Eml2VM1/bkObF0MhiQzJjB5ztCiuw8rgEE91fUyXEL5tFqy8U0EuOvqq8ijC0j6Af
	 NYasATbIfs2R35+14ndt45vZgqmR+vhtRWfT2g/aVXg9HYv35cZfo8dVGT7gx9F4f2
	 VprA1UJpCs5P/uH70AaES7lQu5rDy4BaOQ5l4PS13+k9jxpm11Af9KdwhJaUlNWgE6
	 pmvgijk20Arlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A0CF3975
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172679195358.1996.8198529220176113948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5fe851158ca239b2857eb87f335f7865f31c145ec88cce904eee06dded1804e
Date: Fri, 20 Sep 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726791953
