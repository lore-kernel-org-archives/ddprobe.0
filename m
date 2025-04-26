Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437141DE883
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745689794; cv=none; b=EehlOxtFUf3/H4R0BidsJOef9rqwQIAJDSiFDZY4xRdwmoRul2nzTUZ7PRpWJe1ALbBUkmhVAxNDMZtRVisck1fo3YMCRR3Nx05lYmqOBuvMiHTfI9iWdyrcycTijsElfv6M/Tgn7zVg6O4Yt2GVYXEN0YLmrBqhAQ1b7B3SX10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745689794; c=relaxed/simple;
	bh=uIpa8b1yxBkK8Ygq5JxsbZ3/u0Z4ayE61ElhQvOEssk=;
	h=To:Subject:From:Message-Id:Date; b=IGtJ1XiUGzVFUyBl9wphAs++XRYA7cdoBKAxUtih/ke4AE+NTB2zKsBYrH5VaCt/E+7pmyZU1pioMjCfuTVFs20MfgYxB4/1wykMC8lGlN09WYj5QUNAH5/8rNp6z2YW+OM1TH7f8ZueVxJBHp8yB8urkBXIbS+z5pDGWEYQsQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onRCVfjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onRCVfjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A839BC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745689793;
	bh=uIpa8b1yxBkK8Ygq5JxsbZ3/u0Z4ayE61ElhQvOEssk=;
	h=To:Subject:From:Date:From;
	b=onRCVfjBtYkdiauze9YC/UKBFvb9P6y5a4jNMO7HQ50dlCQ3iz+aZqAij5Li5PWSW
	 WwtjRyVoj6lTLPJSSUPgBk1ffXbCHJUBh/9gcezFdikI2KHbZPzAn/d2kh/1DP/ZQ5
	 61/VLTIKv0e3hxoa0k3AnFnTxbIO4ya/N8NjpazgzUiQOVDhXXNRYXvo9j4lDSYTUT
	 7xd31De5p1jH+r2KXykSIooUoPRzBacCBVIdd8rJkR5N7TF1mch2FEUS/RGcilRXJ6
	 zbWwwkGhFangy2T0dClP5p9u6VjGcRXM1YDbPIgGExfuWKIL6AS7ZfnXo/0DhsRfX/
	 dEoBSnpi2+OwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956CEC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174568979358.1487.17458068925802712617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b393e5fc63517c8a8fbad0f62469d22932e5720d44a8133a47ac2fc8c9d7a8
Date: Sat, 26 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745689793
