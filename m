Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533F852ED4F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789766434; cv=none; b=k0VvvKhMpMYNBKXQm63hQzjybmg16sgfnHOXNgvw6knEb9Se0NqtMBNO1TnSTyFoUg+4gUQ4bZQCbKaBYpKiHi1ejBRyzoT2BN7hbwsAmkjqIwKtKU7cJLTLb8UdkLSfYLnN50pI0y4cDBKFz6AF8ru4p9YzuyGu7uCYBl9eGiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789766434; c=relaxed/simple;
	bh=1VzYkYt60C6gdEoyYZtYFa64eel6yDG0mCu+Uuaw+Ko=;
	h=To:Subject:From:Message-Id:Date; b=NOsCZ8jHfXXa4SCUtiFf0oM/3lI/y06zBqN3vrmS7wYh+tqrxsb0vmFngMGGr2tsVwbaQLZRhCQHmjQ0CB7QpkuC3NNOnD3sZdLEytWexwNKVl8GOwrLsNKOPJV+XYM+mk2qA6UmpL5bWEZmsjYwQa6sPgh91F+/OfbAuMfsCxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad4CkM0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad4CkM0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F76C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789766433;
	bh=1VzYkYt60C6gdEoyYZtYFa64eel6yDG0mCu+Uuaw+Ko=;
	h=To:Subject:From:Date:From;
	b=ad4CkM0Fuq+xG+lVS1DWpP5B/Nqbe6K3F6aTCut4Ghd5UDueL1EDYQEC7+zyIZ7oC
	 QYdKqIGN9xiawMUWHheacSNOITLUBIgEUw+v2TTKYo/k2BnJjfrAKqZdfea7ZLkxHt
	 rmqq5dNL7AeTOy15/+K0YhgsWNv6dLBsnro1UpzwT8V9xa89du/G5D4P5sjw/IDKkV
	 kIIgKNUQ5XZhYlc4FbnWUIbIJAg/BynmJR/1+88RbMcQK972RDGBPme+6KkJP+7O5s
	 gYCPF1WJvm9+TPUd4lErKdCc68LCqIEFolfTDeE13xjP/uN/4U5tKFA5ZdFLz2Kw9r
	 0CoQcoBhvhY4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB01BC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976643369.5235.1973199970136989239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447f1b6d8c1d63a34c1db6c8c7a6223f6015636a37fae40b0d032a0fdd5dd2ac
Date: Fri, 18 Sep 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789766433
