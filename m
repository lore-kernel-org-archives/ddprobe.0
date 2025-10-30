Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA72133891D
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761811193; cv=none; b=RdYHdrlFDvC3CdOyS3ES7Jtt5a7PNNoBYUOttJBX2CRUE0LIoIMZAWOtJp0dlGkcOCHSMKaNmHGMK0HqSalY+P+wX7MtmU5PkfYKIkj5Hrfjf/Ns/afP92K4UQ+z1IWDU4yFaciAYwxYbNM/2OEvFf+SDJu6yntq7I+XC7ILWGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761811193; c=relaxed/simple;
	bh=gEDTZUvTfal5u3nUNkcLijDPQ1NTSzxvaUNJvt0/k3Q=;
	h=To:Subject:From:Message-Id:Date; b=Weg8wdqYEAqMD+EhxWJnhH6P/xHgVrndOjO7V9c+QicQAKiGYPBBlSvBuBIfmGZ1bMcuw912w/hu2ox65XWbo/hUvIcmuNughcG2nFVId3Kd9DPP16cb6UeeVGV7BHCceFKljJsGXxS93Zy7LeOiAn4vAc7EE7XUd3lpVzi3M2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YR3irxFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YR3irxFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99EA6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761811193;
	bh=gEDTZUvTfal5u3nUNkcLijDPQ1NTSzxvaUNJvt0/k3Q=;
	h=To:Subject:From:Date:From;
	b=YR3irxFSq7c50DY6rrgr1VnHXZyDxb8T58nU7/VQt49SrS0sFnSn8FpkIuBQZ0NJY
	 KytcweW2tEVu0YNX+/22/fc2yA2RO5aG2jwwzsOl1gKc9unYmF0qKNLo/3DH7OTEUp
	 uyMi3Ecd27A97G+ur8Zla9nAJRb637zD4xiyX+TIN2ViU95krIIMycIneRFT63/V1w
	 ULJliP4zg8TdqkwR18xpoxJoWc3cZDx8L+1u1e0+4FMVils62vClFyjSFRYUxWjaLL
	 G8qJiEi7KeaYDg1DGDieIwyhu16ca5W0eQ2rs3nT/lciW1JdNrDMLdmtgIfZRejb7u
	 M/rdQMZpbbFtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED3CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181119358.14099.844642032571103981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245860e3c802bcac56bf3115e7d76325b90bf74d04937fd869d769f351d7ed86
Date: Thu, 30 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761811193
