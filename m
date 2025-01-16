Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C6819539F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737023754; cv=none; b=aLoT+W3bNT3Lx1CLSbOVT6JiCW5u46l9MGUunYHjp10fWNSo44U9U0A0rR2qU76Qw7ZwHDTPuYP5VBTk5SEqhnF++l9rE9lppzvTTdqIG4n5aYKAZjHmRFqRsdY9TZEbxc1LOAWLiyXuiSMcYAwBQsSY8IVaVGhkvZnkKx2PbkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737023754; c=relaxed/simple;
	bh=fWXPh9xvTQRgYvwaQi+f9hA2xZffg10BHyJ+5HMqQx8=;
	h=To:Subject:From:Message-Id:Date; b=Racq7wX+o+vW1PqFkjQOD3MIfdGNbanUEge5Y2u+rwVnL5TpsrXQNmeJsZ8cUrTF5/tONfVSC4X+IoO5Kvg1FjKXYbnzzJfvwF+u9w+o18PzOsrJxWKeMllVe8bIxWOodxFws64PwIwGEIgRGC4TS36S8XX6AcWzud29RFkRfBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2JMOdmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2JMOdmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4DDC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737023753;
	bh=fWXPh9xvTQRgYvwaQi+f9hA2xZffg10BHyJ+5HMqQx8=;
	h=To:Subject:From:Date:From;
	b=h2JMOdmWW881ebbUjoSufnizi+iCYLv77TfY/oEu4Lt3WzVOKzzqYpkb3YwL+vViC
	 cGnl/ai3/9l1WebiGoYR1PSixCSD1AS7YJyTrCnTtS/8/l0QuEISsYVcBe6HuZbMMe
	 oRXK22bz9lzM/aiuItwPukeNrjb3yb/BPDkMOUYujlvosrRCLdn2n4pwDWvcQi9K6S
	 88pEYBwlcNFmTEzWg70saN88lQmCnzs8UMhhndy9uD0qNE5IfSGHVq+t+54C0INpEH
	 lvTqd4OThQnsczALoOmZncdJqJiCHU2iu79Y8yzkgwDXlSYarqi9rek/JWhAMRE56D
	 EulTYwbkj8uUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9330C02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173702375367.3915.16289470834286349234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86ac0da09739257fa15b9240a53e140303b9dfbe53d9dcf3b411abe1733ee72
Date: Thu, 16 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737023753
