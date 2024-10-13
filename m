Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373CC768E7
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728806154; cv=none; b=bByohEMCkNWelgWT7vCTKH/V97wvN2wa7Kj4fe9A75YPE6+6FDIBqijxAgp70oAvJQAoTpCrErok7Ufidznz8IQUAZscgWMLTfKz9sdBQ0c7/yjY6X43uoIrGN9AmgJF2v8jKmu7tttV0go1HePxWhgjjiURIq57C7I+ZZtGtOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728806154; c=relaxed/simple;
	bh=zxfrUxCH+jIALel+TuRU0MNXweHcSxC9Wyq6jYWurH8=;
	h=To:Subject:From:Message-Id:Date; b=b24Pt5U3bo2qWXDmzEeSFdrQspzNKiaznkF1EKzhdGwQ5LliPGzg0QnH7lESDSDsDVAAJlbumD7KN/o1hiiF5jKikaafl9wqfdEbeJhnrtPqkxhZjZI/TQBDDBnvkyVHfxjNYz9wCwkPG23uI9iP/Nu0Ll2PU8bb8lNsGRYmSdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwROc9Xp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwROc9Xp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B051BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728806153;
	bh=zxfrUxCH+jIALel+TuRU0MNXweHcSxC9Wyq6jYWurH8=;
	h=To:Subject:From:Date:From;
	b=mwROc9XpTLdhNILdJuap6KPJcOpzGGjDkKQ6p9CEI4h8k5SJPafXjKiHZU2T02ERY
	 4ui0JajH8xF8bvSlUW7s/519YwB6iw7Hq19hLEdYbtB7/4aSxJEUlsmuyyvuHKIcCb
	 Y/WjFl7Y8SFMqwDqA0G8FYgeN0DI0glKpifFYXhL15nLVrh48jRbGRrR0dURFST/bu
	 FbJCZBegpixadD6/70XcCHuKqiDuh2sc6hdp4oPkouPw/Y9Nb44JYK6lm7q80eyQKp
	 drTL1gS5o/NcHh/JjbGEmDbvsk51K3faZ3oJbqK4fJW8dUCyvw63+imyIyCNOV0obR
	 H6gdocs91lgkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B57ECF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880615359.15383.5925223812730239463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9ea87cfb49613b3df2fae92aad09f3cf51230d159195cbd7c8a32a425144ee
Date: Sun, 13 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728806153
