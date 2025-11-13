Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190FA2F7443
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763048994; cv=none; b=YBZEN4W2UG4kXx/69fLFgsIcVVjdZwX3uWxrKTOw9ediVUfwIghvmUqcNjNWZ7J8GnQbHlKHIZC5UKQ7uHeEtzHC8YLdIF36QDisb/1uQ3tyPAouul2Od4kVJy5OWT8P/QzCXAZBJB/BfG3lwOhEzpM85YDNQfQr5nGDQcIFsl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763048994; c=relaxed/simple;
	bh=ApWCJqd9rovnOCsnQKiNH3aDnP6NYplxrV6GMsjA8S0=;
	h=To:Subject:From:Message-Id:Date; b=aftcefrHNbhRt2WQV0jKmm458Nt1Hh7FkvdXsa7juuI1nbcAhllGh4aTxqTet1m/Lq3L+4RKyJ3N2yP3cXkzSVtcqTpbjeIOpBdndScJLJovMgkayOXmir5V3B8Y6PbgsIHN19G6ZrxC2YGxF6jpeGgriaeYZgO8dS5PcAqRK5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCmsK3Od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCmsK3Od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3A8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763048993;
	bh=ApWCJqd9rovnOCsnQKiNH3aDnP6NYplxrV6GMsjA8S0=;
	h=To:Subject:From:Date:From;
	b=QCmsK3Od6A3fcD/DmEkQJFH7SZHQpn2dJTF3Gl8mcwA482eHPCoN8XJgyHy7X0nFe
	 SWblscuetGcQeLWTa5ZqoEjOMN6O0Ws/tyc6UVGT51CPPCu2C2rg5ru6sLnNdrrSnT
	 /WKBjkOCb0ixvMgO+y5HPdB7PKSYx/LtvkC52zl+3cx6L2ryT8ug7vNC1zo5+H/UKt
	 dtj6h33cOioVpOtFim0cp/OhChArSWVpJFMk9oxY+cQWwMKxCBpjDWY5JvM1O/OELT
	 7Ps7XvZ0XYa2P+vuS6DP6ssmx9SdsSeE1oTgyRGh1Z9NkCC/owUCkafQ6nuYLkLmEV
	 Lci60L6bxgeBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92857CD8C85
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304899358.909.10950960446098486537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a76e8c87ac9596b209479c638c2d3e17438a52764cd03d02e1dfac111a87b55
Date: Thu, 13 Nov 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763048993
