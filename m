Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDC546447
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748093394; cv=none; b=RVIN0WKl8m7Dwp8ry/w7zYUoGWWbG8f9m1nvVMxfUuzlXvfO6FopwSVGBC6ik99yX5svjSuxkgaH8AOP1iBMA02y+SoCsxyy99rEXlYdtl2qvJEp3x2kUcvSLQ4VTHhG8tc626BS2f284aH33BJLL1BTRlWoIDGkpHsWctie3zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748093394; c=relaxed/simple;
	bh=USrEWIJHbLGYPN6y1yGFd05Xj6zlPACg7xNwAbHtzkA=;
	h=To:Subject:From:Message-Id:Date; b=ZnyFtbgpmk6Fw2SqExKw0VbvP9+yLp0/WnwTlWqiQ8StPrPP3nUBmkiLbf7CXcSxiu0UqgR44j7yap1CJoNbb98CUu5sh4uchv25Bl2d/ZiMsjmIfYINUEhF9cr7bLKcrzetl9ZvuzV9zQOgaPrxUPozLyrRPXer51KqtYg5n9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhxpwWUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhxpwWUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A590AC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748093393;
	bh=USrEWIJHbLGYPN6y1yGFd05Xj6zlPACg7xNwAbHtzkA=;
	h=To:Subject:From:Date:From;
	b=rhxpwWUKuxRJOLS41giKAMJlFxvXHOfUIcwax2M4UgVlwXpyALXCfE8uWnsAoXzzf
	 87L8GQbpbgb9uy0QDxkQlvM/v5sYdu4n7xzJGn7nDva9HCIZrmRxfCDavoM3/sUIcf
	 FrT1bYsXM4cgw6Pql1ICp+XyFBkNi5JeiL5CXzlxCniTp693e/0WOIALQZ/PO89U1D
	 l5YnXnGuMbCgx1xRuQ2LGmMITbG0sbF6HAbOACIox4P/PPmIPwP0ucXhNmPNBHIQW1
	 vpq19v/H6zn8y1Er1B4On1B7XGMcei3rW529uAfsRgpH7V+d5rMhgGQEAXe12MpnmT
	 9TX0HIu6k0oJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9171DC54F30
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809339357.11811.5049531248600434434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031b8d79911314dfbc6754a7fa075053ec05714602f99ea414d63fb197faeeba
Date: Sat, 24 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748093393
