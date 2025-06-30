Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3817715A8
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751246394; cv=none; b=bEf+QHprl41z8kQFwYKIstKuUe3/KGqMTny9If5GmkJCadQLVe/1ewX1/9sLByv0PwNZ5wFFYFEe5TcjL2kXCmJVbSGu52uAxZgCQ7LeuuqEYdFfnFdkvk2kKt+NJP5WR7QU+v2MEBToGIezqspvu01axaz37V2zXucA3s+wA8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751246394; c=relaxed/simple;
	bh=15yJzvyD5nxPPzt41pQYZ0jzgLVPAmVCVOI2ncYczWo=;
	h=To:Subject:From:Message-Id:Date; b=U8DUrShMN67CXe294Z/RNQn/YGYVARZY/jTN+5R+7BaV41M4YO9dNnNgST6GKN2/zupB47/EUWtdrgHpvP2sGbGHxMlUtlaVlU2gulMx/TgiR69w2NFqVwEwATVtKM0KzR0Q1TjGQ+AzwvHpUc7r0dBtDXFi8Fn3aFjUc1oJl6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjwED9OF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjwED9OF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F713C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751246393;
	bh=15yJzvyD5nxPPzt41pQYZ0jzgLVPAmVCVOI2ncYczWo=;
	h=To:Subject:From:Date:From;
	b=rjwED9OFV0OYoLVfoz+ewHPan8Ku4+CekWWWMHuHbD8P5lV6uOX3wAAxFtesFmrUH
	 P1VVO6wodw521sQl6orQVfUPk1YzErvwLM2ohXoc1IARZHi6KTJVhdMLf6zqfIgo5M
	 5B8V0lAbwanYPwKf07mkcdZFtFHnO8cpWSK0WBYqYZc1I+Lq5asafm2dAHw9uoOWXQ
	 KRCBZUzIeeZ5CjaDeXuyf7qCqOLzrpVasf+XSf55+CZbnMzECBn6Q7O9D2WCMLP6gk
	 EosKP66Dw+VexMjID1KjmXaL5y51bwAaturp0yNY/seEbTBJeUySXLPxAEwqtQ/6PS
	 M9GjDwYyH32Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8CC83026
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124639357.4097.16458128514767740743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03cd2933ac43e879135709e103d4a7336b9187e02550dbd435dca37bda9b396
Date: Mon, 30 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751246393
