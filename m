Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E256C17E918
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730823954; cv=none; b=aU06N5Jbfey2Lw5q0yp87kP88Qe8zjwQDODeaua8VMaZsi+6fipRkeaptmKPze2K6jUKU0S8X+AN+ym7ZFT178brgq5fd+NEo64aU93JYfEgvwLdguN0t//NlRE0Ux/fe6zzfFK7s2M19+PLt+EYV7Y4JGjxhztd4xgc8a/OejY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730823954; c=relaxed/simple;
	bh=R90qDwy2IEcTtO+kSoZSizrUHQjPYZisXkW0nVFYSPw=;
	h=To:Subject:From:Message-Id:Date; b=kPilVcsMvabjSGW8lRAIEaOmG21Sv2w/suYhO1YpSidcuPKp9l6hHzsFifE9bY3Q8vsda+AEQZi8Al0n6jpdez2F4i7eTjPhYU6s70p7omnJmuc5m5deQou1EHmjGANlIqyNib4VsYcSOH3oJmQ77PIRUzlkgsQg8Z3ruIutAWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDE/LxQU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDE/LxQU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A00C4CED2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730823953;
	bh=R90qDwy2IEcTtO+kSoZSizrUHQjPYZisXkW0nVFYSPw=;
	h=To:Subject:From:Date:From;
	b=sDE/LxQUB5OtiJfkfYSVQSN+r2qPCz8c/ZKIYpXCDUkbWSCkXxs7dSiJAUEZpIboX
	 535/Tk4NjEFaYwM9grm777q46dr0JUtOu+L2+FxySyA64WgEWqzkdBolkcCpvDQutU
	 ggP/3tjMcY2Xz0C+q5TT8fRiWrMHfplCNLb2H+//epuFWlLK7RXaSrqt7+uq2DhSxL
	 qFW7PgvdyzV6yQc7B6EqKsBumthoC1XWKf6CwGJcnbgFshb2ceGRAhdl0XPrVcyQMR
	 Kc2s70e69CT4uR2Ud9uE66f6Ba2FZHnCfiANWh0ehbUr+73gPHzJrzijQuVoWP9MIZ
	 pvyQjTi4UvFdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92B3D31761
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173082395368.16491.18274621264055251113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4e1417137ad69519a7af04a9ff2ce7e2cf94e7e7734febbba0d0deb0cc079e
Date: Tue, 05 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730823953
