Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F84B3BB44
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763572314; cv=none; b=m3YuQq+WkD2OnkVg8KTJi8x2f+DcfUq04PmIDVSbqHzHhNaXWqHi5kb7k9fmktjl/Lg5IaEOPMG4Q5mDmOw/+fPMfnWOtYQkClxy52wqK1RPW+nMuQAqfmsuOFXZN7eKD7iQ8FQzKukPXTr7MUU2HDLBz6qnVDO+POwaG8QSsic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763572314; c=relaxed/simple;
	bh=GP6frwieaJbf8Uh0qGdQDPZwCuhRFjlv4Wd35qspPR8=;
	h=To:Subject:From:Message-Id:Date; b=iV/6S1K7Wr6b+y9HRh/zVY/7koSX8NRGQIIOR+dU9v7xkupOIdGGfiGGqrfZVp4c8+0HZFdotrbKfgP27kQFw11J4WxhOXo456y+dA/YzRdlqX4cwV287kZBy9bPRFGcsFX4zjsBUsyLIkbOXscC9N7ZDgNGrO5dGBPCaB9zlCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kd+fDOK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kd+fDOK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D2EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763572313;
	bh=GP6frwieaJbf8Uh0qGdQDPZwCuhRFjlv4Wd35qspPR8=;
	h=To:Subject:From:Date:From;
	b=kd+fDOK6Ps/lhRVzcs9AzBurfbxCciJTfLkFqpq3tmOt5b3TigFTOQqKAi7brD+He
	 BlN89fUA11bfuZ52d4Ah2zoPNiY8XeJ8toQzQanLisN5nG/2EcFbXEEntX410gwKMS
	 FKqRZvnSPiKOzbmGeXA/VhGpVFEVOqxJDJI6nhPfQQY92QwbO1foRO6GtmWZzzyLOH
	 qd0cLmBprop1a/ONOe89jCLC64nYRy6l85Glf71UyYgyrrABeI4PYRXL0vhxSZwR9D
	 kh2SksM7res2H4Ke8O43t6h5BarsPrl+Ku/CB2hJlJwptVQ+O5yjrZPGN1aS/ebyZX
	 92ka5/393qGLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0C9CF3972
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357231363.5378.6160009899771674164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ea802927a1eb84d7f8681e5ad1e0d2f1330cc1b4557c374a573aa164da6fcc6
Date: Wed, 19 Nov 2025 17:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763572313
