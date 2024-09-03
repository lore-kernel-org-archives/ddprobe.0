Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2957518DF6F
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725395754; cv=none; b=VUFiOM8CX13/BZc73lrqN6Un5Ip8dUogfFIdgsRliddcsAg4djqd8vVVskos4lhSDYOVl24/L1Fu36wzdP5NxofjHDQCSgx3bjfevCQNR8yA9DH66OSwR5A5bAVdKLj7/9djdin/D/b/6T54Qrq67kfFO4PlWXTK9cTz/aKhrcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725395754; c=relaxed/simple;
	bh=2MQH+x/kYbOpfPw744KIzM9UQ6IzNw5zrGqeF90LdVE=;
	h=To:Subject:From:Message-Id:Date; b=JZ14AOSXM/nJcs1mRhWWRqa/CJ1tEp0wHlYT8eovF/NE2a6nSD34FcqMX6GYitNYhH+6Ex7xYrAc7Ck+DKlLW1RxNgZRaDVpA/SG5f+MlxJ2YH6zdwfTldDtoOqHULgSfA5LhEmA434IB5aGxckUAUdP5VuHqt/pIa+izGhZywY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L28zJTsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L28zJTsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECF5C4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725395753;
	bh=2MQH+x/kYbOpfPw744KIzM9UQ6IzNw5zrGqeF90LdVE=;
	h=To:Subject:From:Date:From;
	b=L28zJTsTaWWgH3Iu2x8+WWRIHZtkELMzxZTZwjdZB7UOejbwJ9Xt/fzRWxsvmjWTR
	 YJz0v0jALDdqamj8WVjW0Ntx0pnZ1NWPWyliUfCG4ay4u7ZXDVSl5lM6Uqw1OosYlB
	 Nd4yHwCQYU90dVp3am0DF5fIH4ySCxqNzoMnEcbnDYGgVrxY7mKFuN5wbWAvz/xQei
	 qJT03fiovlgtzpdIHibqHtIjf/gB/LkD4FqKq0DJjlowVFxfJIDR2LVrYt06fcSVZl
	 SpiSj5uyXXc94T39ShgmzcoCzUbTUKvoHxPjRrjL588A3IhNK58SKGCY6m8qZFlTRQ
	 HxqBgxpKjVErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E57CD37AA
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172539575360.4830.10533532437150643871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a63ff2a3052ae1c8acd1fc853245a7337085481552aec6ee518aeba841947e3
Date: Tue, 03 Sep 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725395753
