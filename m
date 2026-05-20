Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0962E8B64
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779274834; cv=none; b=iq9DGpBSML0N9MMkKkNdp/WBenLU1DXqTPJ4COIhIB/prtiyp7VZjlKtTXn8QIaqxru1ji6z4waXcRKECEl8jEaSKU+4CjIzCcGTeMShygS9NOwcxcs+AZqEZ+pt5K7M5goHLAq/VevDWU7+CUC0F0u6odbcdBkL28T9zfpSBok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779274834; c=relaxed/simple;
	bh=GJoAMD8ug5YOGjIzg+YkePdn4wS//A8UHi5HYKEQBl4=;
	h=To:Subject:From:Message-Id:Date; b=Nb3aPAP7hZUHqEmcgYp8F2/K9v31WfK3wBH4JAqE5kq7P3cOLsl/poOQDp7+iFmiN+5pKACIniIbT2yLFw9AGCg26enI1AW3lCUeSAm4xYIQuAD3dONKBjgczTfStP3Cfchv9o6uRDdGKZyMH9JrBTSWjxMU/UbRAcVjBIxbnMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7erOs4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7erOs4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F16C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779274833;
	bh=GJoAMD8ug5YOGjIzg+YkePdn4wS//A8UHi5HYKEQBl4=;
	h=To:Subject:From:Date:From;
	b=P7erOs4ubdGv3oeQBvq1KjbIC4WZ4f5AyHl6uc+hU/OZsLS6x8PWURVEMcWSJEry9
	 MwXvbTBKQt3UmF1m/izIilyXD74my2Tu/mJGD0CYJQzMlfgJ1WgUelXZ1VsCgnDzt0
	 XZ106EJfx4twjLz5UfNiZTaEcaJSD2ixHo1kNpN69dPDYun9OPaOJpUiKKnapt7q0z
	 E45uEutrQgcxffiODhYalYcfGp5kwldYip1Px+UDXe120AlZDy1Xh46V7MDte/uVlQ
	 amykXVr4FVAje5iWV9es03p2YmvB8RFiSlOZjhvw2AmlzHIOuxqIrfcOKXaoVtQOD+
	 jwb67YKA82muQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C9CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927483369.22757.4607218729368601165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f9fd5cee1fcef182d44e93c6deafd0ad1b86b7bdc45b6e7c3b74f9d0bacfb0
Date: Wed, 20 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779274833
