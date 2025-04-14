Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BEE5253930
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744649994; cv=none; b=Bw/ukhABfn7mSzFv/nXY+eiK0bDB+lailnkPp9EcVFS+eX4IJ/QlWMsb3nsmRapZMSWV2QCoPan/pl7Kc3cqqoAMLcv91L9wf3u0Z9fSznKXUvwM9HuiJbcbol5SKBemLKq2R+c2fZkTiTuSY6NH63/G4TpStemsIsyXyUkhrCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744649994; c=relaxed/simple;
	bh=3DRSHXFZsc3S6ISrgThZCFelpC2pNHGoBZ5m4dZLbnc=;
	h=To:Subject:From:Message-Id:Date; b=hcIlEQSdLUFgijLg58Rp+eOMVL5MDgOGNlFg8QV6jWKIjZMI7ueIhs+V10tBiBRpkn0srivDnzTdCz9HPqvx1jm/0v1SdSS8iPZQPwGIuapTSQifdCfLKjUmeBVzZxdflEKVB2vbgBTYkZjH7a65RoQJ10cuwsSXvgVyqlAI8/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lxe1S+v/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lxe1S+v/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACC8C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744649993;
	bh=3DRSHXFZsc3S6ISrgThZCFelpC2pNHGoBZ5m4dZLbnc=;
	h=To:Subject:From:Date:From;
	b=Lxe1S+v/+OHWEKNQjSgkh0NsGqX1o3RhaibpOSyb/dFYAYK+pS4fFw4ewhy1wcZbY
	 n0fRjQBC9S2yz//0tOsETL7QCSKgo0K9ebafVwZMxqk0kT07kBXPYkre0qPEjHUOQC
	 LiYmxYorzHN4YVl9w9WULThu5MhND0gzmqX7NKDphOcGF1jymQfdonsQvH2WDEv1qw
	 TA5YPop3F9cweiBgBDgKtELrWc9vjPcrY0Y792if1XVd6vo1UdMkyt+yCYVhRA+bKx
	 EJuPEM8vsSRE0FFaGZMriVmrjZ+N0S5CEccWQHW9F40YoV/n2+CqqDAN1Y9EkRQlUt
	 G3WZNSUyXHpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955EFC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464999359.16087.6505141601972512054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f136e3caaf2467bc5d0221e5314ddb770cc0f07b139f64e207baca9b83a0dd5b
Date: Mon, 14 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744649993
