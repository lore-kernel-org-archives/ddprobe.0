Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D48A393
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715208743; cv=none; b=dv38Eqm2zpS9nKiXTcufaur9W138BbuWdINFnbcNT1/7wtgZbYzA8ruEyyZD5wcURRLyU5tSv17bnOY+cMp0JK/JjrHKaF6ffw2xOgIyQctBHBJ+7/eV5KyWWTeoRCs+Ir+ClQFkgLvqnluwILd4RT4d5AWIEkFGKhGvPZj386s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715208743; c=relaxed/simple;
	bh=SEjwEmkfSi1SkB9clvqq3MAHyNqhXRPuJh4QBLV5l4o=;
	h=To:Subject:From:Message-Id:Date; b=EJxpxfOBh4S8wRVzYrTH538472r5lcCsh/YCVOZyq4chhLKuBiQAp9Dofb22mhgRWDuODJcHN4Y5DNR7DYXz9cdbI+Xl9iTINgeAzYbmZgVcDwZrtL5i/+JsWfsKP6ZGIS1yGUtb39V+EsIqv3XpiS1syDAy2MU1UlNbEtVsr5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THzB9PKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THzB9PKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55C2C113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715208742;
	bh=SEjwEmkfSi1SkB9clvqq3MAHyNqhXRPuJh4QBLV5l4o=;
	h=To:Subject:From:Date:From;
	b=THzB9PKCbqJSbwTiUVjPSSemncqhqzAfU+G0rD3pG3h2YZEgoqBzjsTwrOU4biZF8
	 rPHpXzkKhukGYwA7oJsFex8r/WB495GbDstaYDNZiIHzObx1qBSmtNjDouZjZc9L0B
	 Re0H4+yAlk3l6XsNLwEBWv3a+OuG8A4hOSa1KFpk7vWrMx1ogF07hvGxA8uS9Ni3Mz
	 lmuqgOCSVh13neeZePatnCDu5ljv3Y7kNfiDXi7PfhkeCiWosC5rgeA9nPSnOTkrq9
	 BZkFI2jDZLE9fMUm6Ikj+RptcOSkDdUbHMz9PhHoUrNgVgZhpZfEepiyeKPw8XV/Tx
	 Ca/26tWnscoGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4267C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520874276.23646.6168584390161758483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357b67ffc8cb80a07cc7c9798db313330006fedb72d5f2f88eafb323761b7f7a
Date: Wed, 08 May 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715208742
