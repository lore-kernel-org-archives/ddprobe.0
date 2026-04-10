Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2EB3D093F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775833054; cv=none; b=s3NRDpoD8rRqOxx1Xwdk1NVHRItJsb6Gv4ZiRXfsjJGbgkninl0Hp3kq4kPnNYb6Jlz5SXW8T1BmasukOBaLYOfaIw5NeM315WrDBWqALCJuf/W7VtobJl9R1gFo7kg6ETexfV8LoHnkeQx0zoQ+j6dkhnJ9ArSZLtPIg0EQ28o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775833054; c=relaxed/simple;
	bh=ueWwd/AwcC0HeCAOa6HNZgY0r5gSN0BphIIfGjUM47Y=;
	h=To:Subject:From:Message-Id:Date; b=nhCEKIg8h0Ogk7RJPJ750ogfeiwfmgMe07Wt4jnu7F0d/1DbF+nHG/u2LtskagdMum95Hr3nLMa0frq/c3ReEOP526u+M/cdM8YiYyRvaP52+oSLgHKE3Kjy78Lg0Vv2CS4LZXo+O2+SX2iJNsyvy7FrJiqyIghpVRHwDce6VjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXswJ/Xc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXswJ/Xc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8501C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775833053;
	bh=ueWwd/AwcC0HeCAOa6HNZgY0r5gSN0BphIIfGjUM47Y=;
	h=To:Subject:From:Date:From;
	b=YXswJ/XcP+JEvpdaecKDjPsFothagudQ1uuTPdb/Ig5XSHyJRAFMPONN6PUuIPJJr
	 SzSqrDyrFxQuWZZk0zf2LRhvbY4rNQHGCRne28MJZBhJw67s+IgHPBQPAm17JR/ihA
	 nJtRONWtw0bFsuCz4lnI7SkaHO1JjSkCsUFgcxpY2Bh+4ZnhbS8tajPpfkOvJlKdGN
	 rzgA6EWG5urwtXyOGGt5kH2EG4dI/S4bmyibf20SXRU2Du3eYdkLksrKuU/3jKY2+d
	 4Wgl8wXbncT85UPnAKcHTTffzgdZgF+QUOqiu0d99TIiXs/N4h6piLmjej/OnsgkZQ
	 5NU/Vf25n0DsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE3F459E9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583305368.12360.8041163912514201109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5820283b61ec7d4573697ba925928b0445b7eea34a34e90aea7840fc8e3804c1
Date: Fri, 10 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775833053
