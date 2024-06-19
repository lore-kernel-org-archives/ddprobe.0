Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A6315382F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718816363; cv=none; b=aZLnN81ZmEoECjcuKB73ATOzTgL0/VyorlA3eZl6Usv+Y/wmep7S5aj2OU2Kk+RTjL8k9b2gNWzg9Gn2pXbn0IEPgGJkEAUz0Uh84y3tVPqjWW9R4RcjdlKJ+YWKDs0Zy3D/VG/7CeoZp61qQflYyhhHfdiPw1I7OMlccs9pwp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718816363; c=relaxed/simple;
	bh=Coz/XXffmnxRz99ipfehxtSasyMWqpkRzFcsITAM6Vo=;
	h=To:Subject:From:Message-Id:Date; b=YsszI1ENaOL/AcKwF0RD0RgIHQ/jQRMLVQXqgED/rI4o56VYUs2aRbARGZrvL/cgLWHs0jw0Vtvl8UCSh996L9dB0HPvGMAbYaB6dtfRjG8JbgrlIJ6HWcd/wDMYG4MLnM2qUXsLNsj7rPcmLW47vJ+uzjs1nMOlPoaBw9Y+tBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEwGBCpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEwGBCpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C9BC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718816362;
	bh=Coz/XXffmnxRz99ipfehxtSasyMWqpkRzFcsITAM6Vo=;
	h=To:Subject:From:Date:From;
	b=cEwGBCpGWBfXojC0AOb4Ndj+EhG8Lj3z+rmcMk4XDUnUm8wyOzuMuV0A6uCaYZJNK
	 yupRXTQNeZ8tgC2+4KHU4gBr/cUWEF2iUf2BwhosjeJP2X/4AjaD1AMWUkyZJz+d3/
	 BOqt0l8Y2eZjH0OeeNSpvCJLUmJ/kspqO0O8EGFSwx/RFQgFeXt9a+9AuIdk11SUaj
	 bigFuEXVTsepG+JwuvZKgTqPgIUcoLyZkqD/Q5HmNt55LWEpHXwvHxSG5HaYnAHOXE
	 2NZNzWZXpbpgA87fSLtC0Dj++i8yb26+lV68uKOrOYAzbCVWU20ZQi7eNTJ9ts4QcA
	 iPz0ED56z3aog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D274AC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881636284.26098.9414723785243941286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c21abe6f75eafcbda980dffa4697c4dbe5a4c274b64302ffad1781c82ba87d
Date: Wed, 19 Jun 2024 16:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718816362
