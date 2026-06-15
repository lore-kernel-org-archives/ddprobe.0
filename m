Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D34238C0A
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781515594; cv=none; b=Y60dMwmsguDpJ1R0oVrrT94lw6RrfeK2timsFezt6Qr5p+u8EMX6Oyoopo5IXIb/hWVr5OwHjMv4HpeIa2Ea3I/H/3UJm2dWO1x+nbLBnMngBl69ddVkfhos6RYRCZKsZu7BT+Lm8rYSmWFkPn8ZUtd6kgXMv+7IiO+t0lk2HB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781515594; c=relaxed/simple;
	bh=1qVkmI2qmg2ButxTcdcFOFmpR+QNvGdfSw0iDpxf0aM=;
	h=To:Subject:From:Message-Id:Date; b=WZCA4PGrbgyHcoL1SFF/RlYmta5/EYjViFGyrAi+J6JID8F5KgelP0DJfcNQ8e2qgifT9GkECvGgmO3WjM5jq28BpmrLzm52Lw+1Zegp0FUMbB12/BsXCTFhwyIgPTtxFviTfDO8qGYMMhZnnI7fJkD2RcKXy0tmfRDwA6gZS3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfy7aEPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfy7aEPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C674BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781515593;
	bh=1qVkmI2qmg2ButxTcdcFOFmpR+QNvGdfSw0iDpxf0aM=;
	h=To:Subject:From:Date:From;
	b=kfy7aEPpK63MLP19PCcwKby5JDL4uZ/YYB8X3tsiMSxwPebh7Aw63R0iYxAW3TkAl
	 8GG+laxOQzIp9JWzmB7/09Pp/UodhPT0QDLFghG+FFH8u4Mwf5A69Gm/OQ3J5C96r0
	 7Y/MIHRwYt1kVM7GifWgG38/PTe5SuLeJXFXpE4yKyBYjqgP+T+p4fjeasJurL287i
	 0DhDUAVRx2tRpB+CFEMB60n9r72EFmKcdIHO087hBeYS1B5NlKXkAMiexvjCVfENJO
	 oewzY6m+sN9uMNhu0gE8a+zRXJqpVpuNosB+IlRLxcDvtqPdj/BbsUcz7QTOxm4Qsw
	 zGPD6xscj27PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F4CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 09:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151559369.29673.5379076680006184634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de430585e88db65f0805bc2f585b05a5572cf80bb951359549eeb9eb7545570
Date: Mon, 15 Jun 2026 09:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781515593
