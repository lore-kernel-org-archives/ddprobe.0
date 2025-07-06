Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E9A1E86E
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751797194; cv=none; b=UdcCYFDB6jiIRL2Zjp4XHyCxot9ZeW7IFdyDALP8rvaVETX5/pi+wB08KQCQuwk2kKjJpaplYHqxvrOxIaR/4iyr+3e7XV/6LeJihl7Xw4waPdbjaVovAJ8epF9lbTTGQG9KLsQr/2NVAX6BTy7EVkgw7RMLN+srxuUfYCMoMDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751797194; c=relaxed/simple;
	bh=D7LHoAVhLuZqn3RMnJeZ65P+wDB2AIENTXk12y+EA2w=;
	h=To:Subject:From:Message-Id:Date; b=elIIg3h5vB6+UxXlmUPVhT4aUii+N+GcV4teYkX2pJ1tgXo+ug79ovT8UAMvRFqwv3t31ByxxpbC6WJQnYkkaxNjjO9cM3yquD2WQMow3y9Iq/m3BpvTkEwy/GTn8DyrvAZEHSXTqjUJXDBBq7DEpgZWLe+8nRjq/VozlVT56WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EatgozS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EatgozS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D22C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751797193;
	bh=D7LHoAVhLuZqn3RMnJeZ65P+wDB2AIENTXk12y+EA2w=;
	h=To:Subject:From:Date:From;
	b=EatgozS9jn4MOcWfjQhfnhcqIZz8X95L2jpoP7CcM4EEoOnxiPlYW/L485rwPfWXD
	 0Mer0k4GNrJKnaLAqChl2XXacb5eNWU117aTvJeu2RPwbqw26MQjNTro5F/02JUW/b
	 JJvYFS1zB3VX84sTYpjs+zdTKlxx0udr4hgjOQmXnuX0r2bsMxfMGLE1nIJ8jJAjgJ
	 loLHngHC14514xmrezezd2zmrjxNmo5YlAiW/rvdJbX+IeZWvEsPhsT92ydS1uv0FN
	 N/ur7WnZM0QPNUKF69yXWiArGlxiP1B+Ft+EOdweypPZiuaFFm6bANxfVz/G1vUhPd
	 nrUAphheNlMhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110BC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179719357.21738.805527774414566600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9579d17b031539c2b7553f78d494c18f3eeaaaa6dd22a0e3285ea3cf0448ad35
Date: Sun, 06 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751797193
