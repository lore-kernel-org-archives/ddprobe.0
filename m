Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D0D1CF93
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724016954; cv=none; b=dKfTB453masmoJMMcGJB9YQabFkQdI8cdPIzCroxzQF4IbbFQwweBpdq660iP3XWI17k4LZ/C6oSkn1b7Na/EMzz+bhCatHX5rgWrbIzkhnX+W1asC/JoO/a+O2W5qkDzgfYcCSLZ3qqOVeji5NSXG+ZJvBECWXlevRagHsMWRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724016954; c=relaxed/simple;
	bh=xoqTVPqbYajjrdJd7o9A3z0lQaMLlAnMuH3xp4jSdSk=;
	h=To:Subject:From:Message-Id:Date; b=P36maPCWUXkZwwas1p5T/EVpkzupwEZ4NqwjxtZJ5BsBkthHhnxfIrN+H5EuctC2jb7I111Ip/KHBj/A+VMrGH89vzmgzdwhlUfbEWin0G4r8Wz3LG64v695sIvSj0ZFF0uwE4Hn6B9h6zDLScn930Fv/5TY5+k9m4TXF6J84HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC3BRYhl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC3BRYhl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD76C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724016953;
	bh=xoqTVPqbYajjrdJd7o9A3z0lQaMLlAnMuH3xp4jSdSk=;
	h=To:Subject:From:Date:From;
	b=rC3BRYhlDLjLyATrPbvUjCZPx7MoMHPaW9z9NgplaM+JQNORfq4+wxu8uxwoGaVPT
	 EwRGSOrmTs0CKxa5DSjoQWNEjHTePBSWlBBDhTqcQ61OZrhRzG5PuJ4Z/G8GYcSqpr
	 5jZCzPMLQYe369BklUK/SiL00wec1gU689tJqdX6cLX0RwQUV+njDixVCV5SPJFrLH
	 3QH8L9e1JAqurEB164NdMQRd5oCqEd/vDoD9723mEPGyIx3+CkSwdJvgZIUH0sdaGv
	 ExjDtoa3YJaOpYVX8gzYaUqXMdbZ3E8e+bozKjeGPIMnqmIQa7sEVWWVq/6XyVtLhL
	 pKlRDNKdhyAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B308C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172401695360.961.4692867969810835128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70f2107ade3eba01161cc1b05f004eeac5a8d8181aff33a8ba5f3ef8af02667
Date: Sun, 18 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724016953
