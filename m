Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450ED3976A0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783468114; cv=none; b=UqSyr2RrQY4KEXxfFvqZVBWYAPXc1FY21fJwXdNX+t6g9Hly5LofJUbDqbWI2uILE5xY4IdwvY+b94hKlC2FbSN9B0KbBaky1lRiAV2UZBYn5f3leciVxOIH7MSUQmxlcOVD0qHhru0ReEYauqX8uNtUk90oHSMLEkbQeXt4Rf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783468114; c=relaxed/simple;
	bh=uVqA1h4/YbkIn6fDaxfzPVm73KyxIJO/5pSUVeY5qs8=;
	h=To:Subject:From:Message-Id:Date; b=bdKEBi0W1TMK1qGtdfBxU8bHsQ7uL1LFJHf5dqYBJkoAK/KKUtfvUUAmJG/m+SVHy9AP66KKxfgvq+p16Kg/sb77n54ptRhcaBK/UywHVR2jXwGQ55+INv1WHCmkbHWjuT9kao7t/zsPrJVOYChknRVnnVdNTg1tvdsFLeH5Daw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hd41sw37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hd41sw37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A35C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783468113;
	bh=uVqA1h4/YbkIn6fDaxfzPVm73KyxIJO/5pSUVeY5qs8=;
	h=To:Subject:From:Date:From;
	b=Hd41sw37+uWzlzPlHaG29kAcUEk9nGY85dCHruM3V6HXxCQdbbZjyY8AqXDc+06B3
	 PXq0dGBBqoZPYo7klAlc+izXxUXT1p7SWRkKtQPN9LyREWz4wsk4IWmuBsxVjIUGKD
	 wSnoFyBBSCeKEzdBt4n8C6Y/N0gvD30laR88zJNFO+s4j7kD20agIFiDJZwCukpTHz
	 GvQWwmOKjJs0CaAtKwH9kYguC0JD33AN0tXrLL3HdKCuG/KBZDSlejrWrZR6e+fdAr
	 4lc8Db2kDMcJdi6GUTOUj2hJ50ZmUVYdm+TTQ9TGYddHMgYcbtG6elEeBE/AOtQKIB
	 /6ggXLtviY7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF04AC43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346811368.18423.4192482342646044051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f03c2de295fa3fa233736f866435d17f4c1fb58a393e81e27ca65f0ebb8aa65
Date: Tue, 07 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783468113
