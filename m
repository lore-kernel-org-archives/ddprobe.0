Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552253C3C
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 06:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726642554; cv=none; b=tkHlu2QjCBWnvPfsQCZbGYjfesxqyS5DbxkG6EVSOMu+yS+DGd6+0cwAWl2LCj3fhbwY/5IRhuZPwBqvAxejb3J1qImib38d04Rsk20AQ6/uoxojSTfCFLJ2vMNbhUsYDSmy8f4D5v9bKTSc1Mho86mqlj1UlKTUGI+9O+4q6xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726642554; c=relaxed/simple;
	bh=ZJvCLC77jHnSXffxlhvX2f1/mvYW968bRkiuLwU8iag=;
	h=To:Subject:From:Message-Id:Date; b=KxkHOEfhLWmZK10UMcBvKBBRsRkHiVi+reUT+QZIkTtoaoJ/E7ZUs7EICzHQYx2wolBHn+Ys3As5UKWhr3NNOy6kEmiBcqh1fh6DgWRDiAjZ0B/4n4MCH/QCnLMWN5EY8hPLHDa7H5NHnz0htxtJs/2M7ua9yQjg3hxIBcHC+RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPGHnK/s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPGHnK/s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E20C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726642553;
	bh=ZJvCLC77jHnSXffxlhvX2f1/mvYW968bRkiuLwU8iag=;
	h=To:Subject:From:Date:From;
	b=iPGHnK/sIqC31AVwGqtMvkrFqmVNdFfEy84OaduhRj/P8w/oBqQnYKCY3kgu5spUi
	 FJXmbnJD5HKFeE8rOb0PdL+h11iOhIrVPd8ZaGBsdAcFlhXB5OQ0TkhLO1uUCApjf1
	 K4K5MMx3yr5hNQNY2E0VN4bdrKYYpUUpkzcZO541OvrOa2HClfnZ7cCEtl1b+rCnFG
	 eC74DZrDrywwvJTI9Lck0BslG5ac/qJS+GFBMuJ5U9c1Rntw6aGFSVePb1Vpqk8WOF
	 IlMSl+TqjzyfrRqWXNodIZ7Ked/Aa048Ps9a24gkqQq4asDxOyBQ+dVfylY9cyl/6j
	 ZTZD7+ig11Grw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BC9FA3758
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664255361.17363.3655289643749265865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b748ba6cf8d16dddc92824239e472106b1e266ad95ac783e108ac3f99863b2
Date: Wed, 18 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726642553
