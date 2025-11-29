Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3330142049
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764376974; cv=none; b=riC0LhIXY/bVNU1W2iNaRPjzFaNGEe8uI8/q0Jr1cniV7h324bWG+Lv142RHbj9grm33HyA4/E/Iy5oB6Ny+wV5gdy8PO1FDJclSbyIWQq9KEf6ovcnHf0zdCO87JThI87PB6Fkl8PTtC1QMw7WDUt2iV/+reh54Y/yVKS5WRqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764376974; c=relaxed/simple;
	bh=BqKC1odJC36nDDf9LXJsQEhQ5rvcEYbwx4dr8Vcna6c=;
	h=To:Subject:From:Message-Id:Date; b=V1ZUh8Gs/I+vQ7ElJiYUTPC9IZWUGMPn+H5ov0qKqC5f6OSBOb71zYyWWmU+QTqCVOh5AI9X8Tho205HeHvVJtVa8svrh/1vpMED0deIyI6OR6M5EQFViAwozKtW+9XrGgMT8o7oqQmUMwgCAd18nFwqPFiYP1Yd6QdQBwb/7pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUbD2t+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUbD2t+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A609CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764376973;
	bh=BqKC1odJC36nDDf9LXJsQEhQ5rvcEYbwx4dr8Vcna6c=;
	h=To:Subject:From:Date:From;
	b=jUbD2t+5ZdIcY21izU8bA/DHEGEYpSngLk1cM4jeDDzPsnGHgRFbBlQKlBFJzX+l8
	 3vMewk346hUfA8YiC9S6/NS0yFLYHowaXSo3pvWSt/XBQHn/Nf0X33b5Slh7ocjnpO
	 bHJaIiDcI+d1g4oYcBpm3WmAbH30Xhsx7NnGrfLgUgN3jpdQkm4opFhxcpb/iyG1e/
	 IhDk+WxsDKrdvDaRWvWIaVfQlnsGDxLi9uhZSziC4eKwugZP9r1bs16EZjCl7+HE3u
	 6O42pz9syQJBHYuEFK5oynjm0+sSTsJYTcP5QfoIrNjAcMxg0hkFkfj4G9Zar0TtFN
	 7HkwVZfDRB7kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D2ED116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176437697358.10797.13389023511670300984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06419f9dbd99b5f9ad0ad07639c5040edcb64a80df015051455ead010ebafa86
Date: Sat, 29 Nov 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764376973
