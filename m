Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0852D2F5A34
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771187094; cv=none; b=krcpJq61pqxJzxhvekuBK9w+Ij7Wzu79g0T2CmBDo87ugAlHxxuCedzTohltjSNynVouYkSm6CmRIjWTKUJ25B5kX0B5A9XkJzy+dKd0IXPCZ2vus1dYaiSiSmEV4hRAUf/bhZ6Cs+jzrwR7vTbj6DF28einJa3ZAvmEeBUzoSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771187094; c=relaxed/simple;
	bh=giIVIo6l6xWBpR9NJ1KAMgRcx937FOnsgoMK1wJw7dg=;
	h=To:Subject:From:Message-Id:Date; b=CswTnshlbrOIEDfTpYbclT44RxhjhmmVMnFSSNHT0YCJxkSnkJzVQeDQ2W26nfFEdkdkvxMGqEKJzvYQyt388xheWMdptBeWhUn35ithX1NrJbayKdYgLBsfvA2vY/IInhc/QFRiFB1nY+gY3lUVMN2zE/qTzb07yHykpCh3pXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFr2r1VI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFr2r1VI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7EBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771187093;
	bh=giIVIo6l6xWBpR9NJ1KAMgRcx937FOnsgoMK1wJw7dg=;
	h=To:Subject:From:Date:From;
	b=LFr2r1VIwGAGjUwdDZgoPO7cPskf4hbc9QYRAe+OGlRxrQ0vl7PD/AnTztD5yvbNj
	 6Upw9Tcy2wBjxjnTI0tjE9c0epDF1C0ArgYyzwRNuku6rRnQ++baFiRkSscA2Y6k+/
	 46+kdDugCUldGF59TQd9x1vRGwd7ltUbvnY+wRKZLRj0uQAJkS6aT04itoqA3dHYfI
	 h8aLeDMkZrifENm4JRwFXLrRY1CBG/bs1CYeYWk+DrzbneJh5Rv9bPJqgZLK4QhNYA
	 TCgovpCP37U5jElXMNKowqANdsV0h4W9du0hhr2R93n2/f9YzKFqH/hAqWyEURQByE
	 aj4gqAwIthSBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD99E63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177118709359.7994.14780169910067063296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52ddd82e73a145fc1d9b15ab94dbcb31742bef8742501a6e5d10dd06604bf29
Date: Sun, 15 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771187093
