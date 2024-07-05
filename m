Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7303B1487C0
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720175123; cv=none; b=A2aps8d/PKHrskRBff5FpHk9XwPL8QQ1n+INnwKScdepFmVyCtAEtVSRx2KPox5BIYHSeeZCJJhyPwr/pm1hVxeexdsLYXS11+tsIYbmy6U457EhD6R7PkYDfTWDTpRDT7RldRH+Y8r3JPm5FENqoCcu9SmZqN/j7PTCaE7v908=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720175123; c=relaxed/simple;
	bh=+bETZPDt44uqaOzCC1JSR5EL3wOweC+OiXEB5Xa4MU8=;
	h=To:Subject:From:Message-Id:Date; b=Kd2+H1cJF42M+XkSzvuk6A8CDr6wkxPXMJeo9mHh50/pGrrUL+h4TjmhnXgu6WJi10gGXVnDOA8CajDq6Qxp6/kHkwjGHkx31TNtzFylRpfxMRaBQVLVt9sdm9SJamlctarKtGRGGCcDfRJq4nZ0g3ukZqaubywFu/tWs3aswkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+HTg8Dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+HTg8Dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C7FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720175122;
	bh=+bETZPDt44uqaOzCC1JSR5EL3wOweC+OiXEB5Xa4MU8=;
	h=To:Subject:From:Date:From;
	b=J+HTg8DtOyguAqt5jmLp1znhjQ0u4KU51rqkBSKlX7658WgZgjx9K97CD5yqBJIEp
	 DqH1kB5HmKEah1rZEPadOkMXhMsysiMBgGT5ZBSvvLI3dQQ2SAF6P25zDZ0FjfQu/x
	 l+qah4c4e36FImh8dqAThZc7Wakb4hQodxFn9wim0VV9VZ6ehMa35Cwiyvi4R8B/2G
	 K88dHgAw24eOByeYMNj09oYf4BoOONoTdLYe/PZVz4an7CymmYK4Z39KhCFZcfNV5+
	 u18qkKNW+oZIX5iaVkJPizKu8msuK/8VfpxG8jFMIqY2rYYH2XJnb1/kMOUmm05YgT
	 Z32Ak44WRF3Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4409C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 10:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017512279.18926.4066931726592489761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa17d1a77fd092064f036cc8a59b8b6556eba524b0087432d6550fd7ff470824
Date: Fri, 05 Jul 2024 10:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720175122
