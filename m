Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2C01F17F7
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742293795; cv=none; b=uwwCV/1GRFF9UsryG5M2rlAIF/oGi+24x2pKHevqA22XYiVX9FGvtv4s31O9Xj8epNrWKiXOGz84ecxhG2A57b+GllzZDgBQZSz/44h7lvz84IkIMYwynFMkIlwN3HjF4Pgkz8hkTNqh1lFEKh/dOeqobTEmZES18Qwn7LEFouc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742293795; c=relaxed/simple;
	bh=R3tjdtbd4AgibBsG1xt2XqWlrIcW62LAKLj2vHKmNms=;
	h=To:Subject:From:Message-Id:Date; b=Rd5mYPN/cd3X4e4/fXzdDdy0XxJzyvZ65AhFGdhIZnwQ+3JhWS9fU0NOygHUNsgBX0otRMW/kJrz/biLRrElkRt5/zPKAguKvrkoNV7hqt3042gWD+k8IcR7FNtyBjGewkFFrFhqkmPxSRTQspdIJn65N09eFmzsyikRAOORDjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtsKX/XL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtsKX/XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0510C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742293793;
	bh=R3tjdtbd4AgibBsG1xt2XqWlrIcW62LAKLj2vHKmNms=;
	h=To:Subject:From:Date:From;
	b=JtsKX/XLixFuKs/+WrO8xLlptAcKhEgjyTPZc8TM2XProNLyojWbglX5ubvdvmhJi
	 LqAigabtRXSa/5+ofP69XJ3ctsBJrI3Cg2bs1xEIQYhpxpleH2O7VQgbeR8AiLrgGT
	 xaiDDVQIlzh74fFt0Wj8QdRwailU5GLICOXmrWsi7ADcRXTL36h8zwrt3zX5eOa/3R
	 TOYLfgbh07/FYNTUbCDFueZRSMBZYRsjARj5CRMu2VUefgGbAywqIIywlKdUEexZ9p
	 x8+8pJCC9EDIdR5xouRWO6RQ4+6wSyOAXD+LzYwTXz048JN68tGgP24noKc7qsTYSo
	 hKDE1M4bZx9fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAD4C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229379362.11954.12117273290466795224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97651944d021258b27b7ebd848bbef5b24b202437b9082f66adea6233fb30ac6
Date: Tue, 18 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742293793
