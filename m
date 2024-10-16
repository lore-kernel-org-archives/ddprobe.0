Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19145207209
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729077954; cv=none; b=pgPZ9RgEA+7bxGruLrvwAivilRp1VLikNxlvg5zEyjhmKQZjKpczHsienM3EqtIBhRECyzlh0HnxSkBTQ3TtDC+SvR/ClBVXeRaAaBcQ3wRKJMQYHuhlVY89kUoYTiU3lr7meyK/SZ+uoGH9jp+IuuXPijzQZAiU58c8FpYNXac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729077954; c=relaxed/simple;
	bh=TGTuz5/NR1G7RvzsmLqW4bIuCrym1NtSarpXUFsby50=;
	h=To:Subject:From:Message-Id:Date; b=rgvYDwepAUXd4VIVxBokjeIs2CHpBda7o9JGNDyXnETaYlIwTYVgCwrjHLzwxOT3609MZE2PnhaG2F7UxvtAHmVQnDHb5rGltDekSLJV1JiodK1r56gndyv+zvvrVr7oig5B1F/NNZhmAAf5viA6tY6Q27NKeacAd45LKhDzPqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCIE8xXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCIE8xXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8C4C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729077953;
	bh=TGTuz5/NR1G7RvzsmLqW4bIuCrym1NtSarpXUFsby50=;
	h=To:Subject:From:Date:From;
	b=aCIE8xXZiFKohnGsdrKNTiWjrPxwDThrVxJtWzRso5bkNqU4d5bs2fqzfWPA+kS90
	 EXeVCfB6UfkLDG7LTBvEwhAClWJlaot6npzzCrnx5PrwDNatyknyJuxR+aF6HZW52k
	 ggzxMWdxv8Xk96xsGLlM4m9qPUdoZNv7sfAvppxkMn6taUHENReEzU0YpeZ3aNYA7j
	 3T6mhGZYjoLe3Gdzj8Gov7tn5aZE/EDw4q5AZ+ret+41dn97m+1WMG62x3HrmKu5+K
	 N2+nlVrTNQ8uU1Nofxx0ialagUXckpNhU3lXWGt/Yxxo7r7M5xv1Fgx9YsgEQKS4w+
	 OIc9JI74cUQtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F17CD1AD48
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172907795357.16584.17840244433987745849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0189cdaef772514f6cfebadabc6e26b419c354fc65f119d11394aebc0ce4bb49
Date: Wed, 16 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729077953
