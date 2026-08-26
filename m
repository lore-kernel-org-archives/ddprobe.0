Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C73E6FC3
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787734234; cv=none; b=khx3/tREXlbeJwS87XnSXW7FFqqKSTeD0iOALxBuUpkJpaJZqBs7YezNjavPxhCZ0QVwUg/lxSusHxkjHuHmsNGyh8EQvzGMkfwYGCue/RgI5+wPtkEFLBtjr76A6zRjcqSv3KWNfbiYv8uPNi0x6BASfUUnVQdDAO/gbY34d9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787734234; c=relaxed/simple;
	bh=jODJab9qk29Rl/l12Z11PrttU/DApLY0gTiIHG1kljo=;
	h=To:Subject:From:Message-Id:Date; b=C0o8Ht/do5kwQ2fxwJ+Qr7cALOOutGa7YQdL7LindtMcJ4CYa+qHtjXEtWsn5G1wz7UQEH9oAIiN6crCXd7stTx5H45qxDzZp3t1Q2FxMQlyS3y35/4IemErGL/buPjaDiA1Mk4YgGg+4zpeJEvE+TQO/0DmMsa36hqPk/Tju1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sneb/e+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sneb/e+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D90C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787734233;
	bh=jODJab9qk29Rl/l12Z11PrttU/DApLY0gTiIHG1kljo=;
	h=To:Subject:From:Date:From;
	b=sneb/e+zHXf1SeHkFgOt5ONfDQgPrfRq1wYTNwVmptCOv9rkycU24IzQENKAt89ea
	 kvj/J74SWUO9cq9SLnhQmlRE6B+7hvurAngnJlcflHbYNp2ZE1HBRW3baJ2Mho5lbC
	 n7TmsEtVsW6pv03hlHwqRH/kbUPeLSLM5G0kLofmPxu9vylVcFZVE8TFdBQrgY+avH
	 39yTX909hK4oQo5pFZW79oXk2ikhBNYii278UUXbwvq3tXnOeF2xl/HF3vNzeVHssR
	 ERiKiNzVTG7sqobHtFHScaIiLAFt68Kgm/WR3ZMWHcFO9n+AmevKLRolV0G0ui7PB4
	 INLbt29HWmy9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFBEC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773423371.21944.16082952823617860557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87d74ed5eaf82e7df9cc24d16bd6d46355a9fb0c173e4ae990ab676ad229bdc7
Date: Wed, 26 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787734233
