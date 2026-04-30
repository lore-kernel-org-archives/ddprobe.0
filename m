Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7C6421EF6
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777555054; cv=none; b=DJBCYjRh+NikcbCpVxVXQxRh1vnxnWyFj8YsxvoJLzmhSC1gfAJBO0cFH5bHihM0vGbQ5jCL25ZPe2KyaWNUGJ98r4y7PLbcj9P20eTUx/cF/XFL+AzF9jVISZD8WoVRjJgaJJxq0frh4vEDdzrKWRXryXXOPJ6XU33b8ZmgkNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777555054; c=relaxed/simple;
	bh=+Ec15so1mThWvYIQGgB4XjKZ/hhuzTbGqYfkvr3Bq4Q=;
	h=To:Subject:From:Message-Id:Date; b=hS2YjBhpHWhe7ENhX59iVBHKoQelSGui/R6CBksLmQjjaGZgTXzqrfAHaXqc8k6HD+WgdZdXw2ra2ThCFGILytUn83Pd9/4+YBlhFxzODA32wnY6oV68tWf+3NUAr4X5mgU9EQhEyjwTs+fC92lf7+LEQxTNmtzP9CA7gJqXjnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/TCP7Ja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/TCP7Ja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8930C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777555053;
	bh=+Ec15so1mThWvYIQGgB4XjKZ/hhuzTbGqYfkvr3Bq4Q=;
	h=To:Subject:From:Date:From;
	b=m/TCP7Ja34KQzmwLSpsaB1XeuCPozxD7LmiEI3ChQY8Tc2wwzMkKh6vAyyU+Z1g1n
	 DCP6CH8rafjvdoWcknlps49d49kHE+A1LJBXUmF79DnR8/zaqtCuofFIUko/dBamsz
	 xgMPjWY7uMFp4kPHUvYQIxSQIv8wlrQk8fbqIeoJJHFKk9RJ2My1GCoQMiPs1diHNa
	 5Q4zAv2O0sgvUodkcD+aBhZFceiBt/SDaJ1y8IBm1Oa2/JoN63gGfZCTB5gU7V0Q9F
	 kP6h344cEU9Xn0OiNZY4oeVTa0GbrEbqQQM0inBcV1VSNYb/Ma1uGUsIUd1hAaPnh8
	 T1GVdwJJ1JH1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10DFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755505368.16550.3877203806623335167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5543e9a20682963b0816062a672c72ad1fae5ad57a809e6e4072928b82484f4
Date: Thu, 30 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777555053
