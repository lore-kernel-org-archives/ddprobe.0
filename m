Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256642C324C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749091194; cv=none; b=HQl+5F1oJZ6ZUAOux17KeDSvqfj7LP2EQEYdfDw56TjLX6SYTtD0ZT2Y1WVQ43fCE9E5JOAaFaT8XCvRqhQ25PGPTcjIfedBcCvcpkNgZ3xGiiRfXUUrQBFLD439qL+D+tVy9IgK5gf2CxtEAHjAOhYpkP/hjY8F2AHykLbFLK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749091194; c=relaxed/simple;
	bh=H5T44Bek9WNoRpQTN4Dpe1RFmu4VRnlyzCjC+WXgNCc=;
	h=To:Subject:From:Message-Id:Date; b=rxLUwjCeJTSijsreMzyvIF84jHuTo4WYf1nR1M3BsNkysg/tbPDLJQzINPuct3Gh1ZZSUzT/iaDuSbhASEm9Bcr6UMogRP4ZtvJdXwvx69rWwiaPvlK3TguUHWhbfEFvnyMbkEZ/0QD2jROfsxKIO/3eidjrkqp10M7oC/GM0mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI7VbUOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI7VbUOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0997C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749091193;
	bh=H5T44Bek9WNoRpQTN4Dpe1RFmu4VRnlyzCjC+WXgNCc=;
	h=To:Subject:From:Date:From;
	b=PI7VbUOPHOW0EAzA9MUXy1/NqBzWlvglgyJoHVAN7YpghRz9gAKO2yOnmH8U9m3nL
	 e1EqhcY415t8hpNLoiKFRMqgYVQJCSsiaOYWv9hkrwas0URI4IgXKRz5/zDUWkPESE
	 eksAVHGsSFNZYRr6VfndMI3gtmPqW2rObAIC+E8lYrOoMNpv8nL7a9h/zstrNOSwG9
	 85EvMXHxA6o8r/6ppxkHk/7Wyvsj1QXkdmRvFZc1DoB+tBfSzA8RgZSlrb9qYVrCVv
	 Emsq6PHrwSDg+NADGqGvghgAOfaJwOY5Sa19rvQQ6JY6W/sH6HGYiUwqWIzFyeTjUI
	 kJg1xL94ygFIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008FC5B549
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909119358.8874.2646216428546208851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6678d3e7f063502633747253fcfa8ee4eee2e6be945d7cc7049c9319c1ee87
Date: Thu, 05 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749091193
