Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF2D2595
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736823354; cv=none; b=lTcfNE/Z8Gv9XuO8f/1Z4N2E855iltJPF2uVrG4LOM03LIFDTJralmY1cUAapANkZKaMW5df2KSN3mEqxd/V/e8FAe4ygQG0MWKJgy8Y3h7fgVFQulKWWZiQvX39fdJdW+GGqlVzyeT/BL9kxwb7u95qPFrDpZXc1CJDygnQjRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736823354; c=relaxed/simple;
	bh=Lc3XRCKet9Ye14nV8Ups7LSvGf9ufSdnR+54uSJqORo=;
	h=To:Subject:From:Message-Id:Date; b=qcKdK2u28u4L7En8jisgiRiL9weYWBnyEcNLQENEqauYm4U0SWm7Habque7YOd7L3jfKKqV0w5acBXU3s+znvQuLLJB8AeHNA426sOhZyvAslk/OTieON5tM3/0kqbcQOnBmaqhT6t9diwrGPTrrl/5Pej+phfzDVEaL1pcSrIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfajWWV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfajWWV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD212C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736823353;
	bh=Lc3XRCKet9Ye14nV8Ups7LSvGf9ufSdnR+54uSJqORo=;
	h=To:Subject:From:Date:From;
	b=VfajWWV3NN1oDFlNDW4lgpNqwOTNoWewk5rZlo95ZjxGW+QRELWitsohzH44/fH/n
	 9uhidmTXXtEN/ZDzdpx7dzaMgjfHnLVsOlwIMqe20eJHycGYjkLlzzeFM8G/u1Cfam
	 okKmz1zi/YaGNXd0hVM5Y4otZPU17AVdWUhm8gRwOH0azudLrOkNLzQioXPyOE7Mpc
	 ajWtyO55yBmoQFh1toAzlrBvAio8ncaFpcuofJ1XpmQEWm2WQcA0sUvtZ1uAoJzqTj
	 VCD+u4xHU3OvrrTVzvLjNxfVAz2usXfs65AwgTEj7eV+EEgdmApSjFkW/Znd6IYFR3
	 krlESxNl+ThJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46FC02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682335366.30391.16074528784153155782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0270ae18548be23d64ad42477d4c1e99ea8d930d72dceff294db8007ffcdeb
Date: Tue, 14 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736823353
