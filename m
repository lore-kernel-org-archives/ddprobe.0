Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324AC1547CC
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752175794; cv=none; b=EU2niZX4wOwP65FnX/2pww2oudn4SjBHjbQ0Q8jC+r+NxfzHHsgp/u0XARuwEF5Jd4QqgzmRWKd/HM1XbffBfk70TkNCu8xxAnA5dYfIdSdY4SPMLDoOlG0jMP/1vLXwRie4ei7szV6uXe6Yjo+hdb5S+9RfwvyxpF5IX1e2n8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752175794; c=relaxed/simple;
	bh=BBzQrz0mhp4qQOnMSj4G+TGuBgYxGLeop2ruhMU6Ius=;
	h=To:Subject:From:Message-Id:Date; b=mzD6m6FXmS4uppwqwFonUD3pEzDPH7yTMAURGScEvufg1NEA5emDM4/e4zfx9JQ5tTOQ9ZEwulFumsN1T038dx3Jn20EvCvHmS/5w74KnkWQa7/GiKwCfsEpYQAOdbb+LdZBn9LY6nYEV5aMcKfOWElnLtCqFm4PO1SCZssVCpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImI0lyP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImI0lyP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A3BC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752175793;
	bh=BBzQrz0mhp4qQOnMSj4G+TGuBgYxGLeop2ruhMU6Ius=;
	h=To:Subject:From:Date:From;
	b=ImI0lyP0/Bxc5a3ims2ODYAYf1XAMtkd4XAtXhv8YctzOXDcNu67lvC5FRRLFOgVB
	 DNJIrSDOJuJCShJkdeEYAfk0G3CV9ETzgfIrbGnKravllgtjg9NIxmJfnwX0+UEnO4
	 OBmkyhuOLgVmBuPNaIUOsKol8jOl8pB7qoVHp4BxDUJbfHdgT1BYRGLt26n6FTCnTl
	 yjrN3YKErk8TJFMRShHBcmetNvS8IjAb7esCBOc3Y+mTiGjEeAQU8kOlCt+nEOKFtq
	 XN8+xjqfj4EyhBd7MBmxSn10CDoF51DyKjUebHnmgN7CLNpO8+QJXswelksrG8sqbx
	 k2KqkJGNnAUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B17C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175217579358.24823.12200432433569410555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f37e7b69a5e6a2e64ec3d0386f530ba8864e6e6f0cce0891d47b1c1d440eda
Date: Thu, 10 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752175793
