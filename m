Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1311C2C9D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766621634; cv=none; b=j6iYFAvJcE+8dDMsqZB+zRGWEph4srtNOhymQSsJ2ACllXA5pum4m4X4n2GQnGc8uxnrD1HUHh5k3sllmyPV377ND6aLv/+1/IQfBPHQ3GwDYw9PeYI2gjS5RhvWrPRq/RIGZ5tpRSajDomqGrioxsvcPK0bFo0AJlTM7Zy0G50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766621634; c=relaxed/simple;
	bh=o/cR3yjL/huMI1wvQLex5iCC3Beo0k9YEKhqgknjFIs=;
	h=To:Subject:From:Message-Id:Date; b=A8eUfAHiYdJjhAYgC7UMTDU28Fs+bvsYJ8fJ0AbuZfM0EODdpdubrlHeh6pKIWUWZcuJVxH6mVaksQ92QAlczEqmMLYOxGU9AQwrUmB9Y1bx3RKI0gCGSUOyL7p4kR/5k3Q19zp6Hw8TU6A/xfKXsiQiNt+yjj4MeOku/Edi/BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtTOtY6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtTOtY6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A750AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766621633;
	bh=o/cR3yjL/huMI1wvQLex5iCC3Beo0k9YEKhqgknjFIs=;
	h=To:Subject:From:Date:From;
	b=rtTOtY6rWxbM+7J/PEuKlYp3g7ZPa++PC/v+aHK0QFbnNzqSSXCpCHHWfc1dBT6Tn
	 8vrpqj7BVPVcRlfbD0VHKvXVhFurQ6P22KgwlMWi9c6ZWqK2XCJunT1EOeV3rwnfr5
	 EYY+OZyCnf3OsC/UoMSQtfoNm+JK3Ne1+PdiCF2FXP7tnpoKjeAxHC8rwF9c0dEZ1B
	 rrKuGA5KhmBKGjOrCpNrhbO92Fb0Y5/4xvNPGpFS6irw4YCZ7//+8aiKgkxAnOfFzb
	 cZy1Ernv9YdmbrNsaMU9vRwbwAuNJvI8LjnD5UJG4yLlMhUlH8wlI6DmcyWF5CTDZi
	 xS2vajqTfB3mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CEDE78498
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662163358.30066.4596060439932262247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423a5509381d5d31fc70e0b1ede30bf2f9ac80f8db7cee5c34f27320fdb4e3d3
Date: Thu, 25 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766621633
