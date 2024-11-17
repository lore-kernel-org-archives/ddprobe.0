Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C00015C0
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731864954; cv=none; b=WjzDMKLzGRraAKutrCdzdj0d6mJONgSveDrleIX1oVgb//kNe/CAON1DMVCC45n6nzpUi2CgyJK6VN45VE8lWKuSGXgemqUHIWAF/mMY+zMfGIJFOSvocfB5IHh2dxNcDzMJ6EgKxzAO9B2yi8EpjeZ7N3fCnQnFZFqODebpmTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731864954; c=relaxed/simple;
	bh=T/Z6ds0bvdVd2eF2kra4rLw+5ppxj9aa9lMmrQhRrG4=;
	h=To:Subject:From:Message-Id:Date; b=sAAkDlU/nplWKyFBnqGoZsu1vcvzf5Cn7NCgFR8ZAsB64e5C71KBiRHOUObI3n6ZojEPRm42gJSEnUSnolYLDj06sMnv98qCIXNxm2N2a+ZURomHQ1YE5wJOrDGrD67g77AFYJ+Dfy0ncDPAXsPbYCT6tBI2kKMfQcDP+dYBphg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN0CgrVu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN0CgrVu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C60C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731864953;
	bh=T/Z6ds0bvdVd2eF2kra4rLw+5ppxj9aa9lMmrQhRrG4=;
	h=To:Subject:From:Date:From;
	b=QN0CgrVuJp7k6Ih/4E7uhgkSL9w2P0vD6ooii+RFSFleWHW1CCeDuv1MgZmIsLzu3
	 k6oRN3cy800aOPqNq2iHVLZSTAh7TZf/RCyB7zLJbEoxfXVhBIQ1AXRqGwzyUjNTog
	 NZ0+joXcoYUqENxDYKgXjUTrF1ywBIbba7F7SmVl66ec454zcVzbJYr8JKp9QymYc7
	 cE+Rt/lFD2V+VBDbxz/1UxOvEDTiAjJPSNRsqQPxaNZgEVOzoyFvJ93eYepe0v0ogz
	 wG9vChncf7pjYWrNo0YztcItyM1gIH3HV4rXr+abLeTDxvQxaFQT0XFIJsduq1Vf2M
	 WJghcFDBZeK1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E35CD10F25
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173186495359.24732.18420951506508846078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da01af3c59e7430390038fc91855d918d5afb9f6ab96b72593c02db6d52ed29d
Date: Sun, 17 Nov 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731864953
