Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6799119755A
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718629103; cv=none; b=VfbUMRhi+NInRYXHxo6ylNMYFmS+zngSm3LqiRhsHIJutkZAFghZVXMGB1T/oEyM7xTtJ3h5CwzS/jvGQQK69ZSqpWL7wZ6ZBkfB5Hx29BKJ5N1h6qPT2hf6SToTKHcbVRIsOx0pgEKYUMC/QbiUtL3M9gtq1fulXO68h/fcQRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718629103; c=relaxed/simple;
	bh=r+DuTbRNQxCO0qHwH+ZgKMVXaKC/fUB3Lc2TBSV1ssk=;
	h=To:Subject:From:Message-Id:Date; b=R5MsgB78ipZ/xmK2Z+gqZkWGpkOM0oY+vfcjy/VrHXaZpIVNDw240agh7Ro2YrnbVcif3vSQxEzUtN35TcLeIPyTswXcZglDBvo3J8NvX+PYO5bLwKIoz0pQ8in7I52gbh1/7Qo/qpCHoWL4vuN8qXJGU9cxRI8BleI9XUDiKtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgedQiEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgedQiEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED554C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718629103;
	bh=r+DuTbRNQxCO0qHwH+ZgKMVXaKC/fUB3Lc2TBSV1ssk=;
	h=To:Subject:From:Date:From;
	b=qgedQiEkNsIrxey96nDN52Zh4mCP0CPeLKMy7/KUPfIKF0rihlQuBegK0FZBjV/RZ
	 Spb/HD2i43GrS3hknPLXPlpJbFfpGjnUvzA1tKbataxHFF6yG6SLyBlx97b79JjS11
	 j+KPOzZfD4N+jX3JT3PQ3PzeenDUDWKsZ+R8eMiN1xDHFrf0t52zqM+UY7gZbacOAo
	 q2Z8vEKW1MbHJhw0kPCEVhxPnnHmGU3ZcbWt8UASu4VBSTpGjAw4nIAtNpHZPdN4ms
	 w9zl9d/nBI2/zFOdDWHoZnbPPtqF3OXEQW+4IU1w3Mir4TDWS7GJQMzIn0TN7l+75Q
	 micuXsnZxdAYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D73D9C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 12:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171862910286.22152.16926770300995551269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d586638b4b3d9c2271dd997d010041a7a93211448d2548c0ffe2b26f4c09ef
Date: Mon, 17 Jun 2024 12:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718629102
