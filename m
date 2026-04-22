Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A42D877B
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776887254; cv=none; b=N1DHnHxwiyZemCUv0/2m5IbN/WlVDUdDLw4AbFsuc6FrP+iocyPMuKnT5aDjBPmd3StKSghA2qr2ZKzfZvPRf6SGyMleTYSAp96plJyLnR9IwyUn0wcePSrzX+7tk0plsedv/NEq7Pj4ZngQuy3h1WHBxVLh+sNcbt/ISX9N8Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776887254; c=relaxed/simple;
	bh=Ut1S8FKiIzaL9okeXBKp1bvZbMh8QIskASMnP/0NJkc=;
	h=To:Subject:From:Message-Id:Date; b=m6F9TOKARd3pnkYayER7HEXCHli69yFSrXGicJunPc5G6cF0p+QHw4A7ww0pCoZ2DbA03ln39Ua48K3I50PMY9ZdmFJN/RUQ/VQiL/b6Ke9R/xlwtDOsDVP18S+HHTiDTr6PwlT6YbThdcDA99xoxW94c+cjl4nTNLAZ2QphiK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tr26qAU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tr26qAU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92A5C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776887253;
	bh=Ut1S8FKiIzaL9okeXBKp1bvZbMh8QIskASMnP/0NJkc=;
	h=To:Subject:From:Date:From;
	b=tr26qAU5Oz3r4LSM4tWokOkOxgxVAiYPuB0UqtVvTgCck2HR2AUBl1F8CO1kPAYTI
	 Mgp/Vl5/jOHT/aQDY3kzFzHCQV4GTbh/mqg5bQfV0JHW6KA/+8305sJhRibleFgxIS
	 +jfqbO1QVOJc4E0tESiPhRxZ5BSvsAW/HRPdaNt6Jk8LaCGhgXdNcD/rvviknKZC4Z
	 DWDeWyXmhz6fG+IlpaznnuAjA11/otZaLNwy0hVqtitPkxAS1N5t/uSRMT+AepSkGF
	 zxkok0q2bG2pfkYl5xKqHL7rk+McfyemMutwVQefmpowdxXoIH7oOZLZHv5avj+SlB
	 ntlTOy32ipLUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA189FA1FED
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688725368.11862.13914883573117917841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5032669b2f29b19f0ea4827b65aac54b738d856343efa1dde97d7a9d9facab97
Date: Wed, 22 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776887253
