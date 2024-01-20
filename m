Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130E3807
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705786697; cv=none; b=qCYQFTcI7BFbHxel4ltOeNgP+Ug6RVdH/qPW4wt8EHWLnpanXnd47nJ6CQsoYBOq02dEyTrqc5MsgLH9mFJqoiIwCi3PttacwtS/aBPS26hiamDo/kkZ6Sc+RI34a+q5kmzg3zq2a0VHY/LCmXE7w5d8xWMjuyFHyzdhOUyI8z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705786697; c=relaxed/simple;
	bh=zaZO7EL95Y8DTsMwyvWoDq6cJ6nDWkVzlPHHaRUm+l0=;
	h=To:Subject:From:Message-Id:Date; b=ez2RdaY6wHrlSZZSgUUmWUIlYUAhzK+WrDdYzrLgJloYrLEq5jH45EKKu/eJAkOHJt+xT/zbwDqbx0uC2ONYp3Wv/WiZ9rvhwNlgpAD9T99u8VpDsZOSG/iXScUNlTZxz/x7XL8mCuXCsuWQ0l83WPM5eYQYty0Nprm4kdZmxD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDDiGUtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDDiGUtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABD1C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705786696;
	bh=zaZO7EL95Y8DTsMwyvWoDq6cJ6nDWkVzlPHHaRUm+l0=;
	h=To:Subject:From:Date:From;
	b=KDDiGUtFrQZZ9GVOeP0OVNyqy2NjQ/hZoLhhD9xL6Ss+EJZyVB8Hh4o6qXi2gXh/I
	 FXGRRMYjE6oPM9udRXoJQgvazgN9K2evEw2MzjKedksrUon8oWhtDTXubVe6MJcns2
	 kptsN0lIMrJCjcZixiqw0ioJ6Y0CegVKBvyu9MFfeMq5phvaTktdkj7Tu+b9AIInZg
	 +dy1hUBCvdxAbeH8m65moPs1+F+nX88Jt0YFLFb41RNyIyvhv2s/bAjbDDQAOCJbLT
	 ddTzunybORsYZpRkKTBG/66H9ShtC3Df3ezGPwkZINB5YyvZKhbYFoJybkPc77wcdE
	 RZ9nQ9O7dABxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6149DC47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170578669636.20041.12065159250573619428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce75fd4b3c1b0847f6da0d0efcc0d7ae2070533a439259a95281ec92c02d7a0a
Date: Sat, 20 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705786696
