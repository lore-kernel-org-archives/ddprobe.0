Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B7E18024
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744420194; cv=none; b=EKe4QCOVbML6DzstqUO8B9hFpil/DhzW9SItXGKI/5uMozUbIOraPbYBh8XTSyZ71YuGhGnpkGo1RP1FPXH4kZgxmbS9IJA89B5Ax4MIAN445cjY/5miIbEhaQxEZBFtz/84piqZmbl2oQeY1gV6bvVhaGzA7Fbcn5l+oby9YKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744420194; c=relaxed/simple;
	bh=SfCKAr6+2jZ9u10l3M12OZHnnJsdNCL0e+4oPGMrHnY=;
	h=To:Subject:From:Message-Id:Date; b=CuJQVFO44Ls4tvA0OP82BZG+Azk4TUaTOXZWEfQFbQHXM6NJkThAu2PJ9OzPEaNM10U3PUmDdvITYhU+E7LWHctiyxO/cWPLOYuSpse8iA41GWWZIwvAirWgLTwrLrmhbj2LvYxjg63ZZmHARq+G7leIOqT9L/XtldPeC1iYeAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKOVN0a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKOVN0a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06A5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744420193;
	bh=SfCKAr6+2jZ9u10l3M12OZHnnJsdNCL0e+4oPGMrHnY=;
	h=To:Subject:From:Date:From;
	b=PKOVN0a1XqILFrhFYkyTTsTOlPXUatLv7gu/oS63iFEUJm7rzjqqEI8jgcLpwyUnI
	 ejz5P6JRk5KObPFsnl5EBoh7qiN0/udB49u9sM3/xtPQFJQcQES6bA4rSJGAzVnMax
	 5yN7ec+dh5aYjoNJcfwRKhNmrd4Nw02zDKzDYzCMjGqZ8iuWI4ostBZO2a8xHr417D
	 34KgzVpY64hb+ti2k8CXBwqIA7CokNk93ADMkdaGO9jHK+Xeyzmz2vK0fIhTRgtvZ6
	 KbAhp64NoXbAgiX9ZHDonrGy843OA4pfdRrbnyqLE6Msj1g/2P6mBrt644pAEeZXqA
	 DWDM6DMvXQqeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C4FDC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442019359.30067.1869881207435766903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f7994c838377d137c37b02d364bb285130b43ebfa4adec57f7e11d3b3b5a846
Date: Sat, 12 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744420193
