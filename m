Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2AF635
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735353354; cv=none; b=DMTnQLC5bSpo9thYQBTIHaH5SYNjM7h3QvMxHkdVC/k/1Rcd5wHID2vIJM1PQ4sQsyA1q8ODwXMLcP/WknvtM1D9zg5Mv5QN6zGlr3zGnOZN9E3rXxaEXFP7ryGH+jcLyFOCcYBg6M7tUC/b0wzwp6qwH1uGDxfkS1os4eI4MaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735353354; c=relaxed/simple;
	bh=0z2/CXT+7BDCy+J8EkEZKwTf16qhWsUFcHA3oR4Br48=;
	h=To:Subject:From:Message-Id:Date; b=KurEYX/LCHIQ+f9AmaKhgi/W6V7vNaBVBXtaCKaCHc74UEC93vGL6VmJoJndOlCqE71s4sW9bue1jktyab1XbikpRjumtvx5zSZtZ0fiyG+ZrOLmvcrenyR+rzbxkQa/DPcHWuLM8K4zPWrUiLwtl7zMR3fxBrj+/DBQM1jNjh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WERRcvrC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WERRcvrC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A55C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735353353;
	bh=0z2/CXT+7BDCy+J8EkEZKwTf16qhWsUFcHA3oR4Br48=;
	h=To:Subject:From:Date:From;
	b=WERRcvrCzvDDZEK/ezBdCOxs+8v6Pp0vwPx1SQ4d0aXynv5d6Qvpw3pPtM5Od2hKK
	 zsfQAabTd+ke/ApVBo5PXRrKxkmEGJh9BN/9NwUD5FMMSyMoa0CuSodNs3akn+8YdA
	 mztzXLa/tgERjTOc1x/BssZMs3JxYiKssTDy8yJdIIplcF292JPsN3DXBjW0Qv5tih
	 Wwhaf6vUKKZTKtISm6fJnycM7EkNxpC6w7IzlY1TV+APO4e/wMYoClmSUTDBW+uT7t
	 aPIrDeamG70vAfY9aQ+LZN62YgWVPHHsUxic0O01g+DpUBSz3bDMO+Wr990E4zLn/7
	 P7l2Q3kS9dJ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D148E7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173535335363.16333.15851593113700852683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c99146ca03161fb397796caea0ff4f4ffac31b0897c4fffcd0fa5bfadf623a
Date: Sat, 28 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735353353
