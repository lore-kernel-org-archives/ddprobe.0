Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541BE3806C1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781256994; cv=none; b=Nk3gWgungj7IUx7lkZUqrjcWl+VrDTiRQbKGrn5WmV0sGn6YAYIWqCY1oNJO1y0baxy6Ds0aIKhmXtP4TPR4Tp4G0toFsXZCPH52IWtVYwELkyyBk465oUkWH6EcEnYLF47VQbXtedM/Bs+j6/P3Xa+hWYIch5gpVEjav9pDCaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781256994; c=relaxed/simple;
	bh=nR3G6HS5+lkLSJRvbKTattJpT5eh80DNrLswmlQwqJQ=;
	h=To:Subject:From:Message-Id:Date; b=lA8TyxJycj+MD2USJiKyIivSWO5ndwJmOZiKMKFjL9IZ7Q5FxxlRATmFMGSRDQcsGP7KP0RmdFmRAXgeSepWUlvDlenDEtlwm+S/C5Y05ucbwG8YFnIS4Z4bWctFBZRaorf/1gxDRpU3cUqmdunbulrejgbeWU8SU13R18+Sk5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM0cKM4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM0cKM4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF50C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781256993;
	bh=nR3G6HS5+lkLSJRvbKTattJpT5eh80DNrLswmlQwqJQ=;
	h=To:Subject:From:Date:From;
	b=eM0cKM4wTvgnhFV3lioXW8Dv3IucEScxoLxJi0Msz/VoxEiR/AwHRUuizLWlDMMSO
	 4+mh2IanZAHkRoWNNBBawb8WJ1JNzFOF6KSQDScV6rKjLyNihVzSHeDsZZJ+y4kvgG
	 4/k4Ze8RmQsZlpFzet5BztcDKYL5W3hR7/taUtwVXLYbFQfACPAcE4TWxztM9K3nrK
	 eJ/sMs0QemQtq45IqbYMXa4C5jFWcGMXCZ9RsTTOqoI09l6QGR0Jwfwtu/T7znUedx
	 eVHcbYkBB0xoXXAClNOUJ6RHeQhJr9WulR3w+HdR+k/aS+rR1w2Gd9GKri1tU4idv1
	 aLuufwKJvQtZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F0DCD4F2C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125699372.2561.1057236299377299971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ea46540b69d6435bd5acb80c3e9d6ca91c15fcd9327cf7e1d6b093615d215d
Date: Fri, 12 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781256993
