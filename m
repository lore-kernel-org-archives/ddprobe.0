Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1403128506F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768256634; cv=none; b=C1QjEuNIAMKYjuheaAlwfLTM9m4H4zCw+5UrqOAnlGnwOV0vNXNNpb4y/e7ydz6TveG8aae/jMyNwEqZDhclUzF1g2HD0blfjcnYArvCWx9FPMmmYNTQGzHEPDiR6suJxlxd325T1X29ZTQhZKSXZHKQIKside+GThPK+vhrgcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768256634; c=relaxed/simple;
	bh=sLhgv/XGzfymkrSKyz45ML4/Qke1AUFoVvGUIRNh5sw=;
	h=To:Subject:From:Message-Id:Date; b=XkeqaMV3DwiNsyloz3Pa4Zg1XuqB4XF67A2AFTk/3hQ37K/JTA5AVDKVMn9IlY1lzY8awUf56c0HPKpy5bL2yWO+1jI4x4b9K4exwGq8/UDB3C/6NTEQDKgQcyatGJxiAKh8Kj5uR1ik8H2sHudd1OrKH5yKIIazw16XBGC9tg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDmFVKHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDmFVKHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2420C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768256633;
	bh=sLhgv/XGzfymkrSKyz45ML4/Qke1AUFoVvGUIRNh5sw=;
	h=To:Subject:From:Date:From;
	b=tDmFVKHBf31hUBAcZueURGupT4MTI56t9fYilH5dgmTKULqh90u6ILH4jA2PjNFxD
	 ARbaTwRDA9fG0nUR3RsA7q0Ynr7jr45s02MAupCKhyVveLLnZWA0AypBlCU4p4m9pM
	 W7bp4oz0+Rz35HJtLp6cHQWL8m8Cc+dKIXSgro9XRnUNi+Zr0DkQJ2027Ug7HK7uzo
	 aCPqpbEESkM8EObj1xRP1vtgH4/idB7ZargYIuBix7O40AJ2xlQKKy+F9QloS722WY
	 OnLZsabZYFKWULCoLXvMxQkRF0ctb+ue7diGjB2vBpnKFQ/qgpIUsuWVMH/c07a6pL
	 jjFi3tDhj/ERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C88CF45D5
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825663358.27100.11928847365392499918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6178a1084ab0313b72dc9f3fe6f7ebd4bdec04691c5a788ebfb8d64a786a29
Date: Mon, 12 Jan 2026 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768256633
