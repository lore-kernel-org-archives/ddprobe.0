Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2565342466A
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791294634; cv=none; b=OceTIw8r51DcZtQXkA2hadWqT2iNGzTzgfKSqLP6vZuzJ+ufNf7B2RYceVxTucKJXSjHTF8nC3HlNRVfifvSL03AA74ikpkKu+QlhV4h5gaZw8KHFPfAclIUNmkiKoRlloonOKtiipQ2gVAV1tPM1mQr+/t4ohC3osRBEBs7X9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791294634; c=relaxed/simple;
	bh=PztFFPQonfOfHlXeAGpksTSEDCAZ7pzRp200u1mtvgY=;
	h=To:Subject:From:Message-Id:Date; b=djG6LmBDnDTAk92AvZklKpXfBRdWcVqvzfVAcC2LtnYp/BF4wyF3QWeyfWlpI09F4aVCRCQB9dCngbXOwq/Gq+E0f/skaA+xWWCpDLDgBTQJsa4XNESpGeBKE+FIfbgD9LV41J285NRk6dmEm11hR0sGUEEX9qR8KB3d2v9jwAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFAsGL0I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFAsGL0I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDACDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791294633;
	bh=PztFFPQonfOfHlXeAGpksTSEDCAZ7pzRp200u1mtvgY=;
	h=To:Subject:From:Date:From;
	b=cFAsGL0I5JvxMAtf+BU1RlgBcwNmhHEYPmOje607NsEZcFfiO4Hxw/JoQI0zVt5sR
	 9yYfwnpyQazacRnEQYaEStOXcG3D1ZFBd/pdw0Mre7f89Y+C2pk/0g+CckTkfWBDDx
	 zSM6RVQnKhlXJDEJnqxCzqb78vyQ9Sb/B/kJpXWWfsAKLxH972GesDVpSkIrzOm+fG
	 /AopT940q1ODwKxQhiad/SU/T4SJ/G7BcTd88wtR7gwmc444OvU5uQQ6VRzALRninu
	 M+Q/z1EBI0O5kh7NQF4sC6trAJpGYykKrqONk/w+/8M/7lCmecAwSx8f9SRSVAS/uB
	 MDr/UstgyjYzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8EFDCA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129463374.25638.17321360170658225353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c2bd63442dc3098c9a9b86f4ba21d081dff52310e69f54f4eca6bae79a7853f
Date: Tue, 06 Oct 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791294633
