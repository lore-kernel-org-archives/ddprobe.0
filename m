Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A59596514
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788964834; cv=none; b=RgSZQCtg3wQY9oLwv4qk1TK6cCCzZEncd5iGx2N3OZGa1Ea5oWm8AbzpN5SmhzxbjilrGfeNCwrkXQacVaF1NdfmB5t6RQ+GojKviMlcqBdBAMHXHTi6kLGIvZSKgxKYZlg83O9vx8XT9F7oVF/yol9uEi7ljqv2OgjSQWWlWBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788964834; c=relaxed/simple;
	bh=I6XlinSZJ8TQvlKs9pXTkseLh/7DoevSfsHEY78r84k=;
	h=To:Subject:From:Message-Id:Date; b=JCdZDrhbJxwkv40G+VOLQOEvQ47s6Y+zQaY/ZB6XHNF2GWxhWVXAi23XBhyNC8ROsm6etMcQ2Vfbf7shi/Z90p7DU1eHPy2lqeCaj4FavsgeQLPnJTC8T8KCr9embfx5syDRxdBEBqZayvlhnT9bV+4maAeGa0h1InuVoYxInQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajl/Q5xe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajl/Q5xe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0E63C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788964834;
	bh=I6XlinSZJ8TQvlKs9pXTkseLh/7DoevSfsHEY78r84k=;
	h=To:Subject:From:Date:From;
	b=ajl/Q5xexmjRixvs18fBCcGz2iOUtpbLCkyMhyqncsCk3RP0Z2KsxbHTqzuZiew4U
	 UgpBg77Ghjt5kBxNspkp1GBoXBE1lRu+8wqctuTp3OkRKUimFnSrnqgjxIqE3FpbVD
	 DSHD700WRNeUrU+yYovaCx8uaaaXZuOeVSaV7Yzq6h1w0Ymc+Uaw8n5VdyfSbGkDyx
	 reC6mJ/aIFZl5AKFfiEWauGePzsTqZIZFaL/Ms3kulp2GbGorZvswxLYXBXzRX7dbU
	 5lNOKxfk3K8aCJYfp76kJn4amWAxN4EfCQQMc8tmMIv5SDrRahLSC0oGQ9DpmMqZZm
	 qcov3ufPjTvYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBBCC79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896483375.18961.17270400680970529023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc5c15326684e3e5786d7cc94493166152275069057412a2ae1b8fc34418c282
Date: Wed, 09 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788964833
