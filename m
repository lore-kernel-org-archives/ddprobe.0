Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2F9305050
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755608394; cv=none; b=DC3BjKzh2/Q7aEO786t1X7zXjmfO2Z7tHIXEguyU4WQuqm0ZRvJF48okdITGsCIaxzETKNKHYYlD6najQ9cLPWdoGKvfn4G2PXqgrumF9q8r4YnGZfvoZy/2xlEbeuZt5dGErKHgrGxXaU8kn5RxHHvPXtnJTk+DrWU3wV/5tvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755608394; c=relaxed/simple;
	bh=CPyyKH5KG2NbsMTnO/gc3rg2V8LJ5iPfEBKS/fYhoVs=;
	h=To:Subject:From:Message-Id:Date; b=CIsGY7HfsTNLhoX+lfi+vWw2wKJxov58VmE2GS8AJ1kHAOjQ85y5Tb6HQLFqOYoy6Y0NrKLW7Om5fudPm78LZUk7jmolzSGq82GtJlEkY3pHxLJhnoMWS1b57mY7iZc7/90Xh8alEN2C+6VS9WXoOyXslt+LNdqnVbfBkLiS6XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C075kIuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C075kIuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9A1C113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755608393;
	bh=CPyyKH5KG2NbsMTnO/gc3rg2V8LJ5iPfEBKS/fYhoVs=;
	h=To:Subject:From:Date:From;
	b=C075kIuko7ZQRh5S1vQ+C0jNhgnruc46yKrleBgUaJ2sU+EokljFQKEPYXCx6X1Ur
	 Tcj1Njf3UvL4KcW6FsOW5Eebcv/wEm5ntXL8/g4CBblVqY5agSf0PQEGTKQDa1JTyM
	 JItahwxCIXKTHumd346ef2m5ntUwhxMHfk11NgMRLWfO5cS/K26QnMqOatcLBDGeyf
	 Ol4TgAOsY/6owGUQQgvpVDI17GNRQFtbFzeirdB/OYeEQCUevBZA6jp4u/Gv0nKTwF
	 Q3GwOeAy/trVqTnKpmm4ObvPW6t3tzopmcEyaYN2q4KpkUoznInFbVNTN0LXi8IAmo
	 uWKhtwawNXKiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91167CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175560839358.11212.10551888077512348619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4af7ef4ebf97e0f26546a38648fda1b6c70d6228b745d35af0c0ec4f16f266
Date: Tue, 19 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755608393
