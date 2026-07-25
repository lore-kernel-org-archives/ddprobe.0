Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD1A36492A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784966434; cv=none; b=qO/l6HmzftZluwrKJqrjC9YtqDbaaZ99ODYa8Gxu7zdboqoQmoJ+E6j+X+x2vaq/Juq/KFQA0+6976Yeexr+vLW7EkK3w5C1vZ5r086wfYthaiaryU8FdsUEtdmDvHxGvPpmepmQEiOFFJKRNHG9sb10Nrt8kx94cpCER36PduU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784966434; c=relaxed/simple;
	bh=P+OWfP0Z1E618OJSAY9MWLACFLLsdKwzZqVnahLgndM=;
	h=To:Subject:From:Message-Id:Date; b=F6fmJGXZgVEF1A15H6KdLZa8lAl0RWunJUWsMNjvOpO++9Z/PztsKwYGzlnQHgL/6+c+eXXFr9wM5Q8nvXXBSkG5u6aBnxCmmB2sHj3OYa+tXjiu8Y3pc7wdMaMkvB5DT7XIS6dddQw9bsWIygqCXUGXbRDDMIZH29Q2rpkZFKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ttv9g9hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ttv9g9hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9F9C2BCC6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784966433;
	bh=P+OWfP0Z1E618OJSAY9MWLACFLLsdKwzZqVnahLgndM=;
	h=To:Subject:From:Date:From;
	b=Ttv9g9hsMEoY1BjS+2hHo4U5GLK2Z0qkqQLjTWqhFQ7qp03f5F4spWCYYs/BasLcn
	 GTKhCn8Bl2R7fiMQAROq/Pn8wTeZlaikqQvX5l3HEWGttVPFU/wbihrzsowZwIYIn+
	 +s0XYhVr8VEad13o9KB/jCrv3glt3SHupTpZ4ztKkiAItyOI7HC8xZ3tKQsj+i1Kqx
	 3dpYvAmz3yJmxuOj5k4UIYguLb0RvsvOjUFrNSiB2jn65e6clBXKwooer9VZ2sqxOj
	 K+Mx2GrOK34rMiF0Ds/eZnFPvSmUAATv3A9dPaTPmhxfLhVoKsrS9Dl3Jjj3zf7kUx
	 m5D356Nl09n+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA601C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496643368.29343.10956914394617129365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83bef716975f458990cab92dc66105dc7e52d8f291511c99365dbc9095883c99
Date: Sat, 25 Jul 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784966433
