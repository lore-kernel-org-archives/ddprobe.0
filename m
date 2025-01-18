Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C792907
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737179154; cv=none; b=IlpFjhFoaC9KP/Q/6G2rBrEKpHixgywR7aM4Fw6laPQTFfsihhiTXs3q3s04YZRHsRGslVSP1myiZ2CrgjbIlUKbzw2lgOa9+DV4WMP86ygkVgUd9Ti4wfHwzNJArMUuE6LCQUcqs0u3w81v9jZ/2IU8LXAuokyVvbH8ncUN34s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737179154; c=relaxed/simple;
	bh=jx0OMzYs5EyLHJqTPmnOQYOM30LtWmV0aeitPDa1YRI=;
	h=To:Subject:From:Message-Id:Date; b=a9YeQkYczDpocUHxWvkuOXJF5wGEKnqwv3O1CFau7P6aOul6HL14vPf/6/fv4rCeog2nv7vH/d2u1SyXkVeughtMrHKF3MFGRKeifCgpD/Bqev0xVm7Yu2WeSYMXRIqN2F4O7btsXTAIAt2i+WbavvKKQw9c5kc4E1JgQoQMO7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5cpRLva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5cpRLva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBBFC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737179153;
	bh=jx0OMzYs5EyLHJqTPmnOQYOM30LtWmV0aeitPDa1YRI=;
	h=To:Subject:From:Date:From;
	b=S5cpRLvap9HF4fa7M7b68JAr+NJf9rtH/ja+HurWcgnV8YWOuAcU6yY7rUzBZ+vVa
	 JX6yXxCQIyntdC12cL5b0yc7JdKNLMM2Hw4Hkf/YY+0aNFAbW+QBt8t4ABjL7Jshlm
	 NcOVi2OFC7KPFfOwLKF+ac5voHXBJMIpH5gw6jMTzeMNxGN2Ht7T3iZX9ScwxZ5dO9
	 S9dfv5ZfNTq0XiPfWPjbcDL33l9kkY7rc8M+4B9GSTYcKGkIhC4v1/wQcslPkImH47
	 8sg8Mw1X4FeMgdwrSISiV3eGqCef0/xoe2Zvg3SNBXemj2xxU5BXAkF+/+rVSPFqyq
	 pcwIsx/yWk92w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C84C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717915359.8104.9518040251492138397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edb602738902aaaea3e5650b9d9e916813e9c5fc6167a5ddf6e8d3e4d5425e8
Date: Sat, 18 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737179153
