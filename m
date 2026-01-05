Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B136242D78
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767584034; cv=none; b=h7FOQ2nA34h4AL+hb8r4H2qsQfzx8OFj4OxODMIS3XeuLNhnGpwQIIoxVyxmyBMjXcoUIFPYoHScJjqTbheSLV6Nfjvnh+hnNqK9x9GbtAL8TNk/vCq9BXY1oZ0XCOy3U4ajkNfnS5X/jkSJkpcCEf+CwEm6Bgdtfi8XRi+cLFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767584034; c=relaxed/simple;
	bh=5CuEvvoxnvDEkqk+9RGDaKXZumI6Ga97m4XTaJ6fJ44=;
	h=To:Subject:From:Message-Id:Date; b=XMnPrsXncy7N58jVXrQNXQXAryn2m9PF2nmHY76bBEjG50dlb8D4f5pK1B3FiS32NLM/eSz/1MxQrwp9fePiwlnaNMUhRh17oG+SdvPth2QYBVzlV51j+Q9JvPEBYSnuQtYbTX3v02agkbFp9/pTnRlt8l4uAgClcJuIHRpH490=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQvQl9pU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQvQl9pU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E9C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767584033;
	bh=5CuEvvoxnvDEkqk+9RGDaKXZumI6Ga97m4XTaJ6fJ44=;
	h=To:Subject:From:Date:From;
	b=XQvQl9pUyuzZ984Z/R8r3jH8w/Q2Ki6XXP48PygqO5sbeYUXeKeImBSa14EDINznJ
	 /csBw2CsROPdtwLaD5o+QHCUe0EMfAzI/H04SymYBlsEXeDjEULAXnXi1EAaVDM/I6
	 7hU7+nEjjVwVkCNP07mKcP7ste2NwSzYrTeqV+BNFvuBOKkN9kq6Mzto+0zCAJ3JEu
	 NBt27kgYeKT4M4wmoyzfe2v7NmkUBKIFL02vn6o3jBnwWEx5UtNk2YFfGzdWuyj4eS
	 VFoGE3e3wUdd/LVSizUZyKIrCvwl27YFHex2wZKAKFSmkyt8btD9uXtv3jrTZShLz4
	 7FvPM1wdCrWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB2C2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758403357.13229.2629566327727897533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2141157530b9f09c902bf7c2d889ae26c73bc7dbd782cb053f4e3092aa721f
Date: Mon, 05 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767584033
