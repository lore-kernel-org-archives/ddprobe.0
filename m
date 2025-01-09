Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CBD21D008
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736435754; cv=none; b=kyJ5mAl1PfnaGCtBu6exOlCkpRk7VPSwYmC/nOpKgY8F5VRKGcYXaerdoa6GkvuEMYQpZ/FQusJ8dgFoxyvnDDe7IBgiaaZxZ5C7ROoXAZY+x2nI5ENgA3tgGET3iAZosrQq1QdlQpDL4fxKWN9/6h7aXxyqKpjzqymCCiU3MrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736435754; c=relaxed/simple;
	bh=qnujpI62tG7RMCrKvsUK29H5A2i2l1/s1KrOE8AWPOI=;
	h=To:Subject:From:Message-Id:Date; b=g3Q7pXhxKGPoiUfLRtMBPqgPLJmcvkm9VkkD9+uu5wzKyzk/I67F404GvlLhLQovgfQ0WB0FEc8H4wXmf5TQ4k6hfBDT1QCvi06rBmaClSFk8OoTZA2T9BuutrioQqyLKgC8Y4Mkrnmry6wWofW3UT+DbrRuy644RJDLxXnTq04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hbi/yxOF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hbi/yxOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A432AC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736435753;
	bh=qnujpI62tG7RMCrKvsUK29H5A2i2l1/s1KrOE8AWPOI=;
	h=To:Subject:From:Date:From;
	b=Hbi/yxOFYG4pwNAailvLZOo4pf2SpSZUZbPyGlr035oWIc9PhQklKtIdPGiFuwJx0
	 5xTL/9CWasAya741ghdM0CRsQjDVjnfUO148NlGrFhEu3bWCq2hxOtQSY07o1wPphG
	 /m5U/KJ52SNnE3dQJ/FX7MFu7jzS1kJeOLlVP4Wmy6sXaQS3L4LJ2ljNvHSWSAymU6
	 yF+3TwWsR6daLqQZiLzl/UNau+xBnJyBsuNSKx5I5nmurd72GSriHKMCyabO7OwcyH
	 +cTZdQ5xok8nsiYNtrdnoMKYIh0deYUjkYVh7FB3zWhpXqh0V6RAcHrippvbXGmNuk
	 H/sfBm4modLCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD7E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643575359.15375.11869919493961556726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d8621e216bac57d62a05ddf7b85c72b1e611dd5cca15a13e28e742a05a6d4b
Date: Thu, 09 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736435753
