Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AE770805
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729862154; cv=none; b=rHh/WjZKm26d3642288NTG3y5IyutbeEDiHyaEq0+KYqY7P/c6sSpENYex7vXWYntAKOXa8AGqukhNJc3u+hFaop+5ehiQbfc89rGqJ8aMXZL+K10wbg1a2ZbfBiW7HnR1uwggUKqZfjv/3KTT4FC4ufTLtwhPoIElwyX8g7FIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729862154; c=relaxed/simple;
	bh=inDx5lrwSd0nn2Cea5uTUOH2Mcz+kE1x11H7SfKW1WY=;
	h=To:Subject:From:Message-Id:Date; b=XmzHPeto+fTTj/TzR/iRvLIq/uIsbbVOwjmWgJVVUZchUKoh9vXRa09R/7lVemGg3MqOdrHCWZaD0Im2D0gYgfkMxRblYtMlDo17fztQHUSfch171TA36OCepYpGYQU5CS81H8JxJ1/C8VmZGxNxTDI9eRMMS4mY/IvFzv4Rg3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmIkd2Sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmIkd2Sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97E7C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729862153;
	bh=inDx5lrwSd0nn2Cea5uTUOH2Mcz+kE1x11H7SfKW1WY=;
	h=To:Subject:From:Date:From;
	b=OmIkd2SnbUubAttiCn3J4HZZ+NHG81P4YiEJv3KJjlF+rg328oPR98hVS95/sP04A
	 AqvQ5/t6hQozAmv6/o+9GrK0q5eyNgsVFD45j8pKtPKqnZgaiUIE6zN7Ak1AaYSYsK
	 IlUqj/WUzxB6Z+QQeDieFDS7xniPOLed7HhnHz+Ij+TylqUUko8U7iAsUuUs5h2DTt
	 rlUfFdjREwepfgOYTEHaojmyw/zSmHCHpzUbpI4JKkUH66TKnLoj2aK3nNyjiDMkjs
	 vbLyA7DZf7j/mexPkssNfgQUM2iHO1KFFOqvBx79VJMTlSmzO11g6627Js8eqD4ta/
	 0ANxJhTvGklMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E86D0C609
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172986215360.18185.8622247694084656299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7ddcb9c28bed3ec2fb7b14f9a72a3c0213c3ac2f80779a42b4da241ba6b692
Date: Fri, 25 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729862153
