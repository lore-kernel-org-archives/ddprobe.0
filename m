Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DD43E49D
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735999554; cv=none; b=KmER4ykmtxugntsjcNYakb3Bqb/K1CoKCKXoHvG23Mz2evwi9VbfdIaYdQ8zemPLnaUL9yuH27hnRODRE3eLR0Qq0+oK/SM77Fme/LS1V9BXEnGb7QLVaIFvxh2gDQSMvhoPQdW0Fh/R4rQ6wIsr3SPLT5BmwjBEwkUk35catWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735999554; c=relaxed/simple;
	bh=TLgTmbpRTVUGnm8i3PROJJanEHwYwkUcnVn8pQ4IG+8=;
	h=To:Subject:From:Message-Id:Date; b=am9jYXMZhOjwlmqevRs9WMAoBetgKw9ecCP+DjbCGgHrjFaQZKfp0nIWeE+pAu6yVpfMlCeKFd/mGeEfy4WM49xAfQe6ArXztCzRp5HnuiwbwLSd9WIlUoeQdiQNqy2AubmVzQAIiDMO0QdSp1+zvAgS5AJa0QpyCHR1v459WAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Glutp1t/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Glutp1t/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA068C4CEDF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735999553;
	bh=TLgTmbpRTVUGnm8i3PROJJanEHwYwkUcnVn8pQ4IG+8=;
	h=To:Subject:From:Date:From;
	b=Glutp1t/CylLHzdbeYxyWHCFYjw4NbkquaPmPk+Vaih/5NcGmxdxmHy2Q43nHqD29
	 +YplGE8ieJOieGL8TzuCt3SlRj0760jVVXtygNsBYGXHt+2GpaVAI0N0n/Jc4gp25k
	 FN/zGhdkPIf3O6udL5Rpe9VcFz03n/9lHr4D6hHKGgBBA4G0ZMEXWWyB+nzJW9utbS
	 hYuh2W7Rqpmj4w7iVqjYaDgReM3ZzjH4Lb6s6avqLOqzIVa0QJqD9Vnrr/J5v8RXAO
	 Wg4AuSQXYhdbwd/wdJe1+BZ2/P5p3YBYRgybu6ljn1pGQL+qSFX4Jb5ujccSm44rWR
	 vtflt1Za8quNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F76E77197
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599955362.912.10519312797035053927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c70aba9830c92bee13ad17c56db20db92958ae3098463e7a1b5f329c0ff2c48
Date: Sat, 04 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735999553
