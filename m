Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC453BBA0D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781284594; cv=none; b=EHSGLiGFm3F3dnahrsOwkExQJE9i37Df4Yoflciwps/ihwLc5azg+RPzsnU8UEQsEQqEj9ndxx0meBlbocLbbXWDBpOWiND6QojDADcqkzoa6kripO0ihO1IncQA/+NC0seAokzl2AOH+xyemd8xPYjHuK4dweRN1CjhvUl96/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781284594; c=relaxed/simple;
	bh=p4lq62JUVBD8V3URlTmgSH10CElz6TDp3ruBUk3+tNw=;
	h=To:Subject:From:Message-Id:Date; b=rSIzogQBAZ390TtRda4uyD9WUA/bC66sGX8ivv9nPEnO2AUZ5l8XgCLnvs8d/oAop9AbPOhfFahJyvzflM3g8xPaghwzjxHHaKHL9fFwWWKJDzenP4ShofCPYq51355OdQGo/ZafyD6GR9FkgF0hRsTOq0Cl+g0ACLQXT0UfRiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNeqD0J+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNeqD0J+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF93C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781284593;
	bh=p4lq62JUVBD8V3URlTmgSH10CElz6TDp3ruBUk3+tNw=;
	h=To:Subject:From:Date:From;
	b=VNeqD0J+gipbgSNFj2uYez9F9tmLuePtrWoWPkj7Zv7IVMV4SM8glDIUuTSyw+Ndw
	 ew0ZQrvOSZAbbPT5ot1T9ng+FUkAsHk1Pmj2fxBu+LXCOf1CrOmuntIzyzTd13mash
	 Hqjr1KbIOtAb8xINC9nCCOWrqJhcd2rmf9I1i6YIkEfHnJ1sLyHgVba2x1embPCmYx
	 lmchCY6plaaCbqG4tl6i7iAt4AwK3PFmdQGq0M0fbqIEFfHNJ1TGaYjYV5SMznxwRE
	 f5G9bSaO7OpUSBUGZxqDRuNHiuh8AoVAstku3hKWux11tT1ktK3hfSpc7SZmQuoCl8
	 nREgtHj0ttFdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4E1CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128459369.11159.17195781179056289378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e652e0a0bb97c849e7fcc03e7756c933b9e23d34a9ed02d56007eceb90f1a030
Date: Fri, 12 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781284593
