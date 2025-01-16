Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC4C78F40
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736993154; cv=none; b=lGi0AU7WYAyo06DWtBF9IHXFk5sX9cnor9ai24a/NIKZzZRex+jo+Vp8XaRqqZlUR7bwNYUEFu6h+RpmsPhZQyqLjHCruCGvBRDiy7NkEHhhPTWe5tHZzZZjBGrrMhE3wDkLmayWTcNQrMrQ9jlBLqvGQMSSb+t/+eSvqYpnzeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736993154; c=relaxed/simple;
	bh=jeMIfqs4aoYPWS0AoN7Q13DiDlUnoF3BpoqTyieQMWI=;
	h=To:Subject:From:Message-Id:Date; b=EU/J2BEho8LUToS/WcVbravY1+4LiZhW2sst0AH848qSJ/WSEXgG5TAe46XwHHywwyq/l87gglwuQCwA2qvZ47kdQExlmf4Krjz2qAWW2yDDosm/3ratqWLlx1gg9S4VkLNkbGfg/qD1/YDXz9KouwXcVi/Kd7GojinhVyaKYFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaBYj7fC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaBYj7fC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBDDC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736993153;
	bh=jeMIfqs4aoYPWS0AoN7Q13DiDlUnoF3BpoqTyieQMWI=;
	h=To:Subject:From:Date:From;
	b=EaBYj7fCBnJWzLG3kTfEGe7GJ732zx4Hc4j4Dx0yz5Pq2xbQeUJaW76SZXwqLv31P
	 SPc7zV+f6aZjYRbla7kauxcC5nmWhOtsPFZMQqbLP0E7iopwuKaTlkq5Zj2e5cbkZl
	 OcfpIIqfamydLFoJapcUnsvUszRhvrwoz1R3af27L4NDumL82azZatrN8cziKEAoki
	 mr3h8QpmV1ujmVBw4HkOnhCVRzIIMAiiDRwYth2IUuWTR4KYJE6tv1Jx5D34F2ggrm
	 xJyZizUYZD0y4iYCs1buTDqdDsiQgdR4dxKVxDzOHE+GJ9x9C13E2j0vzpP16w3Tmy
	 kW1/lKa3KD19g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96186C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699315359.10333.10143690617641304847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fb50e0f6fda420c9d37feacd48f60b0127ab44e3ecf12a76c0a133bc7f7b9d
Date: Thu, 16 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736993153
