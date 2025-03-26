Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366BB2192E2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743022194; cv=none; b=PvwOq+6eQVtE4jsJLcuDod0zBNClRqvCVecQxMqB1FPWou7mX2+x+j887dXQNzsjN+4Wyjd9LI1X2qCMtZV9UUDXYvoxgutXzpP77E2W676EXV8aNJoNmHN8lFzgr6JQAdJaHCJhwWokE4pMtLbXMT+7oaCHSj87vJqBh74D6CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743022194; c=relaxed/simple;
	bh=mW1O3POt115DiGOkxiM0z/EGJa1Frtt5rPRBKR/zJh0=;
	h=To:Subject:From:Message-Id:Date; b=N7qX0xciwowCJTZYzQbhfCsFx2WHlucKjsRfLWvQxNmBhBX5l4L3/MtHBJcV6ftbimkB4CqT4DgJeOP/1meXPkNRRqmGi73CpnAY1dkdyIkV7u1gFkRNI+vePAGtmHZoeVuNfZhcRjzCyfETSh6dLI5sXc0YFDEkbq0ATsksz40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avB4yipU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avB4yipU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE23C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743022193;
	bh=mW1O3POt115DiGOkxiM0z/EGJa1Frtt5rPRBKR/zJh0=;
	h=To:Subject:From:Date:From;
	b=avB4yipUnVYzLf0/3a6pGrXGuYbOVO5Wo3lnd3J9GfnnV+ZVeAS22F8EKNB8BbAiN
	 IxQBNcxUqIM4ozH3c0757B2pZ8Irojk3Zsh90Zz+CrTsgfVaLdHEHON7PqLy4ndGDn
	 WPhVM2wU7ZHybjZyKoPMLGhnuupdiGq0ONi7iHxmUSbL5WfzJ7a/6wI6oRZGGD6QKE
	 CpJayXE4cZgVLaUC/Z52hF7AVYii08WTkU+0NSK5z02Uuj8vOoXOfP5OfH1t4mtqm3
	 xwf/9VVLhHNRtaLFcVwlN9qbA3Rhy7inMBzyKUyhUICe08wAyJnzFPiFXqwSXYZ9gd
	 e9/MVRy17rt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98347C36010
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302219361.10617.9876216066154000584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a18ae9a12cbfb6972db1477152dff91afa41f84c997c466658cf83af4dccaafc
Date: Wed, 26 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743022193
