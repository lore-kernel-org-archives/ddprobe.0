Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B884A08
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725152754; cv=none; b=kOh3hQKTXlGRfO5OtZr7FD5Z3UZW0jJDZCoBmxpDQw8mCXI6J8TcfI6Ibs8BFIRpwmrFIx1h+itT0X5Vfqp0utiGrbXsoEc8wpEi1vA8cISK8yLErjyCBFSBl/c7ukVVydOAa6UUfhAKuOGYWvhzP4xnu6c0rLsX/wdhHnRNCzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725152754; c=relaxed/simple;
	bh=W5qwdf+ll/DbaLmpUfaFUstEMagJjW6+yYUJJJQkN6k=;
	h=To:Subject:From:Message-Id:Date; b=k+1bJ0ayfLbGztwl8chjHqV2FuWsMW0SRBb/+pNl8vfIa8+TNnOLqJbp0Stt5eldV9Kzx9ujwOJBrU59tqjqxcMsI7WOhPYLEo9tXsyjMAJ/bNZH9zJnzDwHOLgCcaQwubYXafEf3oF6fwXfHUOXpSlbLYlxs9CqXhlVB/GvcfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rui+wUyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rui+wUyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B305AC4CEC0
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725152753;
	bh=W5qwdf+ll/DbaLmpUfaFUstEMagJjW6+yYUJJJQkN6k=;
	h=To:Subject:From:Date:From;
	b=Rui+wUyDfBIaVgdpUGRPam3/VOk6DxL9Lc9aguTQCWQSKJYFI1N4y9CyjzhEhu5Ch
	 LzEc6kTCC+2DMA1yQVSyAALGdv1L2kFce/CL1on6TBLhworx3pZncKsrSXMxaE5W47
	 f2YIi95ZYXkG++FPxlfuy6O3AAscMa3ZvTBQPiknRkky7M/ii+l9ERhLn8+Wi+fYoj
	 ZqLkn1/MuAoSiuSrufI3GQQlf5GvYGM6P8kD0lB9S2oK/586qZQAz1dDiqQhx4Eg8x
	 hkKANiWgny2AMoUrjh4Ci3OPiNdF7c8dak3Im4JMGxYGKe2agSMnDfWiGOiQjhZ0eL
	 WqBNxiAsnbeYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD46CD3426
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172515275359.2790.1018216607422171929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22ba1427f9f3d71d841cda2b59522a3a8c9e965e98e286854426f64cabddb15
Date: Sun, 01 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725152753
