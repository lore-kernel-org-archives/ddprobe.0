Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F715282F36
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772646894; cv=none; b=HYl8Dhdo9jDh03d32krtILBOE4O+yzn8YbwoY6bQOBwpFu+e6XqvoLa4qUOm8ZzU1Fcnl0JeZl59FqEcKxYnMF/8ocUquHGe9YGYDqQAUrDwmDPhepzDZcoSbGJmjuFxaII/b3O/FkUw1BgE2yyyPHPawi0aXTf56cTD8wqVVEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772646894; c=relaxed/simple;
	bh=2CVH+mfnKc4o+SuuzY4mUs4twwNzwTzRv4/Hcwqhv/M=;
	h=To:Subject:From:Message-Id:Date; b=GVxbbig52JbZNtZQ4Hw7yNHSn1GKgPrkD/R1fEiijNe4xLmiXGXK5Gf/8dpXqALqi9k6nwNy4yROnUyuby6BWznV8zb0aSyeqUPmzcJuSRKkpI4XnFmKx311i3Pq2MOiaBKG2NzTQPYYURH/3xcFCQPM95CDjAfUNbuSYoAUVd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o48fF4lC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o48fF4lC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D102C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772646893;
	bh=2CVH+mfnKc4o+SuuzY4mUs4twwNzwTzRv4/Hcwqhv/M=;
	h=To:Subject:From:Date:From;
	b=o48fF4lCRcm9uJeq/R78dpSN1/E8vp0D5WKRH6T2Inyma1DvKslaadp6QsYnypIh6
	 y5jXgCgh3DMAhkEHPYtSE+JDSJIvIMyTCxRfDgvhwX1L7v+RLlC+F4G0oKlgvi6YH8
	 QPUfZGyn9J+LH/dbXKOSQTyt0i/hS+x88sxDfFX/vJQzNRlJfASfZEBBPwYytGBRvV
	 ODM0n1WYzWV+IfH51NTMR2x7trDpMm509zp5lc6XkRTgDTwjW5qh3spw6cqL4EL9Nl
	 Ch8NHXQXdxz2pyfS4C/LLS3XwWU+ZY4PgQBEdhBOo6d5W0zRp7mMm+Yr2KetAdgPtW
	 0jTqpgF2lMJEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91867EFCE33
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264689358.21889.16863468193044265881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1ad44b6ec02fde4e4f39e39d7f917b1ed500776aa8d3921c7c043fa7f59ada
Date: Wed, 04 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772646893
