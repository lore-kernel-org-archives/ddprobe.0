Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2296E25B31B
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751453394; cv=none; b=Fleac79K1eDxb0LlTxlFEDeKlAsRCBNIM0N+wL8FyB/akvSbI4lhloQBSOMM+rmXriIL9j+tJiltA1Pf8IsAyzCzbv+d40rsW+5Bp3tlqzq4yHftlHRJSlrBSuOi2DJRmJdht254a5+FNeYYqwn9LlTmqGeLHgwAQUvbmlVQJBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751453394; c=relaxed/simple;
	bh=Dy3D2E94I966XM61npw4gOHChKhBZzFMCKRlqzHpWbA=;
	h=To:Subject:From:Message-Id:Date; b=BLPmDHIg7oYi2Nl1K3knFXu+z6qYCXZXpcaiC3pYBrtA2K2P7ugnyclktI49GySkj7CyD+Z4RUy2N/KvEaNg2xGXRC0MNMrGB+n5nn7hVwoXS8t6pw8/VgByqdWoqXesvihAVfOuNjfz3jxyJNslgV+waYtUHqPEObAYLuEaetg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHD8cDY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHD8cDY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D5C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751453393;
	bh=Dy3D2E94I966XM61npw4gOHChKhBZzFMCKRlqzHpWbA=;
	h=To:Subject:From:Date:From;
	b=fHD8cDY4+NV170UG/wcQihg+lTag8dv03D4oD6Ix12pEHhbnJu3kPTpzKUaUanDk5
	 DccIbaXuub4tGNOhbtDixZndHF+UZrMIAyCULfxjuIkjXGjEH33oWIt8TlTnW9o+Ft
	 Y0kHx5WY6B+ssMEtdehvUIv54okPNq+VAnwkTAWl3yC7KaLsiUvZ5wNYWpwZwzQNbp
	 F+hJvsCFUSyIr2ACGXQnIUmPvjocwAZgxx4nPJmDmtNym8zB0KjENLvNtx0hHfQKbw
	 oRsEkkyy8hB12B6GN3xEtP9R0mX6HKq4z0ofgiQejO5jkRjiZM1BSSMBI+QXMUiIwT
	 QKzWejNEi/+jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91546C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175145339358.20753.3281955795553282869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e063557c7498e10ca1462210f9e89bf09f6428eb2b984f8c106bd5ef52b2091
Date: Wed, 02 Jul 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751453393
