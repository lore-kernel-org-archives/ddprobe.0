Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F20A1BD9D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791429034; cv=none; b=F0lpTQDY1v/NSJRRTiLSH0NdbhGUcGLevtQ0/L1wlMcl/TmoFN8K59SLZLCOG/gGjtxHF5eFk/Z4PdyEmFiwX3DNaJJ10AVuXK/R47YPNhewqJJV/QbpeY+QIQwcsrJQ7HchgtRJ010lnmeMG8RLQnlybg9P1tvP/D1OJFpOfqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791429034; c=relaxed/simple;
	bh=IdCEWQ5l7UrFJ6Xzvq8UEH3h8ifE1ReIR8MHVJDM+vg=;
	h=To:Subject:From:Message-Id:Date; b=iCCJ5OOsw2eadn6/7roa8qJ5iadw8zAK3yiIe8erIMZz1g8ngXp09m6E983ob/bvh9jwSvT3eIn3lzcXyixTC5rPSjNXA5fqU16Q6MeLWUR+f+JX18HSxL/mnYwAYmipUZsp1/LfwVBgvWakmv2QgcFzpWf3uOoRVimk7Tue8/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqlfimLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqlfimLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D647FC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791429033;
	bh=IdCEWQ5l7UrFJ6Xzvq8UEH3h8ifE1ReIR8MHVJDM+vg=;
	h=To:Subject:From:Date:From;
	b=oqlfimLcg8dlnEwDB3/8iTnF0s9vW+yyiRWrHw9hfHl7b5eCmFEfmGVa1v/yEZ/sT
	 7Uyxl9wYzixjYOnXQH3a1wFdYVEdP2sMMFRRLFSObcOhORe3Y+/Cwf9LDPk93x6m8H
	 feceJwpER1VlpOm5f2l9e6evg42HmVDD86Wu3ofv92ivWa7ke219S17z7wwAaNdCHt
	 hpQTmBeiFGMnKnJW95tCZ0I4ujOIfJjSVweSZXsw8KozgRNif57J6euu2tgak/RUNF
	 /kJi9qdQhY0A4Ql8GJ6JU+56X5Uoxc/lqjJbSaDtQp72OvlcF25mGQfbPxJDX6o2Bt
	 1boMgewJSwBgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1875CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179142903369.29150.3363528164580828758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11db556da0fabf48664eef1aaf4417e455420540b64714ac44efe326ffa2c145
Date: Thu, 08 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791429033
