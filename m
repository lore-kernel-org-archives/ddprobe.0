Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A5D2500B8
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733276154; cv=none; b=GyuCuy/ockA9sBPz4u/g81bKL8tIfDS1QNbOrNkTg394Eky9xRzVOBY/iUZCzePCjq3Q//MwdbIw151asehl3fQvTshCHRwptOYm57H2kL/Ct7UrAjinrASHkUPaRkYnQOP/d06yPLwyD/s5LfyIO776rD1skm2lxloXE8swAtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733276154; c=relaxed/simple;
	bh=xz5Y+Kn8yo9ceAoOPmBByCEf4ctkUc7ZgtozgSTeTKM=;
	h=To:Subject:From:Message-Id:Date; b=BxnYvpwLi87luiXEnu0ESuuvnycuFnxBKse2RgG9Af26IYhLqZBInVBdwZxwDmgChg1DgbkFb9xXAonZPu8Jr/Ha0Yl/j9Eunc8ifjoTgXXb+u+RF7FXaQNFY1li4uaWZF+ImSQzPfXYDobBvJ+yHtmBo1FECyMK+eZny7QylDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aojy4MJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aojy4MJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6BBC4CEDC
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733276153;
	bh=xz5Y+Kn8yo9ceAoOPmBByCEf4ctkUc7ZgtozgSTeTKM=;
	h=To:Subject:From:Date:From;
	b=aojy4MJLwJ2J+FGlfu4O9ZLrbwrw60hDcxBDNrlJrmyiqfZ6V9CHuhiO9vd+ciSl9
	 l+tlrixXKYxtoiUmKaQQSzwE36866+D/7f9ZQCUUDIaKtd6IllNlBBvPxIQ2cGB9DA
	 UqUNMQOu/VLI/dsR6JbhHR9roGq22IojRmsM2Fq9ijDQRoip7j/UyxhrSWmqwGzfe2
	 Ew2NSCGx1cNBcecNArB1TiEbM44sSGmLRVeceXgwKfEs6iQSBdQpIlYlBxXT8oHp9Y
	 fEauHYE4OKu0dfdvwkm8hSs5Ua7LnpAXhOOO+n7Ut9nimBmAgyn/P/boBrPtWK1Zxn
	 LcL20sAwoJGKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B000E77169
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173327615362.20049.16091875642594813484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c4024f103e9ac431f09edfc91b2fed69c9845a77eb7023e93620fc28675ee3
Date: Wed, 04 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733276153
