Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395DB1D86F7
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746856794; cv=none; b=H+vG2FQ5ZJ+RW7YKyIEekPzvhxrz3zZSFt8ZvchyiSmLiassjFWlr0UsV5HWsYQa2qma22EeHhPaIhxvYQQMob0h6+gc93YfMKjBUCwAGTeCxzxW4kfkyf6eRzq3ImhKu4nP5DrBTFZkTvzpXCOqkpKUFKLAgb+aghKRrBkNhrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746856794; c=relaxed/simple;
	bh=k2l/Qw9akqs6p+ygvDYpc+h/ZX4pQcwoSzO1SGDG9YU=;
	h=To:Subject:From:Message-Id:Date; b=pHcxljO0DECb7Fr/kiTe9zUPXcPVAY6UBZt3aTjAacYEof+5YJf2LOxd4We+BilGR62lqGAom+dPy1cUbkY3i+lsciaeWFUBtl5ZNZPpMZosuOgdgHIqs4qERrcTgxhMgXV6/fkSQRTpv6tw/H4IQMqtBf/VnpB3pGTkYi749YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyxH2MDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyxH2MDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746856793;
	bh=k2l/Qw9akqs6p+ygvDYpc+h/ZX4pQcwoSzO1SGDG9YU=;
	h=To:Subject:From:Date:From;
	b=fyxH2MDLpn40m6PyCCrT6NG8f0u24u71Yy547/C1XA0+KJMAWB7QokQlmrUN++2Ka
	 uRf14HnzwzTzg7ZAMNb4PKD+q3qFyowhfwudFucLIzf6ANFVTZFtPEcu2MQahWPHG+
	 ns/DN7WZE8d7J/TfGok/HTakHPrgc67CA2SWxVg2eacDss2OMEMOJBB4/l92FFBSuN
	 9Ja1TxOmStuLU+XwmGbvvoSdTG/vnesP4fsco+FSVbj6WuQeDoASn7PCdF7UG1c6F6
	 1KNq9pr1POoqB3b7fjhMz/w96vFHJCeYhkwNEo5ndoMWHKff1dsiVMk08m8f7MgH3B
	 IiZPez4c1ENhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E1AC3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685679359.23668.9178581791358923022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1332b9c783e24a2d42496fc14d09a1419496f1c28e502119c90ff3aa0cbd6821
Date: Sat, 10 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746856793
