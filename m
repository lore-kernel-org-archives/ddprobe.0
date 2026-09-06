Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3369778F4A
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788667834; cv=none; b=Frx8yf36uXrSjkuU5v8oJAJf5bPNHHQadBvjux4/UoYZub0hvKZfK2ndR8e50KTUK0rBajCejIRgVVOtlrAoEsG+vxvT4yURmixt0vKjsp2PT8ayUzefyNvJ1/G1auz8fABk7TllaGQKMdr7XDdAoa7YeYstoNEX8jltOBjKkuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788667834; c=relaxed/simple;
	bh=KyqjiqRzKfNojOSUDNkw1vONwmIwUEUGCS6PLpAsuJ8=;
	h=To:Subject:From:Message-Id:Date; b=CbJR6gzH8/qvarUBxLUZ7/QdZC0FVyqMNjl1sNtCYA400b8W5TRARnQuH9Rll05gM/c5lCMo3+tRs2NFnpSRPWpu2I/AadOiSaO/gjOtIKu6Fpq8h+OZKRVQc4dD4pM/xa75ZngXqNtO47zAswhUpN77JI2qAHV3LIi4Nd6dvUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XA4sMuC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XA4sMuC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62F5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788667833;
	bh=KyqjiqRzKfNojOSUDNkw1vONwmIwUEUGCS6PLpAsuJ8=;
	h=To:Subject:From:Date:From;
	b=XA4sMuC4Cyqk8bKb3mVgdf1nIEJRPkCm6Bcj8CTMYreYVwMP1duX8PRhi65bMv8eK
	 v/ngWoERG8j3xubOYH4Qdy1jUAgdMagqBdhGtGrwgTVwpQOq+0r45fuowFUul/YoIe
	 3yLh5qsWVK0hr+1nRQcn4V92FUpNpscIzmSvHWphXfVhwmnvRnAnqoM//J81wMJCTw
	 FhpejBgVpVJYGqIffbWYwhvCXy4LizqhO2HDD5nhuaagUwNNAWxkZJhaNbhUNuJl5r
	 i2tQPklSrjZal9fbOS04/tJwlldcWVm0ExbkFErsN5tVrVJi96ZRzdUw8EeB+Fk745
	 DUgjCJAj5V2EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA20C79F8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866783369.5234.10748366044539470739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2814f0c8531148770d4271d975127f508080079891ce52a4c0a3adfc3e04f9e9
Date: Sun, 06 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788667833
