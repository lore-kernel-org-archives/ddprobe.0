Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B92192F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758074994; cv=none; b=UOtkf4tRd1BC2Q/Pcv0rhkYssdDIeZdFt7SH3pZQIHAM8DQAqLH0wBOwYiwrAFV1if961aIlMsfYu4QppkXrItPdz+P9D5Wio6dvxKb3a+rV3E5xXA1aOxSoRhNVNu6odOY7jChv6kzcAP4/8bmFKzju7WKdrOF+qaJ9FKGcD8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758074994; c=relaxed/simple;
	bh=ZF/nbz8Z+T2UV0vPvRsyFwlk8erc0Rfru1/OzeOstxY=;
	h=To:Subject:From:Message-Id:Date; b=DiQS8Ie2+TUK+2CmWZ+HjUORZyIFpHjTEnEMRAi9TTEjrDNJeU4OdECt3lGpnJJh9sWIHg/XI6C5OBF9n9ydGDMfeKzw5EZTMBJIs910NG7HT49IWtOPfzfoGLgR49dc2pmnfE8lLXlJdBGzmEWArF0xlaf7I8omZXNRZaK3rb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIH8xGNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIH8xGNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3250C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758074993;
	bh=ZF/nbz8Z+T2UV0vPvRsyFwlk8erc0Rfru1/OzeOstxY=;
	h=To:Subject:From:Date:From;
	b=nIH8xGNZS9qDFBiMxpYUXYIoSCM+C/frwI31YLlbXr7OeP4luAYuT5OELJv7kdMpI
	 1000vWmOhcEpLty7TAXiWZbuy7x8Tss/33bfkeOiJivdfC7l/wH00vbaPy2FHWpMX/
	 MKcavdF7RYQNYEnXHoiAwAzXqbVVInKPpq7G7symYEuziQnxAhuBaOUXZ0heQxRkd/
	 S2UqAcbLtjx/+xRZNJLsioTzwVKeiCQNv/iyWKRrIBYtDHeIFymSHPNRVGj2Q2+hhh
	 zMLyoFUbohfSaZ6f9PH2sa+qLg4s+vJY6r+ZutaLQXOQ/Q1/D4Jv6+obARUPCNpSZq
	 m5PddE6piUYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93100CAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175807499359.2662.16111706899663782391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2454721494da16f26701d7dbd8859baaaa616c0befc87919fa913728b83e104e
Date: Wed, 17 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758074993
