Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A5184E1C
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749089996; cv=none; b=IBXLmshvtN80fNNnvXFpEcAT06esUTIUlQhQK7SxmqmpyUMkDWgqXaFPs4WtpdQPAXwj3991w/8N+hpe0ZTW9cC61+7FFSvsDh7bG5wmkILInU6jlI7U/p0lhiKFCJuor5E8ecIohuu/y8J6QQJVZNYGHDW/S5uteeWphXBRLu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749089996; c=relaxed/simple;
	bh=Kx7RkDnfaaNPk2vobhyY5Tvft+6Zfg4FFFIGhcPmDjo=;
	h=To:Subject:From:Message-Id:Date; b=Cr0n5jVywBwJ7CcEwCfZVPfZJevo3pJ6WOCdx0e1w4T8USJMj8NEJKXo0Min4Udqg5//BVxoQd6eGuuobWtPrADQs7/1lmi/g9BibsgJYK++JYlmpUfWwXib/j6f3HvTjXmIG7ephVEhxiPiz9nIaWUGW4eIaw1gWYv89ZWfFWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5iq+WnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5iq+WnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB5CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749089994;
	bh=Kx7RkDnfaaNPk2vobhyY5Tvft+6Zfg4FFFIGhcPmDjo=;
	h=To:Subject:From:Date:From;
	b=N5iq+WnITOa4mk/HJeYfVPR8bOpLV3FBv16COxLverjnyjzw8j9perVwl/J2fz810
	 LE+uWATprQONDZ0PzK3k9R291Yojg/R9xly8Y7D2PkGPbtNj9jy04dtBW3ozQ63tug
	 R2aqkPjKbUWmW7ZVUUxL+n6UaE+7GrtDQHpHXCgnKgXPWPvE3rZ9DC9DCfK2VgpG+4
	 zf3gYdhkHAN7VtA+iUehJuDWHsTwvw96G9tuSZ06thZbBU7Pe8UoQ/QmYbqfm55OHB
	 kwQpVunu5hX7zeYMwty5vp8K5/IXCGvQ5r3/AlyWajeyHlv2FVmWVDm8FlPRIEllLh
	 I3dTEGtX946ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F25BC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174908999357.21366.14571762742186763987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a0a4190c61af3f7ea3de7b0fee6c878b89dca075b64e409a50c0aa788e6f79
Date: Thu, 05 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749089993
