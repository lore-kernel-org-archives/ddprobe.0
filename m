Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB9037C118
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791058834; cv=none; b=j+E7JNHHSeQPcLN8uTvZwyHTDiOsvPYuTjNk9vB6NyjlHoToccPfLDD7kLpZRGZcxQ7wQgdVa00au4QuNDLSy89MD/j7uDH8g0Em3YT/PE4pIo1gS0p4AJ59n6pgm3mgg9CF1WLmYFbq2OP1fx3O/EylVemYsrC9zu9RfvI6blI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791058834; c=relaxed/simple;
	bh=Xdcd1GuGJCR6akNPLxZL1ofHWQNpGqCOl+gIkap1Cww=;
	h=To:Subject:From:Message-Id:Date; b=nkFqDy5aB2cVdvEKTmGVkI6BXmvaz32DPzOXUY1lPaD8Bz8XxevcyT6vhi5p2xBFpARrWQYvcPTwCmpgw8efI0BdA5heQYo59mwe56J2bPlTuSq7hclBqGu8QJFQLUHLk7T8KogO0a1I/ecnWdVqjen565YpFKWQPgAD/S0ddOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8Pq7R+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8Pq7R+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD503C2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791058833;
	bh=Xdcd1GuGJCR6akNPLxZL1ofHWQNpGqCOl+gIkap1Cww=;
	h=To:Subject:From:Date:From;
	b=X8Pq7R+YVu+j20Rzmnwz8BetRKQX1bhj3HZflLOllUaR9pnGJCLK1bdPZR+XJ7HcZ
	 Npx+UyLEpWsFzHl+3GCXWq+bQ29d+K04O7NsoJ5hrGjU7+mPZko/vG3ZyzYxFeIVjo
	 uM8M2Wl/7KwsBKkOkNjvmHySwhFrjCz5306GTdmkq3CB5Q8Ubz1clLEMbGji5S5p+N
	 8ysNVEARunmyfRC1OnNnzY5PwVxG8MrUsriPR2XKFLHwdiM6/92EZnRlrDHJ6up15l
	 UZZW1I0KmalO1IWf0XrNWUDuz34bjEXpAVB8drAcIDbn2WdM6m1t/i9fxGYlIewzeX
	 499D45S0IFxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA330CA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179105883368.4201.16956661461256217926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65fe29e83a4dd0c36ee3f3062345b6d7dd2504691e4b05fa6bad91123e7e31f6
Date: Sat, 03 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791058833
