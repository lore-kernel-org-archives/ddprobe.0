Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CEC229B38
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775628934; cv=none; b=E0WweHNcH8Vkzg2In7D9O5Vm5ttTth1zg9DJsrBLC624nDXp9WyCbu6gaclQddcAI/QhIRgP2HByq4IH0zjOEOMul/9aEuzN8F7Ehl72O4b5JzT74a3XDigpnVdiLx+Et2eeMYPnaaMbKdJ6Uek9b5Psh0GQz6o6HkTI9StmJ2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775628934; c=relaxed/simple;
	bh=uPX56WBfUWTW2QWmonWpUWmVV4hlX1Z6XuR08BHZW2w=;
	h=To:Subject:From:Message-Id:Date; b=uznV/m7kxbO2bmE4mZMti7aOelS7AdIm6t1dscERjLmf2PF5twNVyUcnAAc9R0UsEat6oMQnXYMrFA6yR8NjeC6j5hC1+NGpCvD8BWBmqOz0S0YLHCa4aNGDqZXg2jsnCwQn59olBjtiBSMe+3Xx4swyHE1PLvQtJYyBhsDTk9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2zv5D/l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2zv5D/l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0831C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775628933;
	bh=uPX56WBfUWTW2QWmonWpUWmVV4hlX1Z6XuR08BHZW2w=;
	h=To:Subject:From:Date:From;
	b=n2zv5D/l8eifiVN2fulRe8ZbwSb9V+zP6cKdcBMd9hu6qiFXkREdOCXt8+j9ZeqvX
	 6lEJz36cPwd3MBEeJU/15GbdftYHiaU5XxY9eN2qsNojp/DVpCcVLRhJR6lAtOCgnf
	 ku5d5/C8eJEVu31QuNdl/Nv/3BDDZ4+9gq26MpkzurTPdXIaGidJADkyDIvfNahQv4
	 FxHXoY0ze+JaaFFsRs6iDnI00IPFDo70HIUKEGCg6549E7Mi5mNnZzUzCtrv6yOAr/
	 xaasgPES3K/GLUuJqwsuDUCjC+RdzVOFlL0jDA9dOC1mY7ntekBy+bBMKc1OwXAYjl
	 c4NnYEdRZ6naA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14E5FD5F7D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 06:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177562893369.10753.8297613521960031088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5874e3778d3db411fdb8efe619b125157ef961dd402aa7b55f2b964ae5b8ddc0
Date: Wed, 08 Apr 2026 06:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775628933
