Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B938202F67
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742724594; cv=none; b=Wf8PbmQRwbQfB2cGoBxReWwDHIetrKNQUSoNnp5V/EhrVjT8tZoBriHs8SJn107CPYO2TYHuGmMNJX2kVLbIt+Nz/HtYlaqyG/8YKEL1tv8gp1ge0GKw9GUahtcOdHrXhi06KQd4WsMq9Vzxb1ZSAUUuxgYR9uMc9Wfakt/ZALg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742724594; c=relaxed/simple;
	bh=GTXVotbut6LaGcRfg6PLpx97skwFiMTH967lDS7g+UI=;
	h=To:Subject:From:Message-Id:Date; b=u27sdPyK53BadhpHu0dqyBgapwf+c1b/gWT6ldW0cdSFShoBjIbgoVo330sEJoatftHeZF0M8rqrfZEY2sPphUgaJwb+RugAK+Ia2ELSZJ+jhC8GqdtDAOpAmoTHOPBpgb4/SIzbZcvaJOTDIdh0LmYZUlohifyLkuTGoxuLins=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4RaPIzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4RaPIzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B63C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742724593;
	bh=GTXVotbut6LaGcRfg6PLpx97skwFiMTH967lDS7g+UI=;
	h=To:Subject:From:Date:From;
	b=V4RaPIzKf+YXVnmfB1CvCOS5iskJd5f+V1nNkiH3tdoZMS6Zo6lzdCMmHl2B6HkFe
	 xjJ5ve+0YnXuGajs7HRx8Mir3NczXeVVHzgAxXBm4ZhoCAujhikX5JmMIBGjncdLKY
	 Rk11kP39n3XI1enr+AVKUz6jElYAf6eBKpqOPeotnyaqQV8DoA92m/eCN+Ld4qu3nx
	 h27dI6yelFmVB88S1cFaCF2XSpzo+0XeHH6ICS1OBT8YK8WvBAoK+wWXa7ePHk7Z8c
	 bUzti3CKkzJvixPt5HWVK44yG3lvWm+mkpMFJTAss4hQdwM2iVrvGakd+HbBMrU7+v
	 XILxCWMYUj5Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9916BC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272459361.14498.14964178945811358716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce0ef4c18823d31373e0c92227cd37cd00b39fd95a03494bf055e5438a5503d
Date: Sun, 23 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742724593
