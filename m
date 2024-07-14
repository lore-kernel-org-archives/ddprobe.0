Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0B917995
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720990823; cv=none; b=hANpA8CCcGGu6zRY6x1U+fJD8OYU4ZOwEWF+qJJ1R70mSBNWwOODltH1lYxnYJ3v/qUw7OfTLGggN3FnZe4NrsK60Q+izKUg6JLe5UFMa9+GO6qYQIIpOvvCz0eDQeGu2y8W5ZZZx9FsnJJ1nNmcE57P850jQM/xHd2TjXob8KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720990823; c=relaxed/simple;
	bh=GyF4BIo7eDa2ERDID3/TEfAXN73wvfMkobgrJUyWgvY=;
	h=To:Subject:From:Message-Id:Date; b=COo87sqmgjcHwgs53cw3Q03KeuO38fVrfYTj51Zfelbn1XZcS3wCozCE6IJPoc2G8thal9nOkWvTFRzPon1eRkXbhwXpmY5PU+3S+H5x1IL4XrH0IO0lcE550kbmrYGAs++Qh23ipg1RFwXdrDDjtQi1MKl2KvSYGiWpcmaqgCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7TgO9T+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7TgO9T+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C64C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720990822;
	bh=GyF4BIo7eDa2ERDID3/TEfAXN73wvfMkobgrJUyWgvY=;
	h=To:Subject:From:Date:From;
	b=N7TgO9T+alMm2F8zjDjDKYE3Q1dWgiZ4jNCt2CLZAfM4jroxWiXs1GjD1MEjolhmX
	 JKxYcqP3EWiVAzXvPJFgQzCDfukAn8AG/t7aEEIdYGy5/k40AImdR55wTgT7JHy2Ab
	 1TO9/Tn2rS54lJqizBBcKUsyK+Bflf72e7XaNDgzqhyqtcG2t32JGKotP4usfxgGWX
	 zGlGacHNyZzwTl+QAyS+/SN8y7GzYQucEQ9euaIe0MNMCtS+gjICrfjQRGxXZNgpy+
	 Vhr2FgoztDPhUH+6OPwF7fECVjKNkYfK4odlp6sRr+4v+fZHjSd4G+qedCdu89lBCc
	 ldhI8JJQNscuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0F08C3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 21:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172099082278.4353.1987084404147228803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867754b491fd1d1a47b16a5047a5fe664ee9e584b2a52bac2df720b490918123
Date: Sun, 14 Jul 2024 21:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720990822
