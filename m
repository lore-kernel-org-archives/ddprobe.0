Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA762329363
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771422893; cv=none; b=Y1C+1jGwJUZZGoz6b84EVr1YFEJV0clA0KvN3beLP4C0xQTIKPjRLCNGFFsnKg5mdwhl6Gpi5lVLE7k9uNfsE4lY+fzMYn/YVU7gNtc+Zi0OHSaYranBGjp/C060HdTWuI56rgoJxLJNtfhi9SJjMGV31KFUa051Ic1VtTY4e8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771422893; c=relaxed/simple;
	bh=oBitJG81sTy+o12a/LEhibOp6rUJnbfL2XmkYR0g+B0=;
	h=To:Subject:From:Message-Id:Date; b=a64VBOt/RLpsg1Hd6AifzQBe5UGMn3stImm2vnWgToHlQbQY65cD1NcrQzxH62tiocPMSpJZUU2K2v/fpFNU5Dp9bBVQ394XjmfyJDts5avoMcOlpQd0eTB7q5bWVvQ4oVnwGb+n2oQBwLZvvj6q74pnsPCYGLPhAIC8s9z1HCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLl8U5GO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLl8U5GO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C9AC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771422893;
	bh=oBitJG81sTy+o12a/LEhibOp6rUJnbfL2XmkYR0g+B0=;
	h=To:Subject:From:Date:From;
	b=DLl8U5GO5nS0UIHROitZo8L4SBVCxv3iaTcLfyZt8VGuEG6SDwhD9wyJ/OwvG2i3w
	 bBTXi24Zzvkq0Y8G419sSsDqoZRw7khVj+XBNgH4HSrAjtcSjtg2Qe+it6M/9bE61S
	 uvkj9JlvufQO3Ipom1QzDkYw3moxumWzG/EqQW35IJcGVh5/LsxCdbM3OGpc63ossc
	 v/7kM+8NB0+wLjbTg+ss+V519+aCk2IcHDkD2/dTFlmGbIeLQVIUucMivJJyr1LQQN
	 eqoikkTU2kq/0Q1g4Mdr0osZvqyWOLQufPM+Q/dD87X9DIpK3PPF1dnRXtKVWYTkK5
	 OReUOH0mWRolw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92907E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177142289359.13934.9161216753127136751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86163a57cd9797253bdfc558003b94fb267bfd4939cc489aeeb34bbc7c87e5a3
Date: Wed, 18 Feb 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771422893
