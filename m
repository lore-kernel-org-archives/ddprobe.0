Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD4A1118B
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 18:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707849497; cv=none; b=tv6FE3crQ/1AlZ+VvNy6sKLvtHL2D3yaTsUv0CbabfsZkKBJcc9Nk7Ptxs484mTolgjlSQRY9QzZAZoQ+iPkcaysCls2vyE1uiRDFx+LRznAg9Vo4252pVJWH5S66QAPdg2wWzyRehZcZCHIJxTZMXdcL1ReIf3is2Dv4yDq7ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707849497; c=relaxed/simple;
	bh=uhJUOFetfNvvVLhsjXPwkOCQYn4M0IrPecevkugd52c=;
	h=To:Subject:From:Message-Id:Date; b=ltn4s0F3jSuqYAR4Zh7fDlcc6TNDwlvJ5klaGnJ/A5fc9GNhXPd8lf8M4hvcIkQ0On/CmEExHtUHVOyhhQkgIFAzXacidWWYL31esfW4OBoKpyYlJ3bDTx5xStUbEVLUUifg3sc23JRvimGXzGHWhsiXrunzF/Wso8ycVn5rjig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdcDzIs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdcDzIs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDA1C433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 18:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707849496;
	bh=uhJUOFetfNvvVLhsjXPwkOCQYn4M0IrPecevkugd52c=;
	h=To:Subject:From:Date:From;
	b=OdcDzIs7tKoMmAt0YYYrXrDNiWiq7Jofd08vj2tsmuZFQ5Yvq36DEMr11/7e7Gkxk
	 QB3YS8hQdmFHTiK6VZEr0m9Mn3bjSgOdRFYqhlg//lb6tqb9G3G6ed3sKYVl7egDtM
	 DdYTzS5ogQvqTByUA4Kkuc3Fi/bW7vc96wQXvn5LZtynTrp0sU9bKblmNFQjR223gX
	 NOzt18C7g5wiYS60HwS+sjH3yMpoLCrGkyC6OY8oRo25dNeCg8oJw1MQ9n6fFSO0wU
	 zI+BvuRKC09KNc+jYvbYFdapOPWyT/mjfgSuQYsHxv1Q2RnA2BKwed/5eY/0Pxx8HQ
	 pQe5jrogBVd5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E1CC48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 18:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170784949638.17427.1834909672503277370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321207c7a6661c33a54830345333f9eb542097167e3a35ce35a6b7378a1210d1
Date: Tue, 13 Feb 2024 18:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707849496
