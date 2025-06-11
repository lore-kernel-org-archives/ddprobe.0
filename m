Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED802609C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749634194; cv=none; b=TWbQDbrblT54sXxkFtdNacmGHyrJSjQMzHudEx3zOdIPyCSkJhZqbOD6wcCOYKf6BXx2gwcUGg44E3y4dAyHiAEbkzIWV/8siAmLi5lE7/kSi5OMd7HKMscaSE6yZqY3im2zpsf2N1OH7gKE7MzIwiu+j8Zim+dKKmW1rV9zuzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749634194; c=relaxed/simple;
	bh=If3Yd5Q1NzGZc3Zp8fp2b5mSe8BaTXPu19g09c4GjYg=;
	h=To:Subject:From:Message-Id:Date; b=j8SLNYtjzenzJfSYa+O4dunITnBfGmF4AT4Aj9ej85KaxGOvcBICh+rw8016uACHDDubxCF4HvDNchECfWHu6MZlEooCz0C7clUASyxmKO++UML2ZjmQG3teJ+CPZxlQib9bu2QkGSLos1089ODFXA+Ih7uH2VH9ChBYD3X+118=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtRFryOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtRFryOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F39C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749634193;
	bh=If3Yd5Q1NzGZc3Zp8fp2b5mSe8BaTXPu19g09c4GjYg=;
	h=To:Subject:From:Date:From;
	b=dtRFryOmoSUuwylidri6+9eOJ/JwCIxRZJAnwFXKGEqSkj95DXWbOFO0ZmbNzVKnh
	 HnuXMf+ozEhwERw8oKO2YOaIa4YYD+LFvsTLUqFx/DqOaxaPOHprCpP9wi1FwWmbBg
	 huclTY4dmyFAGZWd0RQexGsbGK6zoZZszGj70SCNvASHx4sr7ZvAR7OD/Ar6eDl95E
	 XQCT2pdRZbtp8DZiUBxSR7Ol0ZV7Ff0kqIBxYhjSOtLN7PpziTCGVWUZoEqlZqW/jn
	 B7CXP8smjPrPVs8WPDhQet2c4c29VirwNrpgI3zG4q1vZA3uZ1zN9tN9up4WKV9UlW
	 K0G/36mXDgffA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900BDC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963419358.15877.13027098632819263129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f86b53f6a211523345860e60dba3d1d4e47d8d4824f54fd0ecc1a8f62f3155
Date: Wed, 11 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749634193
