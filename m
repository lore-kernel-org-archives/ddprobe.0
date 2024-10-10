Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0CCC2E9
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728522354; cv=none; b=DRMeqc3pKS8tBlbzXVMk3tO7QKW3GOIbpO326zYdS8BllizXsYcL8j+PZ1VSmTMoQxhHhn3uJ6cUJ8REqwLGqF+I0k5/1PeSOf8qs3zzDRZn7ypQew9AWeGrGrxw+urtX/e3wx4Vwva6PRXxNvGCP1Ta3RRa7u7WIbiFonhfbT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728522354; c=relaxed/simple;
	bh=WY70X7WF8H7vKUc0M5/0T7c7KqmU/DLnEp0HBDUYHbk=;
	h=To:Subject:From:Message-Id:Date; b=eqZvuiMT8aTiPRem3uNU6rvWM+pUrMr30xBNj9e4e6aYtjb+6gZjPivHnfQdIBA18cSYOHLvHZmpvxwVJE4ztnlbRwcPexoIIa+ibZy+n8mvoSigqJpcv5V+GgcMdMlhf8Acnc15dn+6ysrKodZjTFgRrVqYQwzadE243SmJxzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwVdcmb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwVdcmb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6272C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728522353;
	bh=WY70X7WF8H7vKUc0M5/0T7c7KqmU/DLnEp0HBDUYHbk=;
	h=To:Subject:From:Date:From;
	b=gwVdcmb9Jxinfubd0IWOeE1lK8uXgQvBu9TxbP9b3M47ZilD/Ile5dJWbfEGkI3rT
	 REaFMtxWQ4+pVrErAXxYVb0adnf33tu3K7tQB5cW9DdWFaQxWyZ6WvNFLQooOVlsRW
	 HwP9f7qD0cPzYuiqAf5TFpz/RVCH4sfJvZxOr+9C/JObM0Pw27iR3I+qDlz8weHDDy
	 ZIxAbkw5J4nfMRfT40vuMn1zGDI0yQndEKa2FM98kiplxLZkJV8uPi6mCW4cFMuMPg
	 OqD1wbC+mRkCLUTj3bV7htedXY4mWljYhDCSE/ITJKsjX5iOItBc7cCA3NbOwWpTNp
	 4X9q4Yry9MsAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A362ECED611
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172852235363.30255.13056183556102027622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9806a6d38c7d505ef58064ddbef664ca1df00a4dddf11f2d32313e2414563af
Date: Thu, 10 Oct 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728522353
