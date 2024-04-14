Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3798917BD2
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 02:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713062363; cv=none; b=OY/exIjijeCf87Qt+oF4Gpn0YWcD3V0Z8jQ2lh4XU3o+TvNlGx9xI/skegSP7Ii+MHwVfpM7Q5PfRCOtsFgD1Fos/eU22yVoTZ1iSzNtp3CUYCFcDjS8sQKaSToioXsdIZ2zdj3GZwlXtc+meSpdU+3gpYZW4HEAi0yZuLfOqsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713062363; c=relaxed/simple;
	bh=IVtli1aAv8ZtvZb4Z/NWDdKgsLPVF9JG168q3nDwUVs=;
	h=To:Subject:From:Message-Id:Date; b=QkuiReEXVCkYW3TWjlHxjUulkvN1piQS31J99rZ2M4CBXOOV9gMc2y0GnOifd4pqCkU3uOya7xei2OfIu1xcwK+nbMysxkAdt7gMVh/n4LYHCWH6itjUF/L4Z7UtH3ioGGAQG0h1weKbRJEGTC442Ivq14y3qd4oB7ndPdNDLjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRfzMNqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRfzMNqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5BD7C113CD
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 02:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713062362;
	bh=IVtli1aAv8ZtvZb4Z/NWDdKgsLPVF9JG168q3nDwUVs=;
	h=To:Subject:From:Date:From;
	b=bRfzMNquTQ7cJSSkEz8AYuOB4u8BYGk8pXne9TAwiEPhl5Ey6mrm+/eDRgoEOL336
	 7DSGcU3DhYxMtMzqY67yEK/stvTFk+I5gJfs+xgwMw0PqlC3QNYo575Pa15Y1oVNGe
	 dGzIacy5/GZ/bPkR84HsxocoJK7MSWfH1eN0rF09Z2yu016WeCjtsvZzWFfX1/1+8n
	 kfI+nTAJdCRYbzHfi+wO1T6J3Hpwns5rnCqQgC3mDbWRlo2IWwqDb6akvJi5DJk+Bl
	 Q1w9RzIWPWmJKFKlco9ow79h4ZH1QDDWyUZuKBkwftJumNnKiztDHLaGEtoeiuwVRb
	 /xbnE1NaGrelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC1EC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 02:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306236276.5584.2407848853244521036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6482030b9f21941d40d92cc9b49cd8f67324ac25d77948fdb52c5f0c66f35789
Date: Sun, 14 Apr 2024 02:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713062362
