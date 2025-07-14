Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF4A243956
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752535794; cv=none; b=O+cWqN9bCPmbfr6B/373YLM7HPd28jDxe+UvRzYM6+g9KUg3kaHrvkakq4lpjixW6+dvyOV6vZ+82/Q84epx8k2hilTjzDeYtjHXPHPUnZRguGbFruuk9MVbeXd255eHHI4EBkKNQ0p3jg6qowyjJXI6Lrom9umqGBB5CoeLpXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752535794; c=relaxed/simple;
	bh=couv6rkHT5JmjcqxgZm695MH4xRm9vFDUE1Z8dr0vRM=;
	h=To:Subject:From:Message-Id:Date; b=QVMMkxZnu7osi2ZPsLteVSIPCmYkU5ULW+aZ8Ri33QOTQlrI/lsIAtGZrdK1yFEs8rRVLUO+dCIdYEbYrfO0FzIjPhhJlibspNJNRZW6H9Agdr0CFPviOlmXnMNkM23+v5iKazdfWSo/X9xPUpNGUQqwrFSEcxCKst+38fQBMec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=curm4XKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="curm4XKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE57AC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752535793;
	bh=couv6rkHT5JmjcqxgZm695MH4xRm9vFDUE1Z8dr0vRM=;
	h=To:Subject:From:Date:From;
	b=curm4XKEQSsQ969xF6FRtuVjn8pblxupycELqLpxtyLEBGohAGPxaifMVSrU4kWnD
	 duPZtslDxVe16JK5elwbAwrjtVZKzLhORcA8WZ4S6goL8yG58SaeqXmxk591khR1js
	 KnFztXh3MLctOJTqZg2+rq7rEO+dSX1cf/8Kg9FsRVVqeNMt8+S8FZNYSjv+9aAkG6
	 R3REQeFDJCYxJ/k+69nZmGa0JJukf87tHtRICb0ov+h75eAimX94/TX95jXeG3lWwM
	 Pi/TFQS3NRbTBO3t4RsGCjySqKFLUGzPVfk8VmnH0yKpzOb/+gkvs7W0FQe3gGMBZu
	 6Ju7KRisteJdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF38C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175253579362.2237.10249304667913080595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76379cc1ee9e8c64835c775a88ec7fdbd39e1fc43247ed01b4ded0796133c8a8
Date: Mon, 14 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752535793
