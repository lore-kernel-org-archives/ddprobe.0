Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B9B288C2D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779773554; cv=none; b=FeLq+GzhRzNQm/54n6Gszxt4uGK8+i+NwlJ0ZebNZaiVziwvM/a4vgNCC5JDRqjV7dhx9IUwA2nyUdSiyvuE5Tj6ETGcbbRI5Ha7oGcOpiRHz7y1gne4Xhl0EJ+F9UzbtrMSnSD0jrvoNzr/K58OjTH9cGF+SmMp5j3wAGBtvx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779773554; c=relaxed/simple;
	bh=tQoCbeI6JhtUdQURAv6laQbqs9OHdMe9MRAusDQOIAw=;
	h=To:Subject:From:Message-Id:Date; b=bIDct1vquBFpx2Ic37sFaIe2rO8sazKYwpbVQQN5tprih5XOVLz8u2BwBpQKCyEcrNXlRn5MMXLTOlvaItEHU8sg2OhT9euAeiQW0LUt39kDucs2luFkViIUwh5ozKVtCd5wGAqKoYUWrhyPBNml2LMDDEKS9h3PiP8f+NbKwUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fe6eLUTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fe6eLUTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F0AC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779773553;
	bh=tQoCbeI6JhtUdQURAv6laQbqs9OHdMe9MRAusDQOIAw=;
	h=To:Subject:From:Date:From;
	b=fe6eLUTuwsPagGMtHw9ucjy4OCZD3oltnKwluUiJmh36ujE96bUDRnmhGGQfI9Kad
	 7TnhY5jYRBwfozmgXZVJC0mZ/vyoyeT5VNmRWzQrBisE7JkTA1H9iCJqHOX04gqRiu
	 aB35yU2/nDvLPhG2PemP8ckG/sCacsVMUzVbnK5qE8GWUZyeIksTRRWyNHuWUNcs48
	 aqVwuQJk5EVEfZpdtwHl7FkGtd5IT4hKdIvywZnR1w3AynmOb83HBWBE7qSpbD2Zrt
	 CNgvKqfmD14SJjikk8QgUXDKZdA0LrbUp4zR1d7ALOoK2QW/hYWXCPH5/cgdAYVtL3
	 bCraYi974rxDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A905FCD5BD1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 05:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177977355368.32707.8556727838348827693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 697ab8a4b3ed8c7eea2a1dcf821b6cc09024b857f96ac1ebb19f49a4f8caaa8f
Date: Tue, 26 May 2026 05:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779773553
