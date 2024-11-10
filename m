Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475F513D600
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731237354; cv=none; b=ruLAeen+uv2bexsUOQy87ZaJ/ugl9a0k3EYNfa1GJNsgyKHQuwNre6Inii99UHOT2vKMF3XSN/TSPtzRUM5FS0/Gxu8vPRXAcLz/8lMpRmz21/O3aciRtjYlPof+7e4tqAotGvZx6amopWG0pEJ1V+xJHoiqJXZlMP9BOlENSDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731237354; c=relaxed/simple;
	bh=1jlkSyhRXSWR4GNxK39gr8AC/Z8UekLur9hFUTQ33+I=;
	h=To:Subject:From:Message-Id:Date; b=e/DCAKLlPOlPgJhRNWHBswXDgdCwfZ+R7gDkWk2+/8w4MAySRxwskrVB7VVEmEka6Jxbl8gErR45+rxssyxq9KNVEjR7A8H01OWWmeXnssJIDNpPxI2HCB9jJmojGxHIiuUTjpSa3YXasSENKLrDkCpWgKodFZEkv5faI5GPAP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLO94t8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLO94t8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6BCC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731237353;
	bh=1jlkSyhRXSWR4GNxK39gr8AC/Z8UekLur9hFUTQ33+I=;
	h=To:Subject:From:Date:From;
	b=sLO94t8GNJICkevYvSmq46a8/O4BxX9Clo5tNddMC/yzKTywNtd3TfJvQNMXGCpBn
	 sYOS0LTIm2+q31CRGp61fEJSsck2rmVNkFysjwE6TOk8uUhGSt6vD4rerXyurTBghN
	 MDPOSguQgsTvrSHryb15ek6Ef4qNCHskRwB4sIvBN8DGHBf488FvGG34fYPpKWLN8g
	 GMHR8zpERHjOkzbmFT6bCa0wq8WjO/tllrbYgSUaLY8hFLE9yWquOKrMjtYocF/d0I
	 eaQXREqqlXwWuEQZDqHAPBIlTcT6rfJijbOjRTMykSwLHiOvzWBcJXGFltLJTEfEPe
	 gQWNdpD2I2BtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468FD5E380
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173123735357.24131.3369145288578276691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4beaa486ea4b68fc8b26aaaf5033e434a0bc70a26be5e1d9f24697e7815a4472
Date: Sun, 10 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731237353
