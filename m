Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BE3261B92
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775852254; cv=none; b=LHIlqYaFpLwiBulVCN9lg6kVPyyaiUZUVDtNqcw6/hQgb1adHKo0cg68qsMKOogFwBTTnAe8sJANCQf5xFX9KWQlCuV2wFLoWN5BiNZQQgKO/geMXukyTbH5d19CrfWnORDzuWvSC29cKizI1YnPc5CTrdNaS/UBZQ4PS4zwAWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775852254; c=relaxed/simple;
	bh=7kod+fgr9PjJTu8yG8YGghFEYhTvC5rCO4UJRH325rc=;
	h=To:Subject:From:Message-Id:Date; b=W/SLmlrVRJVXho3oTD4eV7ggBlqcugQVL7s1q+oW0oCBzt3z2j2X2MWgwRJveZjBne7gS3tYsJBfsm9mGfxyYf5uLHJVC0TaqjAwSsfulLkLkwrEt7Rusu1D9ruEwi38QgUEZtg0eHSS9e0+OA3nHtXO9/PMOYx2pabdQrpNdao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnB6TWk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnB6TWk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FC8C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775852253;
	bh=7kod+fgr9PjJTu8yG8YGghFEYhTvC5rCO4UJRH325rc=;
	h=To:Subject:From:Date:From;
	b=LnB6TWk3LLE6PkA4NHc3op6JSn0cmDCfoKn2l2UFhNA+iaU64TnwctX1PREULjr8f
	 p6GXv9Lr/aXhDNlksBzA70gXVbcidNaU1N/JTRYCt+DJeL5ny6wCXlZ8NcLN9n9wX/
	 ZEdA7F71Mu64J5ZSePG1K5Jm/Yke3EN4JHxeyupYOykMMySH8fvq6LnCK1AepweNqO
	 l+MPn5BDB5hZ6tjpL2dcLdYeXgOG8OW8zjcww/gG3/tRbhxC+JqYfcKYsr9gu6qlAA
	 r50x0qKc9palE0AJFQ7UHN8oKycH5CVz2NSYIHu2GQYgHHvKxzxnVqDGp4ksAESYqN
	 MI5Th/LJIzH8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA4FF45A0C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585225375.9511.11680607419587385259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b23ff3a0cdf88a8395bbfa5bf3bb0f9b7f35465567093154aa6083b0c7040c
Date: Fri, 10 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775852253
