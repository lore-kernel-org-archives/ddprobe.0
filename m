Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3916C211A36
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739446734; cv=none; b=MxWtmLyR10dyOjCz6kDohXnQtE/ZzzpVotaKufVsLArtGtcd+X2753iPjZ8RVqX+wU7nr8rtYXRaKanVlT7CXlw+eGi/4186i2RYt2rLezErgd1bDwMN+2a1tSObQvvHQwEkbvqc2SpNVLS5tRw8F6quzfMzDm/cj3rbwvQX+O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739446734; c=relaxed/simple;
	bh=i5BPPRZ7IGppN2ILUJhtXJ1TbdYdwUNFVZH79TwWRR8=;
	h=To:Subject:From:Message-Id:Date; b=Ga4qceW0BiXl3Erp+ECmaYJVGYz6t37GYyGWLuKQ/qDhRjopN9ZfN7hhoaU1PRtT6Y8tiHHsa68XVNWGlZalHG+i9vTHCxD3i2HJxHx03ZPY0sNI7WL+JeyXHWquys2fI+YcRGGKzVPfIqAg8p8XMkfEmhNVURellYX44eolLEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndHPzfux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndHPzfux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACE4C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739446733;
	bh=i5BPPRZ7IGppN2ILUJhtXJ1TbdYdwUNFVZH79TwWRR8=;
	h=To:Subject:From:Date:From;
	b=ndHPzfuxvXiPRlu1H+fn5BB5esitERDzurFp9nqTHB4sbXGHbTjTBqNK0lT3Uz5vr
	 4C2XTPE+1jW2POgeeGN2/LFWJS+0EY4Pf26ma4nSzWC6GTFasWwBPHxCVndsWaQcH9
	 AaqHvqfeDCudjGlXSmL0cUlOcwOv6+Fz7brZwzJceeZcFiew7f89yEVvDDrY9liNgq
	 pBbaNwB7SRF7QZLXqGV6rUbyYXMUtWpO+ce3jyrgNSPA/E3CpdW/lK7dZH3wNhpCy2
	 znSxAdICyqvUeZDDgtr0Uu7wabSzOTE1N77yUWOZEGHY+VelfSpBeuRLLsK9YRKji/
	 BQYMc/CE8Zp+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9751CC0219D
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944673358.14984.4550693598137205292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f495a22a66d36a6c3421f45c516ab96771e07399b0736a25d56ec248828e846
Date: Thu, 13 Feb 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739446733
