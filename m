Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D5B350298
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791304234; cv=none; b=lvfv12aklii/DH1ObQnwyL2qSHuVI4R51CbiRxOJKD/i8fMAePCsr9FjlTHmyIQ9bLO/p86/H8DMhJL51mxL4iumEiqM9VNauEMfkJOJ/iKLF63rAbHnSHWeA4pgTQxF+EW4hxp5aVn4TJVUt3TQXHEp2ygory2rRXw6QXvrpIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791304234; c=relaxed/simple;
	bh=a8CuhMAy+lLAhktNTjT9BISIszeDn3tZqVMO8sOMdSc=;
	h=To:Subject:From:Message-Id:Date; b=UI/nPBiSC22uEwZgT9MQavIbdfq2Sgu8FkKdxhd0jB33L8WvfM06NPyrxwSLFnW0ww2o5J2C3YtWrz4WGllZtV+IOvBSXXJAoY0+qFkOR1Ml5l82VueB7gQ0Iaxe0X9/cAwfTo+iuE5Tid58yW+XqlkVbhM7+OPhE82XwuDKh4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TK+gz4hz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TK+gz4hz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA03C4AF60
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791304233;
	bh=a8CuhMAy+lLAhktNTjT9BISIszeDn3tZqVMO8sOMdSc=;
	h=To:Subject:From:Date:From;
	b=TK+gz4hzuMAgxWJHvpNc5+8RGGrSwWU8PNGRGqtMz7Qsf0GI+L65BXU1MqD5G0jb8
	 hbd7TEMdeKo38t3+bSA9mCOtME3tHUZ5zh1yzoWc8y9Gql3WFBTZYM2YQAgfj+r+gB
	 gpEINTwhFCe2AVOmeHu7N2gU/roIJYZTCjJaCOhS3sEXjybV0m3rWuwG3SMD/uR8jp
	 CLZtdKr29922SaYtGnU3kGa4y26qoPC9gBfJ5T0Q7Y6RZPVWsS8M5js+GF4kwlsvwG
	 igBTpIt5o3OMYH/vDNxzJ/pwKtjaXuCMWjSNJe2fmaSxvAjbglPv0JYiA88rOxGz4f
	 MsJXqiky+gjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B930CCA6001
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130423374.15662.512074233770889751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b936d1888d598e773e69d565053c55639080c3f5e41372087b549c9a31686373
Date: Tue, 06 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791304233
