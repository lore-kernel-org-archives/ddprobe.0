Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217307DA6C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753480194; cv=none; b=LEs9Lt0MiuFJiKxd3BnABHQLuHgFBz6FFXswDjnV1v+V7eEDhIBuGzN4/zVkJQ3or9nDIp8yadhSSVNjRbZ6DvrneQOSzDG+Kfrlt0n0e9N4cFKaMsp0nUZrr7lfVgrdxLBPiyA/0UYRrBVoPl51yXwDGxO7xexHQR5ffdtgBhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753480194; c=relaxed/simple;
	bh=MQobFBVtu9uQCxoEo7Dpdk8FhFoMa3t2DH9Gxeix3rA=;
	h=To:Subject:From:Message-Id:Date; b=Kwc651gYoYMLXOOyoDwYXbKcOy5GN2dlgPfHpzClMrZ6kF4XoPwzpXX7vDrd5PSImd96tNJ4KAwL6D1dGry9ptMvqDWrNHkx3i8RfWstde3+ycjEyQjTWTZHHTraQbEoraTq1ywV/JRjZ2+ThlwF2Ghv7a/VRarWdo9MAfKhdnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZo1na74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZo1na74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4393C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753480193;
	bh=MQobFBVtu9uQCxoEo7Dpdk8FhFoMa3t2DH9Gxeix3rA=;
	h=To:Subject:From:Date:From;
	b=ZZo1na74EPdp3QT0KqTVcEtqAvdfU0k6+4dl5HJwhA8ylo6LiXTqYlToNkYsD1/1f
	 QWBTUMnih2qqTy3sT6GqO2YKUnE9/HFVMeexVF6/U7piyiWC84ZDth3N+7g+pf/Uvs
	 1r/wpa7Fn9g08hZ4E0ti74OaWcypW8Dy20aJfGb2K0sgmaKqydBijxK7gQJDsI6Mnv
	 6EV3wEfX4UPD5PeQNFwxS3cr9uNw0YPYRB3QJppr8UJvIXTViUSanxVfVf9DZQCrsx
	 sof+Eolb4jOjfA/MiVik8N6tcAgHmw69VIE62o0gwoSlirnlvKRoK45zPSYwIR/E1E
	 Jd0P2WHywBHfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952BEC87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348019358.12297.10069909475707267281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3da00fb1186389e336eb15ed5d413ca1fb55de24e9fa6cf12cea87e2bbb01a6
Date: Fri, 25 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753480193
