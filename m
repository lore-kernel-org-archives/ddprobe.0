Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF4E38D014
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775504734; cv=none; b=S0L44RR/p0LJN4Liu1izOZ3tCD28Z0iiblBDdC6XCuxY67UbJUyF43v/0wLt47LZNS+Cw13LqN3k3FeUyRcg2Iy7iyp+yTI1v7HVKkCWpX4Ig0zkHfFZrqgOfoMV3zNA/3h30KJHDzDhE+9iCu0QO07HQb8S98jJSwwaI6HjYHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775504734; c=relaxed/simple;
	bh=EJcLnO9APu8hB7GnJMbQSUFIkz4lYzJPzXbE0AqIvs0=;
	h=To:Subject:From:Message-Id:Date; b=AXb+3mktIy6YQFHIATbf9IHSMhVncYNIe+ijOU9oa4txZj8vE2niXof2BHs8MHjtNXOffNW28jc/fu6C1yN05q06hmbBTJEAALofuFADzq9DK5lsAzmTM2zDVIKpqKsIQhtA3Bv+mdcTPEBtNAQI+XxdYo8x/AhXRIsGONPCE9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S316lRCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S316lRCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0356C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775504733;
	bh=EJcLnO9APu8hB7GnJMbQSUFIkz4lYzJPzXbE0AqIvs0=;
	h=To:Subject:From:Date:From;
	b=S316lRCG7XEpUAkwst82MVW7BKeRs+maE6gnKLAkHfFExYc53pBHBmf5+4RXXcl8z
	 KHsUAZoA0JXtl6xzv+P/WP5RWardwAy4Yy1JVXGNO/sUrq0/IpUVfPHaUnIMC8twIV
	 4/S926iRlNck4mMnxGR58xJazedV7qkZohxWbyhofgvWJdeFDJHVDpNFGbMUi+xVV0
	 E3XwcwYZz99PqXXjL9XpT6+aJVosQVhX+JQL7uAS6Moez1IAmnsWPBr1IfyE9ywPGQ
	 ck7ATD+cJJp058ZNXHYqJ1G02uI+OgoRS2Sy3FN9vvkt5KnDEQGCEjd3WIzCB00sEG
	 YEkMLL1zJ8Fow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF890F46C79
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550473370.15918.9767248428067229156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fabf4ed393a0aeea313f4a23d58fc3697a37a1f73c0b1e66c774a5cf0d45c38f
Date: Mon, 06 Apr 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775504733
