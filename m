Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CE5BA55
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716957263; cv=none; b=iz5BypZvYGqIm+Da7fZ8SEsEMVevNhYQC4ditA7OFT7co7Ix26Y+aPk39rNjcTHEFsQfC7tF/Z5wwdKqXMRWnaRgqgYHK7PQKwXBN7QicnNT4Fn8rqS0xA302+jRjFafvVcePhnVp7zdj8Inj+cAzkQklAHrMhRy9a2O5rLderM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716957263; c=relaxed/simple;
	bh=YqTu/hwICxGJVhzj79t9IMV52/DHOLaGSvedqiCc3Bw=;
	h=To:Subject:From:Message-Id:Date; b=oCguCJY30IeQ0Kv9xWi+NVgsH+XqSQGCypDcWyXDb4eMDvSRr6TjtFQnLQPCcT5IyZ1d9DfIt5ZKiINVnEuJ1/qD6gARnRxLygyB37iEE/X3P+JSP4QFu+prNnn3FOsf0+8nYK9leVqCuHf0rQK1gA5jOgthfrAmIfTQ8/r73so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqctByuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqctByuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA723C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716957263;
	bh=YqTu/hwICxGJVhzj79t9IMV52/DHOLaGSvedqiCc3Bw=;
	h=To:Subject:From:Date:From;
	b=DqctByuLmq3iwm1n5lc5DWwiyB6xZyv3VirF93o2LYAPm1zJeOcEYRfpBstt21AYC
	 G7RF1ufDPas2flHvmj/i1Xzt4xc3ZeYZrFH8YFbuubSj5yrCefScF3HGTOoSlYSOmv
	 FaZrqrakSRjFXdePsII5NnBrFUnfLRQTJtjNU18vSbIs2Dqg/rWJoVD9uvsTfKcpZq
	 4T39KqGPHthOQ+V/er5nCaqKI3E3AVETN01Z0Dk3YtnblmDgk0SeXpnSa8zEz73ZUG
	 LI3IjQqX4W5xfSz3RmNSc2av42FN6veTS3zNRjR9fv9yVre5QT1HWRK+wWkQkQTnKf
	 8ibePswnjJtyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD80AC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 04:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171695726278.28830.3002675751515711533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c19dad0e9ee69e2fdf1a6be96f47f10646b4f511f559b64d32b608c9b5a4ae2
Date: Wed, 29 May 2024 04:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716957262
