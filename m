Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34903239E80
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747940994; cv=none; b=GuWhXW+rTv8YUjw8WiwWMT69fqZ5ktxRHXTSyCI9rn+8CPwRT0PUxHPv09TV9N4n7T+UOWrgvXUQCy0zMuBlmIiWOKjWw62hnLa5WrKYY2ejjcgYgxJUc6KqVD/HdXUuthYjynGBmxmI48aRw7BERbDht2lVsNQ9UkWnErQ5WpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747940994; c=relaxed/simple;
	bh=vPY1cRAReYeFUhWYOZMgg7AL9bFb7QaA78d13trOYso=;
	h=To:Subject:From:Message-Id:Date; b=T0WYUUSY/zXMyka85mVd/mNcrA/CvJs0w1DG0PdGHQImhwFf44U2htKojWEJn4iKH0jWbsVZXXuZTI5701ZVRFwBcclA0OLhSoktLdPsuW8IUAN/qSmDjpLmp3qBtefSql9mRS3+cBm6++w2b7loCFAswIzvRed8X+ySyRyBzCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQgWulHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQgWulHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F60EC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747940993;
	bh=vPY1cRAReYeFUhWYOZMgg7AL9bFb7QaA78d13trOYso=;
	h=To:Subject:From:Date:From;
	b=cQgWulHkCYI1J1P1EBax5G8BSCCVcM8SRfcVLkcsPzT7zjF94o92BOkhxL1MTfZQj
	 ZPoiPIXZOeR6ox+XdFMTMviqkSWN5trSEGGGbk+smEHN0kUhuYSDl4ox1eF5M8f5A1
	 eZLHvb0f59I/zijiZM2eZU8ivWcPR2zWMdbHWD7dTMYJOic0zkNLaVFflWRr+2vaZd
	 p99MlEHyeX2oJ9PdTmpmyWYlXy7bQ5bru7/Rx8ShZYj0Qgs0dt0wNnAEhqnnkHsQQi
	 W6ik3PueKL5h9imvWJrlhQoP4jHI3jqkQh/H5TuMvYlTMI6ewEN8+WEflf0P/wuQEC
	 iP9zvxLeZD6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4BC54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794099358.2918.14910116235234632843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846faad30238f468410417e116c7a61353b7f798835aea7b9f4b83ca5b69fe6f
Date: Thu, 22 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747940993
