Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB654457CB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791720634; cv=none; b=cTezatQZ/JII9NjfEao5Ll5wwqPkL3d7IfhK46f8jN+OImxan7uC1TRySaRzSu7UNV7TtvzjkBP6bUe7pZrd7WMIhj13LG+Pulk6lGZUOc0SRPIRQaIACAC+FZyjnYa/CeNFXp9YjW8+yldHH85rX4utvlVWlTz2e9JGkvLkyPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791720634; c=relaxed/simple;
	bh=BEYQVFd8//OLlmX16+9Z9N9cPRVnxVYsrSURT0yftKE=;
	h=To:Subject:From:Message-Id:Date; b=XP/3BNQ81MvHo7yPjoCnS1Rb42lTibg7LTghBnZs+HvQ3jstFCv5jpy+Xwp5USL3UEdZwc3W1GdNPVPTJFLpHAiY9JpQBJF2SLvMopNEC1pf4+aHI4AUa7JsKqG15bA9TO/biLxHEaZ/mrMS+jPdR0eZSFjXLWNLgtNpR3Kpkkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXrkFvtD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXrkFvtD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B7DC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791720633;
	bh=BEYQVFd8//OLlmX16+9Z9N9cPRVnxVYsrSURT0yftKE=;
	h=To:Subject:From:Date:From;
	b=tXrkFvtD0eDh/FNoIfIhua7Za5c3y32r5JfG2VZodniAq7zdKbYigzonkyedXz0ks
	 tCl1T1sxXXLlYqLLdBzvNIbqgIbX8ZWGgWFHZ+sW8A1HdOHHJfEwyg0UWcRfgpcxSU
	 de/++c3rYfUm/My8UkeXT7A/L8QPBamhTcPdrK971S3bHIIeUqLp+mvjcApQ/0VsQM
	 DU4zg1Dge4MdSY88TvIh6pemfuiuCAgoiTdibh39mEl76WLFe0VzhlJmB35Dbu6XY2
	 rhLyWGmVfy38cyHdbXfha/TGiYYSJMkjaQ8/t/BsYUzyvUVGRAj7nJ8bKINbEzAlE/
	 5mWWNIVappZ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6F6CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172063368.12255.14899431508594398055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91790527156fbf58ea976354a69bc5bc9fc0bd0601864edd7975d8eaa6b9c6c
Date: Sun, 11 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791720633
