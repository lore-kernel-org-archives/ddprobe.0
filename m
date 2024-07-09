Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3945013B5B0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720506983; cv=none; b=ceYmV1VpMJBd13Yk1uMjsrH7kVvx0gp29fwLiM1WV1Qmi36F1us8EwRwUpclPNwlxWEdfBoujmjRYhPZlpB7bTePWaHOEzY1pIuo19kmQ3n4Pd8gvwSDAbk6DB5V90BoDwzxrwf92TxO+jvQL614CSMyh5AvU2DNmTFdRx+gGNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720506983; c=relaxed/simple;
	bh=RwIrrePcBn786QbLHfn8yc9JufjYGQ+EwSjBgEcj6ZQ=;
	h=To:Subject:From:Message-Id:Date; b=AhuOdDpa9CeQ+gf4S4xjd9nF/n9PVAA1jrIxf0YS2vlvffPVmQ1D+eUgbZTpTtp99poFjoujFK0kW0n+yF3xbK7UBHcg7cDPy99jyT0cmhvS9B4jWaPEMZgEFfkpHSB/oFA3596aadWxmvmjxhaYY1QCJOx+AZM++uqtCRFZ5wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuttEp5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuttEp5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1310C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720506982;
	bh=RwIrrePcBn786QbLHfn8yc9JufjYGQ+EwSjBgEcj6ZQ=;
	h=To:Subject:From:Date:From;
	b=NuttEp5IbgmGHAVSJDTgx5le3dh0oVyGQD/R2N48VQsfCiJVMqaXPibG15/MEC1En
	 6ZCQ5YH/4cLyzKwVToTghw8ti7KWZ3GOUFP+lSPUlXvM/S6fkHyaSNm0tUPRdaI7O1
	 fz2gSq3KP2uCj7UKdXy0FEieNj9krXtJEs0wQHu8mDbE1mhN0M8L5wUpkXAJu3MfAA
	 kk5maapXqzhDTrF0/H6OxR887tpWCxWJ4cU1qw6B4HEMPkTd5MF7TqmA50wzWtXiM4
	 29bAqtUQ8AzVcaDhOaig3MQ/6dU05hI2v0XWYyYkGA0IEfjOr6IcwGGOF9dBYV6X87
	 UHT3FUEDpvgzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD464C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 06:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050698276.30355.13365592095357384052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5147ae3707a2ba8caefcdcd4716d0950f31926d8bd847c3bf70f4871648a8b
Date: Tue, 09 Jul 2024 06:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720506982
