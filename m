Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E0A1DDA24
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753823394; cv=none; b=rujLyjdciGP93eWCjYJrZaIme5GOdTiR6Cqdikj3MSlVxrwSsUeHXE/omEn90kfFOXdeg0qALaGvnV5exrJYBmuZo85DLEh3r1t5lCHVJCTH58xCBFTpAZROMDLPxCTjY5yc7YeETtwIq4O3E4EcStAhPjUWoypws84rQxEH3Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753823394; c=relaxed/simple;
	bh=7C3rG9D2fzgPi86Fx7AfFwxjrhex7iUGEYvp/BX8qeU=;
	h=To:Subject:From:Message-Id:Date; b=T8x4Vtn6zKz/n1JsxDqD1lMt4+3QOAXJnSNYQZJR4BKYQwxjyAppkBmVOYAWOTdWtzwGa2kqQQuSyW5DK4G89AnRKcGtTU6FnbikItXj6y4HYRZaiWgS3N/rz20vkXRWd10HifQ8eyTKDZikbfJajFQyCmPx8Q7KGJGEz0EI8FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChfNpeUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChfNpeUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD73C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753823393;
	bh=7C3rG9D2fzgPi86Fx7AfFwxjrhex7iUGEYvp/BX8qeU=;
	h=To:Subject:From:Date:From;
	b=ChfNpeUoliHI/AZOSzbOriHtEj9YZyaCL3Zn7lv/VCj60qWnbtYhV9i+W1iB1gTIT
	 h4IdOiT7AoijwEpHxbv5YK5VyHV3vzI7JRPc/+Ck5TViofIyhYvUvlEX35oJ5oIuqL
	 L5pdou7j0LplEuwrM+f26X3NIXaTETKrDVRNXunDGWJaIKdVgWWUDVW1x91MMLXCiu
	 JeL76r3TBzvdtUdmKPKgD0Vhg6tHW8N8Qg71leMGNb8un7Gbp/ESXt8jsYjqhP4k7A
	 6K31rQKsXdybs1VcVdOZ0oJJG1kpa4znBbxe3qVgXea5Xz2X2qI1dZanE+K1V7x2DH
	 Ne0Co+TQ8Tj9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902CBC87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382339358.3056.9744939747404020767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a6ac107e7fe90f767a3c224f39d361c3712b1c5447a7debee566c889b79aa9
Date: Tue, 29 Jul 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753823393
