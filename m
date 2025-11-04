Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1411018D636
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762251594; cv=none; b=JZ0VxlDrf89fGel/bAc5mD+SoIA71ZnGMvDxHkOwpJxxRMqNpjCXUjLf1I047YA6i4qjRtjTrnD1lOu8yyhV4so1CP46ksjruxexAJxxWiV3S4XxihSeaEdkOXWI5X5fhtiIU/S4r+4axAIp8Cw9bBxvz4QsJFSfZ4U5cbxhZ/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762251594; c=relaxed/simple;
	bh=XgYeA0TXu1NYgFUYwPdMaNgIyOaTCrpxYDNPltZ/6cg=;
	h=To:Subject:From:Message-Id:Date; b=ZlHOI1W5lk6lbRsMCmNy51X1Q2T9/BTP4kO9CXMY62pV1rGy5rGHrrO93YVArz8LNm1ngjHeLGuR0khu0cb/Hu5/cR3zZjkGtqKtpqG7gKWvGxHI0zXrps5oQ5xsN5DVyAPTSXjZ0nhFGaIbF7ja6+8WgmLvboSRO8KJ4yG0ccE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=El2EUK9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="El2EUK9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16DCC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762251593;
	bh=XgYeA0TXu1NYgFUYwPdMaNgIyOaTCrpxYDNPltZ/6cg=;
	h=To:Subject:From:Date:From;
	b=El2EUK9FOME6rKLr04gn7cu2hBU0vu2tdAp+WviRGc5zsL1stuUDHCBl0FDbpTrtb
	 xEDyZzHc/srqwhCX5uDKBVz6Pp2WLjza3yst1w7u8FS+/XF9G/BhlNoKdK8ueWbvr3
	 OnepiNze26wbM/9vd6OFq+IpVoVdWbf2iKzbcF7UklM2UWUV0E1thiAZdLNjzKtgli
	 Z+ME/92J6yOVJONrT0yVi4gM403KdtqeAZEmi+vQYZQTgiWaqN5ZPWYKdGMUwcjkOc
	 0xnVmj6QfHQRuM3QxqNRo9yscm09HXyhJksGeScjmo6yVttbbVwFz8tD0NwCGNnpse
	 17tfi6okhSsFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADDCCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225159359.2190.7039430251511529341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45ccc7625acb8965b989edcc3daa9b62146e367a067cd474cf957da6aefb29c
Date: Tue, 04 Nov 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762251593
