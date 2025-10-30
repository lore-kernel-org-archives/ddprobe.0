Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5934D395
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761864594; cv=none; b=lfmE6TeGn+J32uI0XkGwjp5LbBVM/7SQpIz5b6o9kI225QFvgFmXxS3uIwy8DlnhuagDi11WZOzD0nIufd/KFhNak31zbT4hu/ibul7Bi3nL7je5X0xYBolbSRwaIwp9bL0yOn7KIEVx89G9oa5kR5xD3GGahr397lvOHtI8YlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761864594; c=relaxed/simple;
	bh=XK9u3bV8zK56lZI5/7FrNRsfkV/SKDZJIs7NKjrMneY=;
	h=To:Subject:From:Message-Id:Date; b=Mjm8TKjU0SQ9cKXZ5kNjtd9y1O3O51LFA+iOLuRsRmsOWmiHeohPkGZfq9Z2aGHpIg+YnlQXOywA9HKW2FXiOo3zVTBLJIobyWYCw+/yJ/3fjLlUmvW2NhzI/TDE0va7bIKiFW260oVkb19HszDs5uLtTx2smuGetfZH3KK88vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMNw+hwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMNw+hwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE699C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761864593;
	bh=XK9u3bV8zK56lZI5/7FrNRsfkV/SKDZJIs7NKjrMneY=;
	h=To:Subject:From:Date:From;
	b=TMNw+hwXsnFJnVUtvgG1ZjP0CNZZQ6XU4GuhqJWnSRdY1meZy+OpRTuFrruCaWt00
	 VHbBgnLMiVGJrocBlDtGYFWwpI9DtvBhMqhiLxetczEqlMp2AnxquOH5fdTZtssz2Y
	 3y9CL/k4utKUk/0T3HUr42bVUoC4dgfTu6EuSZRd699jRl9RZukL4u14Vr7KGC87Ry
	 lFWET6KTwu5MRmO/WZej2XypWM3QCeDUQ/aUoSuYZyBXyu73yf05hVL06zP3maOfEw
	 ICLJI7hucRzBEt+iyfaHNBlIJe6Jjt21mevXeSrw6lTnXyQAA3MyX2C22wUnfjmobF
	 R0pgjYO3ICmhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBCACCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186459363.21126.7363397446487386567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dabe8bf7285e862ebfe342b72541ea2ee7fac2803eb6874e8d65a2b77b8daca
Date: Thu, 30 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761864593
