Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2BE198851
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744502396; cv=none; b=MEy0GYBVU/u242faPpHsG2uICzvs0CWzspWr+s0fqxiTs28BvO3gjkgG6vtbSB+zZ18sHAn5U/Bgo+FBbTo5Wg2FiqAr/PHzDTF28J7qYLhVOzyM7yMh7W3vb4Kzcg55l6L49DZso8A2znwMuiCiLvg33pcq3osTlPk/xSPjDjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744502396; c=relaxed/simple;
	bh=L23KnOLDmBlzpSPXkwWj7aLqamD8WlpRpt/ltgn8F7E=;
	h=To:Subject:From:Message-Id:Date; b=V41xRowl8kL+2GvWDtBuIDd9DyFOj0TjNZpseOoxs3uE2jLkCdZKEy4ZU1dc5+5M9YlEmClNfKXbOLUse5oa7hY5GGuMhB3g39iHuieafWJKyae0JqbC0O0nUlr4t7CekGNczDPKb0A5yhcSuVvao2P3i6Xn7wBakPPmGFPzwYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9TumV20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9TumV20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A46C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744502394;
	bh=L23KnOLDmBlzpSPXkwWj7aLqamD8WlpRpt/ltgn8F7E=;
	h=To:Subject:From:Date:From;
	b=p9TumV20t91xJwG79VInQJDWbejyyyqliwB6V6MrTaXKnf5xjZfkebPdJpBlSaWYo
	 A0z6hIXzCI2brZBKe+tTblhpgJwY65CvZB+wqkHTZMqpORYR9E3aE6rzK/Md8FtySo
	 Yk9OwivqVrJvYdw5tZt8amGDCTSump+tKoGCnP0IiCw/xUCETcLMfn8p1bDEDiHZV6
	 T8GwYu/i8VeXc+iyNW/EEOv3BpZN5AzGfZwf9qO9/8lfPYJstFiT9TQDnMKmeUyYBv
	 HoImsQSzmtTcpSHg8Y8aIcfOQ+QGQwUiczY7Rc3RH9lObBctUlPOfzTcppEZ/S7uZX
	 Kow7nB0DAmnvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BF5C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450239357.25324.1797142099933020470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835c88f9c5d1e6d2ed155321ec356a1df864df9d1400213366a77b4b0fbd3dd9
Date: Sat, 12 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744502393
