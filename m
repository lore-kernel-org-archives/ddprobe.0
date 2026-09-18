Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484872E06E6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789695034; cv=none; b=iLaRitBroI1eorXOwlRfvrcXUAkoDjBemI5PzVHOve1Pgd1RSOqSaB58FfIYJPzp03oMn4s4g1q26t9e0+qZFJrkjhnCaFp4WK33zs920OGYMMvr2RkYDIsTMxN066Ze2aTpNoz/K5saeLCNpVVbBN6hergrzgPex9e5OOfjmAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789695034; c=relaxed/simple;
	bh=UfUV9FXTEobXxoJTdw4D5WRAw2FSOiW4aJm/OceSkJs=;
	h=To:Subject:From:Message-Id:Date; b=fGj9kClEBMhCZHitYX0vg+KsIU1XoHz5yK3jsNlEkHK4tKee/eSbkZGrT+7hWlcFJ1g+1mY30WrnQfX2aONwNyR3Q460r+q9oDFFVKN4Q9EnUqGoeRfJoOZM9BKoT3D1RglblqiMrOZ+PWLfqISi0JE5Y8cDCqoIlO/NbB18AVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYYf+B0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYYf+B0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3C7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789695033;
	bh=UfUV9FXTEobXxoJTdw4D5WRAw2FSOiW4aJm/OceSkJs=;
	h=To:Subject:From:Date:From;
	b=HYYf+B0jzUN9hDEA3rahA6LqibF4JAyIDQ03z7rS7AqmMMUeo1Pe0zDzZUYxTqjXG
	 yQMHHp0szGOHzeqyA0fesEfTq0cafdOLxT/pgTtfMkfuuwnomfsrPYcttit7PZMyQh
	 WmqJ+lM1IyQQt9GjVEtcFaKO8NagO4uNkLuDFvAh+kcgCutJGd9v+f4hlaQtjMKH1g
	 T/yGqn5TyasTyrxQ2U/J6ouItN0TlhGRga8nJ4KMDpEz5WsZ7lBj328FJyA6xxIY86
	 iFyiVWeaRZJZU9EequLp2uETtPd8nD2yy4aazig/ynLwAahs02cZME8wgqWvIRjDLe
	 9UMcJKlOf8W1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95AEC982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969503368.12492.12298367560993979566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d693ac7c4bec0315832ced6c6b440557bf2221b59c15fd5c2b90e9e1fa93b7a6
Date: Fri, 18 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789695033
