Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3A92581
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750654194; cv=none; b=jRNOm9EGhR26dB+eBWBl2hzHFfqkHNuQf1p17rp258Z+URYmIDhB9Vi0fP8yKmUonf4GZe8OPxoqCeRdJDXMmkGvT3FX1Yf/PGgf6FsKMQ6nxSCJ4NdPk9IBOxe3eoCyX73RH5G09pqA/a+v7H9TgxH3UbKvt3bn5xp1iLQdnJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750654194; c=relaxed/simple;
	bh=13r+YBHbScqHXa04QgWQImSzQQzSbVfQ18BodeoF4Nk=;
	h=To:Subject:From:Message-Id:Date; b=mtt/1PsxYU7UyjB6atOcDEtW4oySYr6rjuQqcFhTlGsbPaCpaCSFW80EwxTGBQcOFBk3Zcg/erjVUcZJ107yf90M8VHiZdgx5cbv3tvON8IHuEBK8ZJRQZkoT8RlIhlqPKshQQrzp86HIQNXSeNwRSzp2ppqbMzU46nIsx122Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFK3buAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFK3buAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6A6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750654193;
	bh=13r+YBHbScqHXa04QgWQImSzQQzSbVfQ18BodeoF4Nk=;
	h=To:Subject:From:Date:From;
	b=eFK3buAOzmFjVj+nL79j2TxH/6j8ASb6y10+ML/Mik3JtK6aVosl8Ln4xCxpk4X+9
	 LUjGAvAdm/jOBZXsBnketXTwI2a//jlcnJfyJImpZMgnaMfFZMIFRCxcRSj5MGhP2X
	 Kl8JKQqUkC4fIIFXc5STaciX02SNFtxJWboSBCsj5iTS5hsINt5rEi4meckYZfA1O/
	 XzQb1ZAcNtEcx7gvydeNCAgp1Ye9sluDQGKqUkJ3/vFRyzJorL6M0t798xwnHWot6Q
	 APaJ2Kk1XgHSMRyT6CSY7OKtD66fJ2dAlpjreEK1PkxkMpthDszdrwEU9e39BJ1Z99
	 x4fCn7rB7KZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDD3C7115D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175065419357.20177.14881447466380038232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271b2b898322695b58a6790f0d656b6581c418f9553698565e3819fe35c85c8b
Date: Mon, 23 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750654193
