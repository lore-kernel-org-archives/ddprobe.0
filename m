Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33E3218AAD
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764688973; cv=none; b=k9zsd3gyDBZPgo/HqpE0UdqZu0qRRPVqpbfvYnvCrxY1EOa/RTMAlDey6FJkW1QeN8THEPgJIukV/vgqTSl0zE3A8Kbr5jMcV9gjY1C8MVon8aqys0VmxKkJrYmvXEs9vcvvuX7JMNXhHki67KNntnwX9j1Gm9SwKiXR52wMOII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764688973; c=relaxed/simple;
	bh=eldbyR7EP+AqLnPqKM9l1Hbd6FY5B3UmJMaBhcKoT2o=;
	h=To:Subject:From:Message-Id:Date; b=q9ccKyy4H+HEeQufv/lC5dKHuKWW7b83CpRxRUejcvewE84qEDljANe9K6I1RsY117xff+XXWtPlB8mA/aAFCTSc+MlB7VCuGSYu0FTrXrgvbmKNSKIfcTAZHgFy0Ut6pCBXFzzKZo+tS9iwQ4rr10oJwCHW5tBx7B3fG3zlZmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYzXuScF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYzXuScF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8245C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764688973;
	bh=eldbyR7EP+AqLnPqKM9l1Hbd6FY5B3UmJMaBhcKoT2o=;
	h=To:Subject:From:Date:From;
	b=VYzXuScFT4bn2jBlZT9Ts/RLoMaIKlS8W0m0tpVy3YHxA+JyB8ZXexZTcw1s6D5no
	 rZXbARNWNxHNbrPRr4j9W3ObK11cLtSAv63sSUESNb3gMbcdnB4fX5Y+282zvBSdYD
	 LEWOv6IEQLf68DTkMIkOq9GdDCiGk3DwZaZHoU3+SH8Ve97eQWDbYzMYgQSqwCkZ8H
	 U7WppUwykXCeBJe7PNZ+USqUzEssnE11xAGxQcCls+KcwnkCca9hXM65X0Xe+Pa8Oc
	 FTnSXsnOorG5APFyJB/L8qRGRCTD9gsLc++c6bNL42mfM4zyrlyBw54D6mXxWR495j
	 qKk7K/HGaQl0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9387ED116F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468897358.7308.15311030908147839975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704e8d0ab720da4bd1913c0625792c3394bda66b0dfff5cea5eb91fa86d0817b
Date: Tue, 02 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764688973
