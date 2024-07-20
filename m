Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B7712E1DD
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721484954; cv=none; b=gqwkfSwfdNjcy/px3eyfrINgEzNwsfXudmTrgct1YCpwVPi9ynAv+3+CWHS7012GBrm7AsT+AjA6dnPphJsQUOjmE+u89/oU8gP9QU2JRvqm5yeU68mEGeixEAJHWIerew+ScWMXS5elW5zLc+4sRAeLZlXTUj9qog+bHMjsGdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721484954; c=relaxed/simple;
	bh=9olWWdtXb+GRLvHCd+lkpbMgFt7Zy1kRqLsRnrJJ6ls=;
	h=To:Subject:From:Message-Id:Date; b=OzxIV1BbH482cxa3uno7bfPAm725MxVooyejzBiFErFx7RhqMT+rLsJM/HO8a73Gwx3JlVb2MsFh8aAebT3Ud7wDWDXdjajR7WV7Ym9uP/4RRalrPmiLodCPxTpUg/jVMQSvdM1hjXuIbJmSfSG0eHzW7f4ZDSgc7yVMrEuvhBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brwXH69V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brwXH69V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E02C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721484953;
	bh=9olWWdtXb+GRLvHCd+lkpbMgFt7Zy1kRqLsRnrJJ6ls=;
	h=To:Subject:From:Date:From;
	b=brwXH69V6lDkqE/eiQTIOmb9/N3kee0jaC/0XkjAZdt8um8tHh6kSTRr8J2caCfCr
	 2ZrZMCVVgMyppSNzEc3fw3BtkUwA0sUP3kEGfGXQXbucG6tQC5RzS5nfC+x6+PIipc
	 oIYBWSV0rqVy9RJgQ1JJunS1mginPrrNUe03qc0ek+Gq9069K7KdCEjZRkGwRQaAC+
	 pxJjT78v0nHR4yjxtMH7tpSIkbREyx8IJVM/k+wvUbyQ7kedHApdg2Ojq3/whYGa3E
	 mJQq3AvvJkovFsS9wbtBxRbOozcED/tazcxbt5Ntl2yDU+gIboHb83ViHpLfgd9MsU
	 ujqHYA+5zGyBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF08DC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172148495364.25728.3383299521455084091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15753a0c7cfe1dbbbc4a520388518c1fd463d7fc6342eff1ae02bf0afc9f0971
Date: Sat, 20 Jul 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721484953
