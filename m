Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE952494D8
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771093494; cv=none; b=dkJoSHf+QCKrG1sruC1x/okRohQi9l6pG/z3cfCuW1pc1RD7J7EBvmbWV6K4SAutQIpnW97NuX7PwBQTxZ8qvegtV/amTpzlNIg4cawQvLkSN6rAnnAGz0lL7Vuck/eC4zILKdKnpT64AztD3CvzNayrUvvQmQoKT2nNjsELR4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771093494; c=relaxed/simple;
	bh=FNcECVVwhpSKeSeORyY6tX34qk9saSVvuyxWE6VGa70=;
	h=To:Subject:From:Message-Id:Date; b=HNko0EJtl8qDCkJVyoSsXshjRfjGwfvO2TrFaqfvvCzLIUqvgAiiXxiuJKsEYVxrKD1hC+kKWil0TNQF5PCF3cS18xyFGz3YyoAelFV9ipqJ0YgvP76c0P2IE77bM/0ntOLhwB8SdfVzMmm+4afgx/0Rf5i04M12m3etHfMiJPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFuSS/Kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFuSS/Kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B628FC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771093493;
	bh=FNcECVVwhpSKeSeORyY6tX34qk9saSVvuyxWE6VGa70=;
	h=To:Subject:From:Date:From;
	b=BFuSS/KnXYdeMhx18pMKjXMxzo2IDWCzORMETifw286HjW+ZZ3nnMOvE72NIfpCvv
	 60Te2GYJoSmH2tPITRUUTzXcA1DfjtPHRtAo3KokIF+G+0ZiAg2+g/I91IfNG/RAWd
	 wxa4ZjBuw8s6/i+Slu58vJRi+jZI+a+WwoGhXjCqasmgHLVWBSE212UEqqoPXQuy5S
	 WYpm7amMyXNzrR4UNw17qp9MKk8nBskmNcAo0w491BgCvCbumAhVV9l0X9Kq3b5i2r
	 Ufk6l6DEGhYI4S5XyHPD2n1wKZr+s35FoO3Lt1B0ubknmhPAsdT3Q8sNbllrhyqOxe
	 rcOND93A1H7KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CE7EF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177109349359.13102.9659721262094392943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a750808a10e2540cf271c33eb0753f41c56104c6f15abbc561298ef139e40f
Date: Sat, 14 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771093493
