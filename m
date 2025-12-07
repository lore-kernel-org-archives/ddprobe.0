Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A4F274B3C
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765096974; cv=none; b=ilqxvqg/0UI5gVVc8WEJbytelgl/RfYha5ub68yli+6X9cRBK9RXSVt+Zip1VcfH2TEwyehmVU3E6fNuI0K+HaBoFYSiJA+vJCoFCyB7j9k3XzJOmSO8hpB4pSjCcTwBfop8GbZvWFuE14xQ5z1X/Oux9RcBhTGN7T/QMLiDBho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765096974; c=relaxed/simple;
	bh=IWhoFe0+UzBnTHhkbd6n+o2M+q17VrZApE+8pUe5x6Y=;
	h=To:Subject:From:Message-Id:Date; b=Becassy/0qAunyMXUlLq3L/ixAHmVDSCXbxoYEYtAY2b5Ff76y2v4Vn7p4fxw2C8eTCNaC/TFp14dHAFo7l/XumIgVS+1xg+s3VvXQOXTCzqiHfr1EbquPzw5lmPnVjOy5Yska/aQO9e44pQTGnh2uq0m2adEj2rr/KAipWw1tY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAmWTaSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAmWTaSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4957C113D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765096973;
	bh=IWhoFe0+UzBnTHhkbd6n+o2M+q17VrZApE+8pUe5x6Y=;
	h=To:Subject:From:Date:From;
	b=iAmWTaShH5ZUFvXc5qcQH2EI6A6pWeT9wC0iqUVzVCdYUKXVTUs1NLQ1WwXxqgeEQ
	 YpDqY5ji5TUxwMyRPswImTBs6lci/qcUcLDGvdXOohvFTPw4vhwgQT3eyhboxPAA/1
	 pGIFCDzmKWxLKb0PMGq9TRXEkUeriW9F7LwGhBMKmZt6YKDuqbhBsCAvQ81ZbUgi8D
	 QvAIa8hdVAKXdqM9m+2K600M8OoVSpuYrJyfYQuBc5Beb0vkuHksF0wG1q+HzvRrxT
	 SZqxcgmatf5mUyd+N6FhdsEpQg6dMX0slRia5YvC60ITQhR2EZMwCySgm5EM4SlX8R
	 BB2tCgvSaGRrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924EBD3B7E2
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509697358.26599.3369938662225016661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81750cde91930ca108749c2d3c2b3bd7a0161e1843de12a5a1f8648e814bc429
Date: Sun, 07 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765096973
