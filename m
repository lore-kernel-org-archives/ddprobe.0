Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B1256B7B
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714647143; cv=none; b=DkLJo00OwfmYnB50FOnqob1n7Rzk1O3hVEDfk1w74JJ8Y9lhjvT10HjjmuXCrzC6XXZKe74f34+6pNjwmfvBLUkrBWHgpsUldkijIe4qvyOtYpWh0nXB9+4x/154mqR4q8cP+WLk9fmJui2I/E3zZT0hKysNJCY6hOQmIGPmbyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714647143; c=relaxed/simple;
	bh=XHiFGNV5+CF5miQjT011W9BOFosvxbg0AKjNdyvJJIk=;
	h=To:Subject:From:Message-Id:Date; b=dvfYsjuh4M1e8vyw6e4OPYiqargxPlLghQieagOpgokZbpWbsCZPlzUv0Y9IITW2NE95WOPNjyN7maNeDgUVUK37NikGnNWjogO6iUThwglactVJCTZ7uHB8aWXdYsgRUuo9HdSYcA4MnzhOzW6IKYW7eIsveAJRtBbUhRKoiEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=inM4jOyM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="inM4jOyM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF16FC32789
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714647142;
	bh=XHiFGNV5+CF5miQjT011W9BOFosvxbg0AKjNdyvJJIk=;
	h=To:Subject:From:Date:From;
	b=inM4jOyMVmtbnVPRBK6ByOdRZ/w+anojtgKYxr+ReIUjcYJQdtIq3gSjEEiNkQjBk
	 PKASZHL/f4qQ2oO0TKzscCw0j9/bAGhHgfqLeD3E8TZfaeEGvzqeO6DWRGqzWaL5mY
	 UkO5YvayB4bHr3h/4QNVmSUqdRqnJkwiscBqJ/tTjvNqPAAkmwcij0hY6E7upzueJX
	 eSOH/bxkDxoVOEip1r+ZIQXVULzXtYWf+YVKvvwTwi0EzwGHe1uobjsVlNlb7qfpyf
	 gxwK95XOks2ET+IPO1n46mSr9WIZo/pj0nsVKeEp4PGnhxVcPIXGMqrZqBmyFLHyU/
	 88OsUhpYFYsVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD82BC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171464714275.20788.18176918895738376342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930bd93da11f9a3e929d1f799dbcc2603da0f93d81a01c398588f46162d12972
Date: Thu, 02 May 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714647142
