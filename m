Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804791E500C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736245554; cv=none; b=c6Axe7OZ/BNMOuBU8jIbIjMeqigFn3I9DuJCHRCaQb5LUas+Ror0eFqg8doLU79z8+piINoiEH717aX7qakIkBRbEHUH43vP1ABPFuuLry1dz8J47cOvIVf9jKnTQMOWqO8l1RVszHDoP+5wP66esl21bWlYNgdEPyRdbX6kv1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736245554; c=relaxed/simple;
	bh=+ghHl4SL+tx2ardzigVJjzSBsYVeAjAOxFReOMf+4CU=;
	h=To:Subject:From:Message-Id:Date; b=k+FGS0sgV4z2xhrAsu8g4rbPj9YcWrTJVIjMbrUrOulSN438Ui4e6CrvOUgZeyqtXtDQOnYO9K9ZhUOlPELi7osimgje19XIrxK/l4gvpQte2I4vZ7Rh2mh+pZbxHGUQUsP+36y9E12JFA8lmJtwEdzE8BtbZza/twox1x9n9Qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vc0OBS7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vc0OBS7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6296C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736245553;
	bh=+ghHl4SL+tx2ardzigVJjzSBsYVeAjAOxFReOMf+4CU=;
	h=To:Subject:From:Date:From;
	b=Vc0OBS7k3C1EMQcP/pbY8hc/X67FtF6zGRCMLQ/MdNkHPP7EzNtzioq1Q96tJA+nO
	 EvRi3m/ymKFuU45+/vj7EmrrgcMr9MXMFDisSp1Ot7kbyMQTfJE41av7xKF4CLtJ0N
	 yUuC5oN+IKEeug/MlcNwIFWf4AV5TrmZnSHvtlyAwUpHrgMokgmbDvA+ySEsiVXYIg
	 X0O/LZ6uKpi2jF7tD2VdQRsQhE9wIXbY+/Oz63zcK/I8xwkrk4sPjKe6S63p7KWIxs
	 uFf+XmikN9UzuVFP1cyktXveBI+VwJfZnJWp3iq7voIFWZ9sMg3c5zWiw8aZNy1KeD
	 U5BEH3pi0MpmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC4E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624555358.21834.7201309458842480044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b1e557c01cf8a8f7ef1395774ba2496c013c8cd6d9a80fdbb29d2ff95a2e8b
Date: Tue, 07 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736245553
