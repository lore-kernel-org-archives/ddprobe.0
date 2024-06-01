Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B6814F9D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717243463; cv=none; b=Uj2cKhmakV6aAvEYsg8h8JwwPk7vt8Hv/1iOLeiGD34Yyw+ceO6ra7xs6h2m8X5yLUFGuALnHEAgFLA4xbsd/X9K2sJcJPsr5xwJVCFnkDIFkapAH7euOiTYkcSqqCrVdKoBuLLPtbK0IgNIhM/WKK2rvQZFKg59N2EYDQ8qSZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717243463; c=relaxed/simple;
	bh=6VCduww846EjeMNTooD1Dtaoo7mGdIE/oZ1n6QTWbHM=;
	h=To:Subject:From:Message-Id:Date; b=Lod0aGK+UKoo2duqEcsBkD6R015Z7qMr9BQafHqSeqj4oXfCpQfG3hSbBTA9ahyXdr4sgZsS/aqdrJqvISQJd8g2SvGgjEMgu37DFd23kqH8GQrd/y3043Ou0ugd1IxYOv0Q5Qx53bEfOWV8dep1WKzcamuFs7afUDno3aStlNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYr9Mr45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYr9Mr45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E706AC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717243462;
	bh=6VCduww846EjeMNTooD1Dtaoo7mGdIE/oZ1n6QTWbHM=;
	h=To:Subject:From:Date:From;
	b=IYr9Mr45sLCKNY3srzWLpmfO7pPAaQNP0UH+Eht3l6yw7H/SVt2FlHkW8A576Z9L+
	 JQqfYAR0aHHdKkoZaiJkQjk19kS5cUEoFmnVlN87Da8POiIwHi/eRDBSV+LBjj/LDi
	 bPePnU0j2bZxlR8KC29bD703x4dWg+21PQxFlz09ly6f6KuG3+tSL2GGDcZPOSLtLt
	 yFPruwg5DOnRHLtEMvB8xAaYUU8eJT2bdkeDmjIAfkIygLkMSz1OUVDfYoPwL5PQLE
	 AM9GAiPCXbGsCNQDRFBBno8OlWeCYaFpURa15Bf+eSm2bP9Mu3TqY9LoBYWHArtuBd
	 v3fKZRbJTs3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED61C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171724346280.17844.7414872033820467630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc18f81eed4b80c19dcbc5dcf6cc94cc6b07ebe2c05f15b2042726ff286837e7
Date: Sat, 01 Jun 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717243462
