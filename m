Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ABD22B594
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752093594; cv=none; b=J5VFNHwZFSREHZUDst3aWwQZUOCy3MmygAB/ZG3wVjqEjcRTzxcaplcz7bt26fqP9GW07jsIDR8pBB+HQTeeR5DO5mb2ecRWimkuZO6zmnlIEGgrVN8Ay5KQV2GfzpDWUoXgRfJxVYEa8VgyI/n858XXp/Hlamk3WcLkq8qkZ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752093594; c=relaxed/simple;
	bh=SNRX9XEg8lCHDt5RLG7e3GJTZ5qvGfBOwFTYwuuU8Vk=;
	h=To:Subject:From:Message-Id:Date; b=Q93g7znU7p7sltDM+HXZFzQNx+UPreoeDMaml9oT1gaYf3HZ8SHsTVjenyBMHeHc3mdAPUf9nFqJSil6P1vs6i3lfQfVlS9PkW/lIXdq3oTzs2ty9pieIP8WKkHZ0MvOvCROiyKJv1DhwWsP69YFB42/M8jjACmJ27LFxEn6IEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGOKcw4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGOKcw4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3787C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752093593;
	bh=SNRX9XEg8lCHDt5RLG7e3GJTZ5qvGfBOwFTYwuuU8Vk=;
	h=To:Subject:From:Date:From;
	b=YGOKcw4ukyCHSi0TWwx/JZrnGdaaYeWrmwns53OWMLB2Ov0HEt09HxKar9TFp2qbK
	 Nwn/4D3gdVsEPsA7zh/VZqbYHJ9xzOyC5qxfXmMj0chZTTjHzB4IxQZ0fD5+A4DyxG
	 uVTHcd60ukoodZlYTWqf1YQV48Lvbq6N3HwSYrPENQcwGVGw/LkhI7iocxFuD1rU1P
	 OXMiXo7tAMXYeE7BYiTFUTXXJUF71Q9CY4cpelE28sveK7oRvlA/KT8WcdOEMeNUSc
	 j9tlmoPyu2ItBiWY7jWKki/YaSOrD9MIVpReLbJ71XJcANZtcVHtdyWxKZUhDM4VyA
	 2DhgyQh5sf8qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247BC83F14
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209359357.8211.1126219823865131553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f4a0bb8c10b04e2a5eb7fa6056ad34164cc7e312f92c538f7a91b0f44df66d
Date: Wed, 09 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752093593
