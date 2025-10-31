Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1622D241664
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761946794; cv=none; b=pKzqpr08IoozR/lcxZOsxJzvBpgKYFmuVc24Leu4xirzLqY+LkrPOo0usc5VhM9fJHFsXbX7hll/s+AH3RvjzE+7xpyXh9idNLEBL5QDGo30D+24fsvmL8wp9rP278/UUvN1+80KJ8jQyq2X0QSV2uT7l6FJ0EUEfXGjhuSX7/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761946794; c=relaxed/simple;
	bh=aDMR/Clzd/1Cr6d1s4rHw2k2Whx8waulTtU1zeg3piE=;
	h=To:Subject:From:Message-Id:Date; b=XNiN9ykosR4poytbZ6JQtdR2LTAnZ94m9oXE+lBDqOEwN/ZOj3R+BQBJjmZID2FqDs1srWy6vD39SNoeKXEdVGD8CktEL/g1qskPdXLvx7bnHNARkTQHAxVqny48/xJ1exDOvbmuV7cSvJPcZ6oJFduE81Boa3KGcql14kq2juk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fP5f2yUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP5f2yUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761946793;
	bh=aDMR/Clzd/1Cr6d1s4rHw2k2Whx8waulTtU1zeg3piE=;
	h=To:Subject:From:Date:From;
	b=fP5f2yUFge8Mgx8c/+SauXQvPsBOzWpZegb97t3tgSHlLV5rIDmeMhLEfZ3mkON/C
	 Z6T+PMA6jMryXA6AS02YUTYpCohQIz4R8xhSdeSAHS5rmmEQslt0aDPh/tQwIk1TA9
	 G6kjIvps4KMjwSJwHROapMKZzG/V02t1L+Rsmy10eyngxHhvU5NqK5boHU9/tJ3doq
	 hZVq2FaeDfTteJu3v6DPst5YLhpBqdBc03QOVssHLVE1b270ZhXqqZPwsDW1cPIHU/
	 pVQVCrn2YUsJkcAhk797Ak9y6rtVT5qMEgtEYVzxM7Pd4uPxJvRyrwwOVjudRDOrpe
	 4UWOWyRXEDdMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B57CCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194679358.23554.17393155809954732673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f381fa7eaf1462b0ea1962fa2d11e7308bd94c8628c2691ec5e01963512b91
Date: Fri, 31 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761946793
