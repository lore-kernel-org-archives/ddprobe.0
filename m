Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D95B1F2BA4
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762298994; cv=none; b=hNvlCbVhFC4keh+MDwTuVrH0JAKOhGtAstENcmYFP1YNcXZQaMcoQyTO/c0tLqXhRyiF6pff4pfoKiK1MeYeTyhd2pUCLWl2Sk26tUPXcILJnI0/w7dxYdWF9uwbekMY/18+NhURqhx3wciiIyhrBdSUquFAKArGywRstDLVaUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762298994; c=relaxed/simple;
	bh=WRyNbOSSUts/wgOythj83gIbm39btzL0u+BkBQIWeyU=;
	h=To:Subject:From:Message-Id:Date; b=CKfjY6cJzQ/YZ4eUdaXPVJiqotAbEYLKNqplaoXKkJuwZ8Cqf7RVwBAG+Evs1SaTfUsDyf4utTPSQ8FgYZSejyNbt+stuYqEA+F02IOZCQpERgDeFIy4ioIl87NZuLHoOkkkeh4kp+mCdrKfIOlTvKS/5ioQVgGvbKMTQGdbAHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPHHD/l/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPHHD/l/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A214AC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762298993;
	bh=WRyNbOSSUts/wgOythj83gIbm39btzL0u+BkBQIWeyU=;
	h=To:Subject:From:Date:From;
	b=GPHHD/l/nmXwpazqHjFH+sTTNFYBkI4WNCKL7qRADmJvL7FnVYKYe3S6CHrVnnBw5
	 sn3qvVlQsh0aIqOtHWzOdv8m3yHDMLM/sDjvDQiSY6hM2qNn8+MqzUZbPJaifUdwSL
	 1EsMebcaVY312LEHhkGEgC8zwSVcYO7HoTKz0joAGpltkBNUUimG/DkYl7orQ2Cyjk
	 wItypY4DoGxkIEMjwddOhk6yTCRlc100zR9eQ3lQAV/7373DzSQRgCAvcgGExxZgHm
	 1KOWLSEzdVX393o87UN8otE7Zu4WlVVawWZhKfIRElfvyf0OlQc54KlaLLlqgKetIg
	 JN04K/J9Va4gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB7CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176229899360.16197.12920933933779595222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84808c51363fdadd33f7b415e1bf94f505814a7112bdb3ce2a7a9a54fb0b50a2
Date: Tue, 04 Nov 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762298993
