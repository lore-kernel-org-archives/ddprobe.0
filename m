Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD0BEAC0
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715352143; cv=none; b=jue1v5L0sCOC6E+DhftkB+kT8Zlxty/jmei2VfYuHWDMZpkXVrVjRn4wXSmkSRDH5HuZx5O2caVlGO9v/XhsXh/otKSX3wv1asIZopr/sRGWXVAdjn1V9/9lLrZ4rRp/qKSEFfbpjWAKP1TmHf9PL308kP2A+/AvMCgPp3YIHNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715352143; c=relaxed/simple;
	bh=PTaFHEeaHrM4nP0zut/7cmVuneLmLv9/JBlwnH4J4LA=;
	h=To:Subject:From:Message-Id:Date; b=WsiGUoAgGAcIFJ7cweDhkNh/CfAcWEISJDyhwC/Vc/K5mmXtl1CC1Vd+yYtKM2ujzd9Wb/v/UuqOekWqLzolApGSomI7Im8XCM7QsCXXMNm6S/AKFCr+KQ8kxuLrK/H7y5S7vy0FCXZP31jiRGwESPHK9vpAfbwiwW54tkTIS88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbUboQga; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbUboQga"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A92C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715352142;
	bh=PTaFHEeaHrM4nP0zut/7cmVuneLmLv9/JBlwnH4J4LA=;
	h=To:Subject:From:Date:From;
	b=RbUboQga/3ayBQdo7GZDGouTiynlre2W76I7K5ZHxJZhFKEmiSIiRD4fr580Hue1f
	 af5u5QdiFQPuvU/iiWigB+eku1HkEgIQq6RB1WuipqiZyl8WvcfBgaxx0TbzbGjBoG
	 cr/y4TcwYR+y+U6GS9IAPKmOa8lUZ3lYcoLVS1h4BaKq74V1X69dLIbkjESIHpMziW
	 TfU6mla3S/1GOeNUO+bi9bEFIKh2CBXUum6gzCAH84ztGvz2Cb640KjkRIO+E18eSl
	 9t1Cmx7J+BNS68/DYVc389nO/njp0JoMH33GbinefWqqHEK20YtNld8G43to4KLcQF
	 kFzXXoGU4DL6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F15C25B5F
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535214279.12316.11350792263305713779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ced3b622d58080123374b2e692ae1b1b2088d5337d8eb007a069f1dc60b295
Date: Fri, 10 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715352142
