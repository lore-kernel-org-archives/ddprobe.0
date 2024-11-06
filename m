Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0675B20C47E
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730928954; cv=none; b=J4L8oqDpo3sVxPNSLOztNJa+WK8s+GDO/Y++6trH7CJ9qnLhIFGT6FWBmOWx8cERKJzG7sXrU/0Z0rDmS7zMc3aDlqx5Hu6cBToLEb4BSXQaTKyNTb2VURMRlwhyuflUg8DlyhsmRfJ5l3522mzCzJWWvZZbkHLsoJtCSeLO0qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730928954; c=relaxed/simple;
	bh=Gy1Hw/Xc/ENg/HjDTCVjmBbxLFaBs2/lnyHXJBXjwDA=;
	h=To:Subject:From:Message-Id:Date; b=TB9XwCZOlCHQ0eOJOXlxc5ckiyXkQyTozXfGfdLlpkE3SCbOU4HJFv8lA2dJ9W7N0j1UyPcQhP0cBErJLdZD9yW2GbjElusL7zqdst/bwlH1E+WqRy3pz0PizWFfj0QlCqFaipMSiuSzELsrK1fokW1Z7T95eiWpNadEEFGYtPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgjrbIQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgjrbIQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAADBC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730928953;
	bh=Gy1Hw/Xc/ENg/HjDTCVjmBbxLFaBs2/lnyHXJBXjwDA=;
	h=To:Subject:From:Date:From;
	b=NgjrbIQkPzvU17Oli+SU4LglAA3RHWp6JVEftq8vKkqVUukA1DfDH+oYGtJFnhYAV
	 PyX5CJsjsbTa9yNze/ZhiwRFAha6L4LO4pkLHtqN2Wnlf1xoI2/vcZVLIVWpm44HgC
	 J4d3fIcpz5C/lz+qVlxoeXbMbf098kew2Oq5UDdz0fjnzSrWoYYhZZOhtyzWTylh3A
	 qCI0v6lKWAgRl+FW9Xgn75+LSvKxouvR++C/nkRFHZVDp1FzmxzscfmZBNVSCkgyT3
	 Dc7oG2T/5dBYkvP/YCqN6O8D8Q9oxjct2gcWzyqvoOvI5KiPJR1rY3hJXAmJMPxRMH
	 SRq8L0iuKmakg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9957CD59F67
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173092895360.14902.14548355261670186382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5637ec67d019f82060fedb7f4284243e8fe9dac8fa5605437ec6266795846e81
Date: Wed, 06 Nov 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730928953
