Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E8F13FD86
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732784154; cv=none; b=qTHV9SmHinSti09sbmkqTK3tnRyB2Lk/qc33DpaKccBGbKSzxx7jfubhLrR/0pS7XzgyYdaDkKgAUeftiCSATka77aq1Z/aNRZr1akZ++YvocW4/d4es47TYmwdNKd4C6+UexUVGEFlx2KyKfjj07fqKFnXoUdPJ2ZLaC13hiUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732784154; c=relaxed/simple;
	bh=15kSpi9dZKzluIM6h5y0F5HPGQNd2PxgzDxPgdlVTHI=;
	h=To:Subject:From:Message-Id:Date; b=fS+UhzfpnMBwdTmL5DBslfMqYP5JRePLJRSkY8lVuxI5PQ/RCSx5opPdlMv3/suQR1hIcPBJtKHky8Mx4LU3C244TR1gPNhRdGfzWQNyaKljCZnuI+HMtLxuPWnwl1E5zP7x98lFspHSGU/aK2xpXQ30h8EWzvNPfCoaqD2j90U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGPRgccw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGPRgccw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C8C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732784153;
	bh=15kSpi9dZKzluIM6h5y0F5HPGQNd2PxgzDxPgdlVTHI=;
	h=To:Subject:From:Date:From;
	b=rGPRgccwUS1PJba88UuuYf8O7syM6OWvrRXQibQvwMQzx3a7dTDBy8JdaqZAfhchK
	 vTuhyQ8IwR56BQrBfoZxEDYhIdo4xShmEzTM7wBKsMwvQ6iuSCXQG8ZXpenx6/Zd/K
	 aaWBwj2CAApmOitqWP+yWu1jzBaSulmljUvwN0wMlCCF/ccKkLj4IripqH31evZACx
	 Eht6FoLNzp3JIU9OkmFwskxWb7CV1tTvO9fIjo37Rdievk68MeGJBgavnuSGI9+SsQ
	 M1JAPZI6MkptYWx9UIctXJMUqcS7Mnxbs+XTHj8g78crxthLbadftJeRHOZilaXMZh
	 lFK+fu9AQjWRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF8D690ED
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278415358.1446.10386951913841767222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b20f8e953374d1230bc934b9b6be3d54dcacd33e8bc0d74cdf0865e29cfa73
Date: Thu, 28 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732784153
