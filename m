Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480B8442FC0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784677714; cv=none; b=X4Wls8L1RynCMjNo5WAylEpaodMrg5QjlDvTdsKg5ezOO7s9ZCol593DQKh2FrHyUnJla2XS4YpmBX1uSRqh4Xe5TGWsgT/QU8pYTHBto8UE1Gf47AuNVBSIBM1sV2fRUSFK9qCQ8AJxTynZ3tyiXsXAdTGHEhHmB6QaGzpJ/oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784677714; c=relaxed/simple;
	bh=NZn7f4653E/ywUUVKzTQ9Zu8wk1QJ71kYMG9IO3k/pM=;
	h=To:Subject:From:Message-Id:Date; b=eqh+e/KqaaSfnBhg21S4L4tFlsXTdDN6zcvD9M6eOxuYvWXXC3hPFdxEtEnSasftmDqjuf7WVbZmuopCwxHXCK4HiAUslPsrpOUUF7ceeBzJp01zw23J3uQa7mDmrnNVArB4VpkL06UsdAbenzKjeyCAcg0GpEceug13/N9C7+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnQyDR2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnQyDR2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6273C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784677713;
	bh=NZn7f4653E/ywUUVKzTQ9Zu8wk1QJ71kYMG9IO3k/pM=;
	h=To:Subject:From:Date:From;
	b=PnQyDR2BLD+Sbaf+4mIC4VhdnMggk/KEqNEzwOJax457jo7lcwiUHIhyMGZo20HVC
	 e4dHGM07EUKFZMYPXojYRZs9MJ/UqgGiXn0rc9Y7Dm0FaQt52Cv3r7zsEzNe/j1P1A
	 0Qv1rUooSEUkvK8tT+WRbhktSyC9Fv4W/8PRRKRi7ZI4qJpYspSOy+Re4BkIa2dJlI
	 PWUcnmv9sGFRJurHVYsdU1r01DhwccRsoS/mKGlSvVgPFsLv2vsueO8jC+fdYnFFKr
	 +dJS+DXzjJSkcJqFE/LIKE8PoR7a8C8jOtAtiO5iEaG2Y6a2AHjqYAYlBgtsYqHRAo
	 OdkVFmjNdI42A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA752C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467771368.23207.3766642582275439759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604b645b382746aa27d0608ba883d6536f576346d0abd029ab759ec522a9e782
Date: Tue, 21 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784677713
