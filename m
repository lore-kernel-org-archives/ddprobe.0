Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F782D12F3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779562954; cv=none; b=JUHqvSwhu0BpJIpOIJk15azJZIUJ+4mzq0A5ZIMp+ci/dcNXi8eQz++zjKurw13MZpT4ZOgyUFEHhme+gQvIoQiZx0ZbaeVSQUqmuFEKsQosc9UW1Xk5KDxqO1UadiZ4smlricIgdB9Wrqs+2WLc9YEalZquxlNP08Pbp4tvQCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779562954; c=relaxed/simple;
	bh=4d1sIh11QxHBbLg6JI0t/N/SG6w+OL0g9wzjkDWno3Q=;
	h=To:Subject:From:Message-Id:Date; b=YNSygJAiqVGDtHTiMFshdLDhhSnyvC/ps+PMDDJqf/J/LSDcYqcAdEpja1XZZ7EYi223U/DdvEolcgyifiCxUUo8kPUAkUw45FCtSMHWKuXhPFi44JeAhbThVR3MjWyBOzssLYtqtzpyx0afX6yCw/NkQHXWcyG6S2oWmwIPQbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKmC7k6p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKmC7k6p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C433EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779562953;
	bh=4d1sIh11QxHBbLg6JI0t/N/SG6w+OL0g9wzjkDWno3Q=;
	h=To:Subject:From:Date:From;
	b=DKmC7k6pvkE5QwmYpAv7widPxtXy6pKpiaS6MrITsn4Vfg0R4kTRPBWVLQCIBKiw6
	 WOJg/CHGeIciUuWb0d4pKkpsLooCHxZT6YWO0SoWUo0ZJHnVSOUWOw9hxmJbayshZb
	 q07p+zSm91PWBIxH52+fZrR6E9aPXC0pun03dpjLUK65dScVQTLIOXz50eDtmxzVwf
	 jSSNGK+DCSMUOci+qWL0qEcFxBsiYzDIcvTy4anNE1FZU37VCCmU2xQXhG4iSkpbzZ
	 5QKzzcdPa9ZOTwWOP106n/CKHQdM7/NrJXKshqUP54YeRzOYHT1ZmzfR5JYnDVA0AM
	 ilV7vVd4ali1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA2DCD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956295368.30362.12048180664980308878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1006359edd1b5f0054a04540488cb7a236a05be6d9d080f0088bc6d67b1f4d9
Date: Sat, 23 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779562953
