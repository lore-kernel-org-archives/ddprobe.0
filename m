Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8F1AA1CF
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734628554; cv=none; b=CrOwxWRdlqyNfSH3uudGNf3GYH+lVjBj00e+aDemJaFngp3DxR9lvgqZIb8m/CjcJG83z6QtRVJA/vOdciKuo/LyK1BuqrRRT2YHPYa82sWsrBS/DQqYxKH2jgHTnFEBEp+W8TStLWlPT7Kb2gNT2PCdERoy9z5MAmz5HB+u8js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734628554; c=relaxed/simple;
	bh=KBnh8LwCEdAGEaH3mFiWqdbx315VKxFCVBtOq3nCtz0=;
	h=To:Subject:From:Message-Id:Date; b=h4qXyCJvcJhrbHSiUDRo6L1XxMgFgkP07Hb5Fr+9O4ZhqDWcdOPulhw/+dVzREbO2XssdIF4SyxMAtgyvSBWTEyxEeF5HnjA3SciAIblcv7jVWFZo2JlfomUWITl18IPxnVdk+kWptvw4E7/wqVrR1hP+oGf7JFzC5lX37MlLBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q5BYhlsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q5BYhlsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70D1C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734628553;
	bh=KBnh8LwCEdAGEaH3mFiWqdbx315VKxFCVBtOq3nCtz0=;
	h=To:Subject:From:Date:From;
	b=Q5BYhlspERo4VTsLQtXYy7UqJvZr5KHxUFzEm7hfRD9LHSkThppVUFUZfV8ruTaq6
	 7rcUNfDhNGi/hoLMwJcIBh8LXBXJHAu2koESQe1oWLlrqt3Y1QOVy+SR20R98agEf3
	 iOvV8vzLABNw9rmi3zZvez8KIl7/uGQgVXZeHgYTvcaO5aCD9rwTTJvz76rai5vbUn
	 KHZQBrtLK4lAT7zv13pX3eBy1e3mRk/MdSZEbDw1wcwGQaB85cj3Shiarm2FszLemo
	 SDV/rxcrQuglg2aGg9CZsDg6uEkyZb3+1NnwrxVm8TRBRCc0njmw6iZIxSBPpnTmER
	 eO+Hd8rste2FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975F6E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173462855360.9742.16738450246008758664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b5d0b08ba3ef6de1efb0c41b130cef6c25cba3a38461a682e9823b0516ba05
Date: Thu, 19 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734628553
