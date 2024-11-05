Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD2C11CA9
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730771754; cv=none; b=pPaC5D8PUWTMgX1mpPz2SipsbD1SVcs8eDoqdbANbxK2wYA0ekr9JMhTNIklyVaa6gFh/uauqiAGcesWEplCTMSSEHFRB8M/fJTgXAPCr0jUCsdJ2NJBpkuhjyWphQGtTKxyxmD3D89bYNyJFlNjNEa0o/BCMjZWtdYJvvmWAXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730771754; c=relaxed/simple;
	bh=hMxjoVsqRLHiP6EEoSPWWJ/TRiR6ov3OKsxsVAJkQv8=;
	h=To:Subject:From:Message-Id:Date; b=HFXXua+4/PdY/+M307g62dPylN6iATt9YcShwfmn4v7fl1lrTy/9KuHbkdmhPVaBG5V3R+lXIYu/+IodNB5h8cTGFo6rOHvOoF4FCiQ4CuAeE0K9DE3z59LX3BtQNLKyM7mVaN5X/vPGkx59DYBou4rTKkod1tDYffreqoqSsDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+pffh7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+pffh7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A964CC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730771753;
	bh=hMxjoVsqRLHiP6EEoSPWWJ/TRiR6ov3OKsxsVAJkQv8=;
	h=To:Subject:From:Date:From;
	b=W+pffh7YMHOAvyPPLhKAzoiuzuyoyDghIi/0BCShi9lxEmrFec2sxw91r/ZgwRTKX
	 Y4Q7s1dyg080mn91qbZfRuG81zJ4DGqO87/NWAFSFZnB0I6vk6ZWbY2MykF9vt4C3W
	 L7V+ZEJl3RDegRhL2s2HjLnsc4wN/itDOdVlLPRldBDQy9N8WKt4yUwKCe3NQex2iH
	 ffBBU5TPBe9fvwMTcPWdD56lThd9090S7w6y/87FtN330rv9NnkqvDWvyZjOt7Wufg
	 7IXR+Qi4iNJHyJkdtURT7LJfgHzF6OwSFcrFj0tcdKND8X0LwfHnDUD9GszMOOD99/
	 zJtKPmo+DN+GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966CDD1CA14
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173077175360.10412.10432933808373202156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a865f54292a8e2d9f85d48eb99b03e1ea0e51866de57dc3a585f1eb0c4444e7
Date: Tue, 05 Nov 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730771753
