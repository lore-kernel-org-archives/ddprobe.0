Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBBC13D291
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728957954; cv=none; b=XmCpxrbu8eMb7icCAcfZIVE6noRjXzWhyKI0uwKvTiiUkowPzyADpaFKzBXPNIyT8uXf9tmsNOpg1Ueest0/cmEPZqR6SYN/Om9EB7AmoqsgEx32bGlXCD5hHPYBTZluGK8b1LGC3MOGd+v7JPN2cFvAunj0mFd6taP/jdBOe/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728957954; c=relaxed/simple;
	bh=BI1IpvrqoN8tytJ//0Tpnir3KMAgYn10WNJhWfz93EA=;
	h=To:Subject:From:Message-Id:Date; b=HCXhWx9Ge6Y4KDNlb4IYThmXBAyk3T8T3WK6c4pMJVpCxOcMGjzGfo3Q49kLdGYXmlaiW9UtVjuY/mLPW6v3X9eyDs9LDTc09C22ODnqe2ZVsKeAAefjq3VUq+yEc6QLp02r5kaP4dXsScPWz+K8h5Z68VC5+0m6EfllRANGEBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baKFlhXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baKFlhXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B927DC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728957953;
	bh=BI1IpvrqoN8tytJ//0Tpnir3KMAgYn10WNJhWfz93EA=;
	h=To:Subject:From:Date:From;
	b=baKFlhXii3bfRODw/ePLfyGS6INuaSO1wO0catIE9pKot3qlhT4olGiOdjpDfx8wg
	 WQXqOxCqG3VZf/KYZk4mPQeGBbmgjbKT1VNEQfrDj2kmNeelj6kuO+8nNeGXOwTFOH
	 x5Qblkr2Ri00YrmJ7W/h/R6sibKnc8QcMlKQNbnsDToZLEL994/rcCXcggEJl80uWq
	 opSHSI25uL86A9OydjTfaSHl+Sg9qNSmndD+zxw9HhtJsBbno1cgurVtfIwnUd42/J
	 BMXsaoyQTUTMrn/6ZcsMsASCl69kb+Khet7YaJ89D0lZcX41I57EdksidDFNkjsj83
	 KyQNzb8V8EB4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2162CFC501
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172895795365.23494.1529705820770583181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d71c776308fe6025dbbbc8c002c819b6bf8b94cc7585911f1d31fb9ab46eab7
Date: Tue, 15 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728957953
