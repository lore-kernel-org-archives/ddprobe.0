Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E95B37708
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719868523; cv=none; b=bdjEIWT6NXNwSvZgxKC6wmEULoq5chDhCYcVTusx2FhyWQjg3q/WoZ3KUj9vPP9z5ZXCN3sEuKuwlMVg5K28+8ASKaQjm6uhv3Ci4Bt35OCl6wj0LIvAsbV8X1dpmaEQgHR8KFVEa8q47dunAaFGsPU4d33yF9TFqB71uzOCHjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719868523; c=relaxed/simple;
	bh=Ev/CDbFm3sT03kmFiHgTQZbT5GsbaOlf7kiVft1SEwI=;
	h=To:Subject:From:Message-Id:Date; b=IfYg2RgCnKdKLiTTjl/mugerneufzAn6VEbDhl4dfphd7lp9mArSXEzSaUny7MFHmV82n0YXZT+LZb2kLuL1fdeQa+182GKJGthAqSVC8Rlu6YVMnA8I12/B9f5mxBbiqtIZj5MNtP3OhmIgbR6i6HKF93+DiEoLSy4g1DW/gy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTcK5lT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTcK5lT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E36C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719868522;
	bh=Ev/CDbFm3sT03kmFiHgTQZbT5GsbaOlf7kiVft1SEwI=;
	h=To:Subject:From:Date:From;
	b=eTcK5lT9eUnYVeKS+CuLtbWQoPJrgkUL4nW6hYhVIyCvm5BpVB7MLc2+F8Dm5lGf8
	 2FUbqZIgv0alFkSgs1SeDriQrGEBPiJ7ln4oShqak7KNaCBDNPuBCzf++0f+igwCCl
	 ecsw3h/Vv/4XD5O6wJuUXAZ/IK+C0rkazwjzyz6bPn209Xk/iWt9vEcOCWapIm6MCE
	 37dAowBetjYNDUcH7tqNW/i4TuvZeSpiFK7q/R5CeEI1vrgVXo+h1UazkT04gtn3yH
	 legQ0zAnN7RTXGH1xQuD7kWSJSuFvTKbfTMVQwZAaTLBaWOFow5XOQSBAc8j4mANN+
	 3c68KtUeqrLnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C395BC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 21:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171986852279.27968.14986692640943946985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0aefd4c965193027b269b2ccabf104f520e7f52ec63480c57d93dc8c2fa712
Date: Mon, 01 Jul 2024 21:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719868522
