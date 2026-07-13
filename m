Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477D817A300
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783925314; cv=none; b=ikIia4WWQoYKQi8NUvE+Rjgn3TMG+Y6yoW+nssyLTi6v7qiUSfYURWX6S7WYCfsGBIsPKtOK4vtHVEQcqNn2dUu38vQVxHod6KseuS4Bm/NPVOdYnQT0/qV0vU0DizPx2uCv3ZIN/U36cBJjwIyiqXruvzYmWY8jTOES2zfIsV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783925314; c=relaxed/simple;
	bh=XSUyzE2PtEn7ecPTT23dNkT2A8hNZiBJdWf3CVzZOpM=;
	h=To:Subject:From:Message-Id:Date; b=CzzHojLhIa4R+6Dcy2SQ7ZJ4Abr29Cqed17XNcH0HhkpfAdt2ukMbuDknYIq35mfboczwpFqMtEP9c5WK541N3eKngVAkrfecjPerL0zNzjOMaa2A1YHVJcv3K05SMW5ndtb6zVgP6zYAVGpCcNr0lB1a5j/v9ij+86nmGmMfFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Scb9Ev4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Scb9Ev4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D580DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783925313;
	bh=XSUyzE2PtEn7ecPTT23dNkT2A8hNZiBJdWf3CVzZOpM=;
	h=To:Subject:From:Date:From;
	b=Scb9Ev4ZRjGBg5CzmQYUMsYOUfbaa7k+vl7kLFNH7LthX+znhecM+broH1BximIUE
	 /QSdVAHnqBwVxTqV9VL6iz08G2FY2l25CjJnQ5xn1yzavqDNWfcCCytcVzMLdgzN/t
	 M0GRkh0qgAgo5CyAVBWRiUFxbM8S6ODH5HQPaUot3poYDGWKZD7wtcuuxWSjygJbdX
	 RcdCQjMGiFSUoXqZQpiogUQy7MxkuHi0POET3uwnxkDobsq6KLkZujNIi2zBLzkQ3/
	 eimplN432hZyqAcybJNW3xg9KXyzDzcBEgQr6S8v6hg8hbmYTxF4pqb7VG0N20+zaR
	 gwx9VOAm0zBYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF369C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392531368.5561.6778106666554589730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29d27032ddc6a831c5643b5401d6fcb6e5f28bc8b196600ad60fae0580a4ff3
Date: Mon, 13 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783925313
