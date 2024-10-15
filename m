Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34D6AB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728960354; cv=none; b=AiXs0Y/Hog1+jA0A2HOJ1tdk8QZY66IXD6e2Hsvm4mt1IlCK7kKKVWBx99JQesoi3wZd0CoKWi3UdWimnPWx5DpOd8GbDH7Pe+o+rW3dOouO2b8+88JQACaAEwVNhNIhN7iRDuLFqaeLa3s5R9kFviK0hldFkusrP783ruuP00g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728960354; c=relaxed/simple;
	bh=ERO28ayIH07LoDcQQ8bSW+4tKdOzGgqgl4QhBsBJHX0=;
	h=To:Subject:From:Message-Id:Date; b=XNTzVr1+WldY8juo1g0FNVtAVqChDCzj780oTzjP5Eouw5p+UC52yMytl+C/aWQLr1MXQjSpODKQwGBw7n87Ad+wmOm4JekKYhNyQVLKPdaerHSxRHvcvc86NtIBs8xNJ/ZuJgU8dF49sN6fxtjlhprmNoAQMIH+X3dghnZRW8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3lXhBEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3lXhBEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADD8C4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728960353;
	bh=ERO28ayIH07LoDcQQ8bSW+4tKdOzGgqgl4QhBsBJHX0=;
	h=To:Subject:From:Date:From;
	b=Y3lXhBEePryyMmKain+no/wr466CYseFnVZj7TiKkKhy2NrNdnPThoCK9KIb1uzMN
	 8fuwOsqVjgu1Kbk7YFDybL9Qs3VZwE23EB5FsQ6NiP0GRE3Sn1ygOqetcZPzesEQAV
	 +M19mkw++b3Zpc0hDfcDK4oKr7tengRRddCvQ/x5oXYFBF7DOIZF+zNw2Z0ans89TF
	 R62K7J4mk3JFRS9CU0OmOgRiJ2gcKEEP9NM5uOOvwWBMmQUOHkc4JSctVBil+Mhe2I
	 GDcUETZEN3KxmqySkpWsnCPO4sFtFrSRQ1AUuZqUpSBfLsNraLkWN1zw/3d13+oeGO
	 0blfJZacqaoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99087CFC501
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172896035361.24460.10096752611326996285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cc50088d4e129d98b07e1d508cf1f161771046077939caffe9d59baaca18036
Date: Tue, 15 Oct 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728960353
