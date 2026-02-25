Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060022EAD15
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772043294; cv=none; b=rQoLhLZf3g3VzJxew8Mgk5GGA0J3os4VLPuU+hPQBapDugwIs0u/2xi0LiTXC+J/nBG0qRZF6OdVsxJdaQ6eP1o2JKVivYjyMgok8FbEag31YpL9jaXILVpfdP5uIqd20iiLPeFHJZp6+5X+E6NpQuSBILSsa0u1PzCbwfkptmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772043294; c=relaxed/simple;
	bh=sjAM8GCkSkeZ8kfDRpszE3l1iWbNFP6q8SVNz7JKPjU=;
	h=To:Subject:From:Message-Id:Date; b=eJhrAVEplOC8qM6DLFDWVF0+tKeE+YrNWu9NEs/CSwxu5Xbt7l2exxCuXCVOBqnVJTpiaj/uszth3jJAcMfPn5yQqdfsdYkdg4uk1ILOLazHBcK0lrVyI7eAR9bBRSR5SCFDpUO8aqm7jeqdPJ7XVpPy611gKlqwZiwTrnuqapE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hyngtl8a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hyngtl8a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1D3C19421
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772043293;
	bh=sjAM8GCkSkeZ8kfDRpszE3l1iWbNFP6q8SVNz7JKPjU=;
	h=To:Subject:From:Date:From;
	b=Hyngtl8a7vgkhCGeGwfzuX2bgBmN+YIyrIaZjg6m6/lgunGoe8mlQLvd2VDbSYDDN
	 XkXmCJKehcbFgm8z72q/UqWqUw2lSG9Uv3lYP+MssB8Wn9fkDyTBqSaf1w6kNZlNiE
	 OxPdaT/PbPv+iw3jj2ECzXHLClbRK4pS8w8ON9xlN1v/Icm777hiqkEhKu2d5NTlYA
	 aZ4nw5HjEOWb4sruZDFt/MeToo6M/NQW0P8l49N6wXdZ/B5YCk3Zwizo6Mu9672/c1
	 EH+GQKQ58klvlevcHUCvmLD/ZZHAuRgSEAnsi2gin15X/nXnnAjSNq9nOjrx8Q1oaD
	 gP1LusLIb6I8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962C6FD377B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177204329360.13771.856763675964324759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258b09912a1ebcceb479f6ff1131fdd98e24849aa82d00996b844992b6648185
Date: Wed, 25 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772043293
