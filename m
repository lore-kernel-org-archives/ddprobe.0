Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6D52772E
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778410834; cv=none; b=jzwyLBZM/CLZE9Tt41EmUYEXiOQwOttQBO2WO2//RUHRLVQflWVd3X0of4TZoc7xLWFFaxfP1kXR+T/vpieG2Ts886w5R5uEJOPsz7QI7OlDKzRsSegGASUBzdC+aFnjubnncQuUHgg3wPgN22jMYRtjcg8kYAmjxxHFdnapFj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778410834; c=relaxed/simple;
	bh=ZVuYL72NbHj1VI1et4IYtJEe0xvGL1jFxNGB2/zVl+s=;
	h=To:Subject:From:Message-Id:Date; b=kV6hXZIXGrVmwJhnG7eqaGGSGhFxYxRLUIIbh/NCGP7F5QgkaUkIuhxVUB8d+xhl58sNaI+rx2kIbgxh2fqEr1KT/zEJNrVhkuCoPmWZCH0ScM9X1eejDVcRA8Gly9hEi08cnvAVva8o05ukSbmGVLdpNBWYa+qxbmGBpa8dYBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hs+uk1pd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hs+uk1pd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C206BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778410833;
	bh=ZVuYL72NbHj1VI1et4IYtJEe0xvGL1jFxNGB2/zVl+s=;
	h=To:Subject:From:Date:From;
	b=hs+uk1pdnDCgyIkQTjagaAKlph8jtLFpzpo+bXNrNcM/1czS7f8HfRDOszwmanPup
	 OYW0HEUnrazqjQq23RLKJiJNsNg/SXK0yKF6hJ3XvGWRj9H3v9a9i88BwhnIV+R6I3
	 06OjLmXF6cNFWK1cP27EtYFXAnzomTO7HFFBfxddHyyOXV2LhtcIa9/ZZrP+lxL09Z
	 9ptrZXwwuk3duhIEkWusO361brndlPA3CH4LZ5NKLU2FHxZ4yun0ORp+8roNDhkuLH
	 gChpXS4xk9ij2UOj+8JxFxcGkJ+w08rXWeY0mmBWCJWYlDkX4nrfZ41vxiW9VFhjnX
	 CIBgy1ej3+NIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8EFCD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841083368.32716.17254706814870051061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8cebe0bc64af6615fe97a15117eae6245f44b2df5b94a7a8081161470d21b74
Date: Sun, 10 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778410833
