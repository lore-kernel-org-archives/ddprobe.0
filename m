Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCFCD3596F9
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771524893; cv=none; b=roHCOfTJPs2d9oo+glTjXxePG4gHouQz2H2AGVXe9OxVu3OX6/wiMIeOz9TYCJIB9+s8QnbItkoXePNp5hrt34Pzs60W6fdF0X2bfzf9/7c+3hgxhnkcsuq7a0CyVP2oEfv6d53ipbibvINJgdUuuOmSZIpuPR4N5LK8QLA00H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771524893; c=relaxed/simple;
	bh=SUJX+31H97fDU7nxwdyW95JtvyteS5nDcQHy6VPitL0=;
	h=To:Subject:From:Message-Id:Date; b=iSOidCKTUYH9T1zFMl3M2ezRgaAPLTegwsSZaXHQZvEluyNopJx2GvSIh1Qy4wWMgGRJiUBCGRqAExDK1HjDjLGjrsb8WuSq9I8hLSTd/oOoVA4W0u0r2wKH2++lbCcLk3A+AxBkH7eCmBiNdImzqfrA/fOsFKtr1bRot4J/puM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WY3haEvf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WY3haEvf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA9AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771524893;
	bh=SUJX+31H97fDU7nxwdyW95JtvyteS5nDcQHy6VPitL0=;
	h=To:Subject:From:Date:From;
	b=WY3haEvfHRPKWXhJObGrYoV++i+TO1rwyfS2XPAzLXpoYGhKbQtD1tt3pQVQWJlTR
	 4JgqB+Tzb8+obusnBgKI6BD9c3ffrUU8Raj1tkoHLEZM92o3USz8r4if+MHqaX8VzO
	 ZyPQ/XzTi8zFH1LKJ/Zhflet0tTHcorfTYtEuQxuDhzql28VoDEMQ+IyicV9RDgxhN
	 pKNYUG/Ka54R4Tz+YCpnttXpclDzn/Xp271/76z7huJ68UImn0ErGtnST12aakSwVH
	 FP4EWq1ei4QLOMPYOZw/9CFC8S+XujwhgrvM+uGwHe7UmFbrwMKEp9jxQ3wng9Eu88
	 2NyJ37s1OdIoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C82E9A058
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152489361.8452.834414804633144979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f81ca5299a948254a8869398bba4632927a04c47517cfde3286487e4f89731
Date: Thu, 19 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771524893
