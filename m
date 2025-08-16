Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3469B23A9B3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755346194; cv=none; b=BfpKbq+Qy6cqTquAabBnc+b23Jt+ZBDKT/nvEnkFBqlFNUuho+1b17Qc6rn4nEFRk76eHlGFHTR8st2wzgA2z2Vz9hxXS45Pgw0yC9m1aRLovq7nBO4SpbTg6wkjxVWDMo9IrNv8FDzUWa6OhLXhasSkl6yIXZbDznJVQE0r6mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755346194; c=relaxed/simple;
	bh=3Y2oCtJVEcR36iGEHCAS9y98xL6jlDWLrbdkwPRjRMg=;
	h=To:Subject:From:Message-Id:Date; b=kZ+xuAge7IfTeqd4+RIcEl9XAX61lX6HEyOnO2MXxBY1iTMIQaD56C/OwjqDCpcJ3fkMQVpxSLbHo1LqNdWA2Ys/6kWBR+vHWC8GrhVDJWLmz+3K+iDUV5vnIdkWnvu446Ctb8bng6xnuzKdM/QPJfDwffdrc8fKVFivUP4cqEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3KWJjcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3KWJjcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E42CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755346193;
	bh=3Y2oCtJVEcR36iGEHCAS9y98xL6jlDWLrbdkwPRjRMg=;
	h=To:Subject:From:Date:From;
	b=A3KWJjcJGbwD+WkCRKjAfgEMC7H4LPvVAXyZ2PEQ1BSGJ73+MP5BEyISK/J872Yyi
	 eZc3jxfvrhHACWG6SRGiVLaS6hXVw7dArXljnhKTdpdOPv8T5CtIqJNPwY01a8OSuP
	 XBxdmQfd8Gctd8SCZrbCPkEcT5mgzEgPblpWghx3VTGCR4xE9nLHk/qQyOfpk0FTB+
	 lUARDmGu6nJqvFWbVDzpsootT1BNBwze3mRfEvtUIw5n122yHT6jxoBzH4vG8nuJPb
	 PYu/FKk9KUIJKB+Z/MPGr9BJy2gKTaAZkIxaME93zST3znlQAOktrU9JrLAA5BFMo3
	 4xQmZBL46v+iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F6CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175534619357.7393.8535713485930154908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c20260834c210e211e8a6b44540f086f3cfa2f760a3f0e2a7c3dd6552364bb
Date: Sat, 16 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755346193
