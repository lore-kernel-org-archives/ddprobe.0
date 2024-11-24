Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA33154C05
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732439754; cv=none; b=WcItb9lgAWsQx9WcNmt7FDzzbqGDrKBdpbG7RZbCYH8afUdSR76I+/IRQkGfC9xMVIojczrAsydA6UnHSplGjmTFQjEhpEhv5d+RMtrGENo2oy5O6lyQkNWdu48S4bZI/5i6SDuIOhWkEyFgngceogpHOhv1FqZ7mWdM5ght3as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732439754; c=relaxed/simple;
	bh=Av0tN7JylIzTM/PRrE8j1/x9hpxm6ZT4X8WjLhTs0Xg=;
	h=To:Subject:From:Message-Id:Date; b=gTv51i6bGnxvFqxY6YpotutCCrtmq+b0ei32qA+Ja73IqwNGmHOnwkeVX7H2F/buBJNj9IAPS5fdW+Sa/7PcP9dBHiaG3ImBkvCxRfG8GoYTyUN1+UpaGbRM8GuL2l/4PixJKxPO9ORNxbrbFd2hgncGJ4cJBRVbqydtf8I1pvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxeu11VT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxeu11VT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1041C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732439753;
	bh=Av0tN7JylIzTM/PRrE8j1/x9hpxm6ZT4X8WjLhTs0Xg=;
	h=To:Subject:From:Date:From;
	b=Uxeu11VTILf3PGGl2dvYsq0OK67PXccTYDfvZAG2QRhC1Zsjr+lE1zg7uF05flXLC
	 yoj7CvSiAOk+JyEYRKdJYBO5lclodWBWHgmZgrjf2aUccZwF29+uddcRptz846nyX+
	 l6vazYsqg2f/Gn/9QBG5QMhboiDD2T8g97oIab+D4KDr1fv5e6/futT41TNrlNXEDz
	 VSsbQayxN/fCTqM9KT5Eq2M9mMCWKaCsVexCZQ7ti0gVBfZzcanMc2cdAyS+IYuqOk
	 Ndzqp3FFRIDbHFtxaejti0rrkC1NzBJMhZokr3Un3YeH3s1rGQ6v99N9iGvpoiyhX5
	 O9m8cEHtShtyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99620E66894
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243975361.3723.2419767498238309560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac85f7fabffb3e42a8b4f355d2dc4bac838c8f61222cafd4112c1b9d50d8491
Date: Sun, 24 Nov 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732439753
