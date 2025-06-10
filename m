Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9E078F34
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749595794; cv=none; b=rnp5wP1OR4dM1q4maT6fq/hsGCDgza7rP6/J+f+1ekse9uLa/YsvZzUqeX15dOt9Mu+MrGSy7lpjZiBTA3gjnWM4VjttFAFoOscugo8NqABaWtSSvJzWp4VGZW+DoXHTTwCjv7iqFSrtOYznvmRpHMrbIz+QY5dycVJLnmA0rls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749595794; c=relaxed/simple;
	bh=ztz68uABlfVSqrONEp/ANhAOJDgihSymBVF2nmXCCgU=;
	h=To:Subject:From:Message-Id:Date; b=TpQMxTkbE94ENvv8p7fijzQaNlEb0EwMUWkMeo//gtGqoXBE5Le4i04V4pS9oLk/pfkSBBh7kOHFzEl7Xd24ItuUNleuqberXV9ourlAREdK559gJzsoesI0a3XoHCj/1DJrwQykPN5NsKNq0jUnW3NJtse1F69Xc9ou9w3Z3NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHdQVtKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHdQVtKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B1DC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749595793;
	bh=ztz68uABlfVSqrONEp/ANhAOJDgihSymBVF2nmXCCgU=;
	h=To:Subject:From:Date:From;
	b=JHdQVtKFII2hDnEYYMT01IesU7yqLWhH1EAWcTWvFvI0VcYkr80eEcdlQA3FRIhIP
	 yo8z9h6U3lDRlPuxp0BdjrpKwInRlNFwkPpKF3GYoDbCNtrbrigMQdyvRB9h7dsbrb
	 tYa0h4j2CXvV2gGFWEGSzjIuwa5ygLMyW6x2uTXCyoyUTI3yAXBzNugechZdateIsO
	 gV7H7IReghO3cgRCqh+mGJQcIlnFFz40Rhd2VcPgzeK82JJ7a5wHLiqYM2KEKFDv59
	 H0t42HCqu0d3VBPLvjp+GoHsESgln11zK9vcraVstNTzFoSzQiNRZGbyWU0c790j90
	 q59ZjtgpgvCKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CD1C71133
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959579361.28766.14749774356514138941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69eabbf34bdf717460c734101200d27210bca49df021ff2c26dbc2b08b20d39a
Date: Tue, 10 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749595793
