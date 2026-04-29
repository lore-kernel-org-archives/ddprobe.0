Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D3F28CF77
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777493253; cv=none; b=mot94K5AapoTBthy77u6pQyWRP/FKLgdPtHTWth/WEagLcyXQI2WHiLXX8A0H8/nXHXZSO4EqcZnjqu96Xeasn3Ig+Dr9s/KdSJ7awu57Ld8TteQQHea86hgqsgqc4ckS8PS85kyPqVSWfiOcL8UD507jedEhLqw1yadMQcR0J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777493253; c=relaxed/simple;
	bh=H1Bv+e9Rej6eHFvyJqCxX+ghhIJOvFlUcAKU0LULzQU=;
	h=To:Subject:From:Message-Id:Date; b=KPpcs25h2ELEqMjr3d47pPsdON4CkD9Rgu/7/JavVdcTfZtJdGr7qk+iQtig5ywMp2ehp0dOmy4scfSR0hGey2gENjo+2gpOfPd2175ORSRi0YFKCvu1ZWgbzowoz1G8ivMDlmhysV1HInvfymmvNfsZxnlXE+GAYwN5t2iUifg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oodTY32F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oodTY32F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81FCC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777493253;
	bh=H1Bv+e9Rej6eHFvyJqCxX+ghhIJOvFlUcAKU0LULzQU=;
	h=To:Subject:From:Date:From;
	b=oodTY32FsUAgluLcBC6wpXQ5TtvAspXfn7X+J8slHYiJgjxR1Ntsy9Rvo7awHNOsw
	 yMACYWMSj+/nQO2wVTAFfoykrdTit3iES/gHHE5YD94bNMXXxWZAV98wrbS73/zPKR
	 lWSJDBeu/ycqQ8v37a/HLi185y0Ul20Ik1XjnhXsZysGxiSnDn2s4IL+cIKQ6y8zoP
	 07+6dPlva2LeDbgwOkmwDcVKM3Ut5CfDAGUJgT7NYmIudCFTa+wtbgS4W3BWMDm0pu
	 XQz1bBf6+il9p+nj9z1eZTBxpeAqu+aOage5vMmhjn9bpy0IRwXs/1XNPAhAtTIGA5
	 qGyj4mSX5MZNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A980FCCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 20:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177749325368.26247.5008947122427233696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99814c229931ebadf62d566087e028103329e855e528193a71628aa9fb5290a
Date: Wed, 29 Apr 2026 20:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777493253
