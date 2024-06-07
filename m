Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7B21E529
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717766843; cv=none; b=fgGMZksGhPKGdsv6tmlxRVIwf6vhw0+KQz5OUuoD9jE//f3sAkr1vhiKAWOn7k2KXOonEifh/t9aHlgX0QNGClG+NQngswrD2+1LbUOhl/oopF2kG6sXM3sHWvL6LIftSMKqa3xnHxL5+RGl8wQMVDamYIoBBohGz++o/S6NtVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717766843; c=relaxed/simple;
	bh=3Z61bFqaBm41tONf9eNKuY/0eAaS0GKv3MZcNnPXOxw=;
	h=To:Subject:From:Message-Id:Date; b=UFLvO3bdR0DT9iJIhQ6Jy8u7uDD7URI2F3RfwFz1T/ru4WBKP+4bNGOAd6Xwfq7P3FEZwovBMDL6sYyqArK+lOKIpRJnqfr2ATXeZeKBDOziawzVRQ/Dk+HmrENYwIl4EYXosgGl2a5AeTCDvrEZ1VVx1v5L0woU2m0vdrL1s7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBZ2dE9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBZ2dE9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4080C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717766842;
	bh=3Z61bFqaBm41tONf9eNKuY/0eAaS0GKv3MZcNnPXOxw=;
	h=To:Subject:From:Date:From;
	b=CBZ2dE9Xz54sv6c/mQaDOKA1Y384q5vD0kLHiFSl6HkRcJCvJFbLzPKhHGJmpLcDp
	 sZmYcpU89Wlq4o84M5VoEmGDjI6cEGnzmbHfvPHfe+kYSCotGLoyND6sxzBDKySobk
	 U9+wSjBH+HqDn4i7O86cbR5ariS6cU32IONHVlyoPbBICS/yyCz60kZ8KDgC9pnD05
	 Cci6Ccek0s2vRxXOHxSbjrdQlm3lY2WlIBOEwvLxxVgEZflnqcR6zOtUT0ENj7KNuY
	 90DZMMZbovOC7YZ4VnTB8BhXG8SRofrhJEXu0Fg8sYgpbjsc6wsAteVZHD66YCF4d6
	 0V/L6eNL41Mxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8377C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776684280.31355.6174320192057312448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581aca55d5009e8c4cc7b2bdf9a7dfac4f763b8f086bdbbc2740ec9d7f699170
Date: Fri, 07 Jun 2024 13:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717766842
