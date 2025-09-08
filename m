Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3B6EACD
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757297994; cv=none; b=TyOE9YRNnioazNIQfbYwfLTGvU3UKiH6VVBCmNiBzdAhpXkfr4sTfvMfdvnzpq1cPDXZvjV1HwzOO7FF71TViePpY/5D7rMBABiBzp7aWUdIf6s94gBjynX1etFDx20UT/JlEF9Ee5ZFEbx0rxrHf9MqLJhrldQ3Hl1rj51OEks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757297994; c=relaxed/simple;
	bh=zpTvPEC9z36SNFZjCQH29YiQqwz8iCuH6RutOcEPwic=;
	h=To:Subject:From:Message-Id:Date; b=fRTJhlxeHzKhwOuVmZmJaKifRUfrxqhIwf+el/i8PuFDSjiNWSgBIUr3ra5S/RNkSlUjc6LEpzuAe/tacQmvy2sYq3/SmjDyH9jc3vSEIiOESO/Ui9bfZsMqeWpikSRx+PejOaqp1ltB7OtaSu3oI+4r/HlwoxWGUggCEQ3dsRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH5hkE3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH5hkE3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A411DC4CEF9
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757297993;
	bh=zpTvPEC9z36SNFZjCQH29YiQqwz8iCuH6RutOcEPwic=;
	h=To:Subject:From:Date:From;
	b=eH5hkE3foJJWJwxq/eghZVdfBRKpnQErXpCXgRVTqtFsHKMAK89Bb3vO5JdKKtRhw
	 2Gm6QES7X3l8bEl2AVau+el1g4koLtYwblXKivJ8o4C5mItuL7ew+EYM1LyRBacTxD
	 bwAlrO/b4i3a1Ggg/pNGqLhp7FvuFpTDB9PU26Ixs8QOKLpcmrWhEjYbuhNgduWzI0
	 aPF3NnvmL8RI+WMSjAC3fVofl3LNtjemyg3BRmgEeVePonsTHU/WtNL0JX14NV9wOc
	 nFynWyzY67WRNV2oYznsrz4mktsxKALQV819OxB4cK3BtYRgCNBlQFzzElf0AXWSKH
	 /5nLn/Zx1U7ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958CCCA1017
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729799358.32213.8248632993275822257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f32f8b8cf5c906e1b51c4fbe4858b42b0eb52cb9069db15e205972733999c2f
Date: Mon, 08 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757297993
