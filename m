Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3E328033E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749545394; cv=none; b=Gcm1BX1q0hIvvnEpkQjhiF238kNf79m6w2+no2eivypXZcqPLsCj+v8TJUcehs8mD3qwst+pBwt1CMCx/3Ixkro5j7pOqIeuuh6k11iQqpsjLblbPM6ZiBPsr2aaKpLWrgclj69i5c22mBY16L7B+y+Fqn5LsKuFxGxDN5P03LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749545394; c=relaxed/simple;
	bh=qBJPF148P8jyYqYk7htf2CY7R18ICQ5CMeTrLGVwNRw=;
	h=To:Subject:From:Message-Id:Date; b=ZTYDapIfO10FqWzGTCvPk84DmkpU5Qm0XCpYts3hJkjXVALp/Q55JrMkiVkPQ9KX0600T+RYzW74fir9BwgzWmzALXf464ybwcbdQo2SJ14fQ7KuffCpEElvfXVo8+6uscXxm52DsYV+lybFgpF6YQyFz97u+VGNSnOnv3hXyGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnvECncq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnvECncq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D40C4CEF3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749545393;
	bh=qBJPF148P8jyYqYk7htf2CY7R18ICQ5CMeTrLGVwNRw=;
	h=To:Subject:From:Date:From;
	b=RnvECncqwxmTA7j4OYmEj2hNzmvA7avdNTt+SWWFzWl0q01xIB5KLD5rBl9wFrsqo
	 2rTvYml/ipEfcAsawM+/swJqUePbFZ3BBE9XRAs4/RrSdq+ePxmbioeaxiugSywQU5
	 znRrgYqJk7XEIGvsjgj1dJl9HdPrXEe0BP/7ufzjl0FP7D4umIiXQH0x1k2aKDBFBo
	 KXmW8+/GSKhVHKd0Dj/OdfllYogmqelrAhX3SEX7LSrFpgoIhalUkWbVlwNroRs/Iz
	 YuuCYTf5iw7KRuhvOr921NtzWmPMBeLRMgSUG2iFsOjWaBtDGHVVZOXaUG54y10aGz
	 m7a4jyktmg63A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9ECC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174954539358.16600.2085762186269861010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73af108c32149afc5ef133218d226c0b7de63357f7e3fc7242215a5df7444c54
Date: Tue, 10 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749545393
