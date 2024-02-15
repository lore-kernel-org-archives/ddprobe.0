Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4619912D74D
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708006097; cv=none; b=kaSf18FWjfziUjY5Ctx+BBW0WQgk+VeVdxJtzMvocC+Wy4YuOFdPDeIcH+8sKUANCIJ12ZPV49r2RROHyrnf89ParfYeup5FrykA9tmYwxrBcq1yw7kIKKdwbTfJZutQrwul2YydJJyqolSZroEQwvDJVGDWfzMIFCKXTv3pgtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708006097; c=relaxed/simple;
	bh=k9WQubPcxu3rsEmvBQeGq6OMT/gEy2oGeJ7NjGxwVdw=;
	h=To:Subject:From:Message-Id:Date; b=k4N8dd0zH6YG60+SwTQJoQoFHnsn0BlHlBeD6jCQWv6DM611BKUw+FtxAoWkxpY8ijA2TqEsdxEQrBrK2nFX7RgJgD/RJEplzcFbzh+7YF80qhm9T/jXHn+k9CWuMF10xNZLy+FO2bZFbJigGSsqAWgqogvL0BMr4ZXOzVosoE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFv3AWAV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFv3AWAV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD0BC433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708006096;
	bh=k9WQubPcxu3rsEmvBQeGq6OMT/gEy2oGeJ7NjGxwVdw=;
	h=To:Subject:From:Date:From;
	b=SFv3AWAVNzDzcyaiJUAZVPyruQ5i8log8qIYT36LhlU/BsZug7zjL6Y4TLpeUhUgZ
	 vRYVPa5nBurwM0o+1QLvbgTAqx6SsWiDqtacSvZYK08UKrrjhndhAOX9FQ3SZpINYJ
	 /MvYvHh1RJCVT+2g8MJRzalg9VeYmJNPGE6NDJXm772v3HW7sHzfTUmVIdLYQFDPJx
	 z62yQbcywDRGdZxgDK5B7DoyIN6mkasV56CL7Sif9xU/ZaC+hqqFgKdMNYpB9jAtqA
	 Q+whrhsqbRevIaqsNzH0OJe72DqL8mQowabGr3n+5quPLmh4I6LQInB3lrCZcRMLs0
	 gIns0JotG2xnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8841BC4829E
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170800609654.9944.1919082624072986658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7559f0bb8f8b95f1de6c1b6c36744616d79ce122b42e4b72f42d677350c2e05b
Date: Thu, 15 Feb 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708006096
