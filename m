Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67C9219F6
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705508297; cv=none; b=H2Gk3de/OkDxQ8/KXfKiJQOzK882KavkgirRUoczA0RhEIg3yyDPjcF9chm5CrpyjAfAqq56G63ZUBwR03o7rH+X1bxo6CLJAeJp6HAPiAINQHFYpeiwj+sY/RWmiLfMtLQ1W4bWfqaF2gOjdYWCX0fcUYrLiaMsSHzIuV6uT1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705508297; c=relaxed/simple;
	bh=VogA8AUC2YJtlUgk89kIPY8SmrRtFriDZZxyY6QS27M=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=MP/KjG28fFCOXC0x0ABfzCkJTTZ4k4rEBECcdQDuITTENvCKYpJEWA+RHDB1aGW3KzJy+FjPvhcYYuBKw0OUs1I7z/MltEljI2ftMPpN7fYOJHUaWyYfffP+cTa2KRp5FocXy+mJLJya2IQz3hDA0Jb3Dvt7N6JMHJwZw3EwGR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q84atP/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q84atP/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 771E0C433F1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705508296;
	bh=VogA8AUC2YJtlUgk89kIPY8SmrRtFriDZZxyY6QS27M=;
	h=To:Subject:From:Date:From;
	b=q84atP/G4SzALFFor+uZPIUzDxX4vcbmHzMkTkLGwUokPypsTokUuCYqTanObhTqV
	 dHDifbMBFyRTU4gYFe38+ST+QfpVY2U4S1AAzz5kLN9EwZOJV/xU/0SrD5gdBudh/2
	 PjYNDqwm0tFgNGgrzT44wD/5NuocBn1Rhtfgh4jyJQjFL/vT1Ws2AjHfEU1ETMvI1u
	 Vv9E3Ls8kvgrzxUZC9Rh4oTcAH+JLoieLluzSpjD7SpNed2cc1I8UEJdYyqAV15s6C
	 2s36KnV4SR+PaFB5/S8n+58frUdd4zJ7f75MCw+4h93Ipk9EUU2HObZa9jD3ZjP/4J
	 BrNiymJ5buorQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F582C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170550829638.385.7269946538637239154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c034571f9ee3a0c7c5856e14d591ecbfb68c8a390c6186768caea2320af0c0
Date: Wed, 17 Jan 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705508296
