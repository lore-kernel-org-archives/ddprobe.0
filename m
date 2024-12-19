Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7DB31B6D15
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734636953; cv=none; b=k+whEiBMQXXjo+Aj0PADABvSh/tSUIxrfcCeSnx+9Q+IZ2nq8eIcVxI7pRfYN0g6zbgJ/IYXiagFfbYbyuNUInxo7QGCXK4xfQRjiBCpcYUCunKh2GJ1CT0qki55IAGZUPNxRezPSFdhF0TaBucfcNx7sZSN6dhuR7ttGwaB6Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734636953; c=relaxed/simple;
	bh=jb3R8Ll36G/5V9Y1uMWIN7wNetUzZWJmvkpj5R6SkSY=;
	h=To:Subject:From:Message-Id:Date; b=IIXxofDTXjOiyKXGtBNWG/cwXHbjR58OCKU2M0z1b+jETzcYqZNUmKpv2mlgsniRHlvYGApSlSjX7qbNNQ1P+/8xMEYrJHeuBByLVd1Nq0MPhF9MiyOzOeDeIcQDdxTEbR5HUOSmoQTyt/+MX/HJUJug9v6hIBZf+GMGW3aR2cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otNkSp9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otNkSp9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA66AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734636953;
	bh=jb3R8Ll36G/5V9Y1uMWIN7wNetUzZWJmvkpj5R6SkSY=;
	h=To:Subject:From:Date:From;
	b=otNkSp9+9ref8xZ2FIwgTA+Q9BId7cDF3W35xwIU44nOEE7KbT/dyyWfUyXYluFUq
	 WG2fZTMzBax7evk7eldOwfdCMXOEkj4QJKNKVhJBuClxdbpp55BkKgsippw5CMpbc+
	 0pR9BXTcz7qordzngI8BYZlIG8QR3ri3Yr27HMrhXWdHkMCaOc0pkkbOt3BdpETzY/
	 h2F9VfyH0Ei2pwmzqRxJkOqsj+XKXiSTHhMZmp/aaG/qXkrkL6I2EFaEyuNkynoAcW
	 CrQ6yHQ5PnmMXbyuxM1HcdAfvxSZhTqsgGtYSFx7OnZTtlBA/PtyZZupvCbi35H0Pd
	 2sshIP47u3XQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9889AE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173463695361.9267.13438600402657243362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c08e9d28b344e0c2548eb32cb9415455c4e1d1d82ceb850f66205268037a370
Date: Thu, 19 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734636953
