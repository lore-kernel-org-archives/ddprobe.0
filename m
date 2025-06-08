Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEC01DED4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749379194; cv=none; b=ZxmsgWNeksDb/Fxt1TefkTMbiBbWxqtjMapzHz8Y4jTACab90Y423w2CvCaBYQGOaYgoGT6ROeE4i7kazqxWQCwwEeWRGR7TgXW5MhaNgKp6qYovZz4H2ac61IfKYXrOZbbv236P9SaMFGphscSXqPeq5T1vDVFc6BeRatKsGms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749379194; c=relaxed/simple;
	bh=GQowhYjxm7cQSAYSOTZPhZX9eaVxtcTi1XIAhwhpzGA=;
	h=To:Subject:From:Message-Id:Date; b=JUU6t4QpBdQVwbEgI4mL2gkdVr/Eqq0B1WBfdYyaYq00ZqdaZw1g0UU5K+sUmprs3UunFnyks9WEvZxIWw9MqzYuhmlkUr484Ni+aAZwCFDxpjiJdpIJt7Bnv5Vtz07MezzawClfrXNi1djz/oNYrbN2X57/ZErCI2PWku7XuVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmJlQYCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmJlQYCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A653BC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749379193;
	bh=GQowhYjxm7cQSAYSOTZPhZX9eaVxtcTi1XIAhwhpzGA=;
	h=To:Subject:From:Date:From;
	b=SmJlQYCb5AGALkrmd6esa7YIUbcdf78ks02zG/+gIFxUzp6bs6GivGpkjliQOvvRi
	 JKRjeBgfvhyszPHShhMMAWpl/M5gThU7MvVOT9rltQDIFoRIXncftD50uuazEan3M2
	 HypA9IgcTJTcds6tDz0XtKkm3Wed+mNsM3qkCbNI0LOGHZLV4DbCzp8WrD5B5eHAju
	 L2WrDwBukf+svx/WcdH8c5hfH09oJsJsvfq800DqHvC90yNqfSxAWQSCHX0F5wBOsh
	 2DOuJe7QOPTBojugDy35Ri7q9tFeXNHHIEPpNHNqU19zpibhRRsFQpc3kYP4ziNCcx
	 lq47zf1ZlVLow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91593C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174937919357.737.5530782595170764669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47016e541cd36e09115a183a2fce0997ee92354549668ba8302073ef58bce9ab
Date: Sun, 08 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749379193
