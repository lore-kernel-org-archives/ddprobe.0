Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BA61DFCB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727812554; cv=none; b=NUq0Q4ramDNFMvhOnlJi4JZp0tEd5XeqzIU02Rl5yvUdiCWklpQl7CV3TNoJwuFhNq9Bl/axNTzZDBMoQeLjAjHSOpXs/9NtVNNqMteQ21p9EED4aTU9uLBF1ExHzapgY9Eb6UsL7qdVQPGQgt0Xa0SjQpa1Sz6lP1DMvpghHJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727812554; c=relaxed/simple;
	bh=IXhrvzAvkxqF7FtYlu2oLJHtWWHhQWXhQEDnYIYL/Jg=;
	h=To:Subject:From:Message-Id:Date; b=sZE+XB6kOWVX8sV1D5R79qQ2g5ORu/yDrRgfAfcGt9MHRuCanNMmjNhWB/bw7CedoTKRQ3afDN43Dkj7FjAzBgy6eFBo2+fvcsdMrd1Zt09evWEKfzl9eJIy92vk2VAzFko96ZK8nv1wWbRPFZH26sgkXzoafveOdrBX9P/kJ40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyXbQpyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyXbQpyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A57C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727812553;
	bh=IXhrvzAvkxqF7FtYlu2oLJHtWWHhQWXhQEDnYIYL/Jg=;
	h=To:Subject:From:Date:From;
	b=PyXbQpyrK9kiWuYlNnR8D7JwyPrn/CVglnwrTujXfRzMc3bLI1SYRSqb6ft/oxvIh
	 LbnDq3zpEPqZ14kQU0qdPLQQ1M4gvz31pTqDJDqeFi9YhQCZuUHF3OlFHubu+ncaUz
	 kgxRywoXneDxAg+KGbsUBEQ7fAtQWgaNrn6AW2WCxWHe5r3kDtFr6/7SiPw3Zf5j8k
	 zbyh0dMfiUXvxYqhDecti1GShk1Z6ivokbcczILj0kWFpl3oMwuoVTo4O/JFDJgPdM
	 zYtNZv+2N/AiZZwma8LMtib3waddnyxxxSwdWUAjpMLawORYcVRoqNfTAUmDXYW76F
	 8jiiu+6qRpVwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FF2CEACFB
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172781255360.4514.7340053074049810363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2266613555726b0eab84669d9b07f696cd87026d0384a8d101e0dc7ef0b4bd
Date: Tue, 01 Oct 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727812553
