Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FAF1E4AE
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759469994; cv=none; b=tRTRIezE2rAlpGI1q3myNRSgKt/UJ0XWKLnmxtBA2BCpJ/ihATIdGhN61g0pEjn1SSh5YlVaYu9771xS940TbMdtc80WhUhACru3bmWdU3eCJXJcyyIkS1mMLgOSd6cx6V8oLr+FTM5TV3xsCA5R3iDEYaSlWGb4S194Rj+69zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759469994; c=relaxed/simple;
	bh=krm0Enya2vsPMjPkL8x3H4zhLx97gpI24el//SZh8Gg=;
	h=To:Subject:From:Message-Id:Date; b=qWWMJND99Rf7UmUFRi49Z4ZjeUre3csRZabF8AcpGkyTrCNzSyjzHPJ4cty+OMsmjFJtn3mAlUtYs4RQFJN0v78UCe/3+IcaxmMBYhtYA85DS9sAmgR25GkfAizSRkHOWwWjaqpgUNz+UNLJYlMXHEb9dq9UcI9Qvprd91SgY1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSfNXPnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSfNXPnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3C4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759469993;
	bh=krm0Enya2vsPMjPkL8x3H4zhLx97gpI24el//SZh8Gg=;
	h=To:Subject:From:Date:From;
	b=YSfNXPnVMbk9iCtQX+jGnNXiGbYu/0Xkf4mZfUkmWdG+P5DktIJvDgiJtqe/hew7f
	 0wfX9tv78LkSaTogVzfpu/ya6Ln2Ebw3jJ0UNVYmG6xc8YeVyonVG5vaxmBkAN0ZJX
	 apIKYerqeXAULQWYKnS4YyEuG/D0Z4+YUlVHY0Lzvz7weL4N0bhKybJVcoNPl0e+KG
	 KSfNxr9w2wHSKcEqbSy0navxvoqwCoY3zzrLvkWPOgzZCjB9y/+CbZrfwB0xvQTwpE
	 rCNh652KI2UWlIpE5sNdzKHmjfodmnRlmpW9yYPA3nAFXZTM+0/BsnF8Dwxq9B/G/X
	 g5x90i+guUJsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E45FCAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946999357.7271.5686112392775362596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01bc59a6888fa7b00ded88c229ddd16445915393b3b68b0166f74a3a1e1404f4
Date: Fri, 03 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759469993
