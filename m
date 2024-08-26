Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A2642AA0
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724712954; cv=none; b=rQ5IDRt1uhbBwFUgS/kMducXqscW3ASJyLUCWEfyBfyvn/AOK2qUEVe21KCsK4iQ/+WzUJYH5ezsc6imL9r889Zn+agV8eegCSZ2TzN+DsQd9vifqzv3MnW7qbtZ/dHBUm/XAvcDdTeefAIKETNUGxtCAQqVhMj+zESbxx0lF0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724712954; c=relaxed/simple;
	bh=LXUttr8heQLzscZjwUg/eHEKqmjs73ih5ZFvKcZUZpw=;
	h=To:Subject:From:Message-Id:Date; b=vCIcifRPsPhiKzfU7qJEGnEdw4QDFb4+DAUt3rOA7ASQ/jDRZ48SQOUth5uFjpolPAS5SQLPDtVmwibCIb3kJnXGpwflOWnlhjwn+nuW5cAvbk371GaxMjvkEMkyd9OvJWXqmn02cVdye3+rZc2vissk/UZGBg01I0N4VjtUFyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjceXbxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjceXbxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD86C8B7A1
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724712953;
	bh=LXUttr8heQLzscZjwUg/eHEKqmjs73ih5ZFvKcZUZpw=;
	h=To:Subject:From:Date:From;
	b=HjceXbxcMcnL+4KJgqWsGfEylNR5deJBUQqZmifj/wDOvVtVtYitaRhfGCEihXXga
	 SnThpWZYJI5VQkaOqX4b/aBVjw+oqOB+ELK0DgYPuVMNc/16IB5MPV32HPTprhJvE4
	 r5vNLYLsqelEzUz9/Q1uyJdfLFfAv5eUtQv0U6/jXP7sRq8pC9cpCpbQwGUGqsYA74
	 XMbhrGkyd0JtvfF348xgGYZKr1VgiiffOsiPIlXIYq4Kk8gzRYAw3kH1XE/2pF4bs3
	 jrFz2vmiWZAgJ6lzE5J0EABT3sTE+jkk1cjfMVklBbIy5vnNYWj5sY+aEcyxDotSl6
	 RnPxz2py7IPTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93193C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471295359.11185.17260071844387294196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb57fd717875142df2d6024bd62ea21e70407e8d94638b62d1f8b81a18c0f4c5
Date: Mon, 26 Aug 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724712953
