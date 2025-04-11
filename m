Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440512367B4
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744375794; cv=none; b=cXJ2munbHaE/RPnMMcRjPhhOs7bzGUZqGDz6Twv3qu+56PYvIhLWQrxJ5NwXMBGj6ww1AAZN2yhT+/lB3GwXRISxUjIYTZ17dVyTYJN8eeopuG0wDtrckL8elCkIy26vYWDGWnFvUpxcIXwtHYLNLfsXyl5xz/cuiRxNQqyd3xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744375794; c=relaxed/simple;
	bh=RBgAWq7lYaM7dqCi4St0FI0rfo7szc+sO4kvZLERiZo=;
	h=To:Subject:From:Message-Id:Date; b=cekQ8PR7eHObueWwMTMnDBKvZGt3N7fJJupyrBJL5wHpEXkmAvtzrrE+epr9N0oHRZYnzOHIVqRetCEeFUD8EMu0GKgpd2KJYLqw3c+qtNko1+JRMsmI9FyRjFLJbr8uQ4bghYGyyZ2VtyFFVcpS4IIZ/AODsWPrK09nDSalTZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgYWhCAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgYWhCAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83CBC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744375793;
	bh=RBgAWq7lYaM7dqCi4St0FI0rfo7szc+sO4kvZLERiZo=;
	h=To:Subject:From:Date:From;
	b=CgYWhCAfOFN1OxshwJHACWXVKGSF3dZIW9k5+i3wspiozuzxqV7N/aGFI7iKytIsX
	 XWV24+VH5FMbyIjq6LZxYyhur5J4ZBmQ6sWqTP/0SqtcQJa82c0euKNBkOLypPJ46K
	 FLMyRoHe/Ug0lcH+or0V/2ZY7b3mWGdgv/ejKjHFCrsW5M6vKuGlTWRPEZHMDOLEhe
	 OlrWEwKRHKGQrQ9uNl3Nchy9M31RQeTOTRAajPeN5VmEXFjP8CslT0HML56IKnfAVT
	 9vhLGke0BSkK8P4sEdeBMkslFvmB/COJbvH8GOQOWWeuIsANWR+UexMQrOhygdS+ju
	 0AnSG4kxWDDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966DBC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437579360.6899.15708637087891544254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3c3a6ee35512de56147be53afd44090d56d58b09b33f5b10d45887c01a515c1
Date: Fri, 11 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744375793
