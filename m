Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CB433EC
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772682293; cv=none; b=YTb15obtt10uh6bS7igmkuoScL1q9JSY0s8B3JEs8oowhH2cyUn7od9TSPMDbjUTQ0zDicAPs9A6z8x3DuxLUx3LX30DUSLn+uGKzzvA/oojhxIrznrEX8XetLWKk5WeIWSX1USHFiRj6/8qmyw3Vi5lYnWIrZOaprePYAhB9ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772682293; c=relaxed/simple;
	bh=QcT3xWfNysw2+LxKsqlcPBFDY5oGaYlADExeKdTPuEk=;
	h=To:Subject:From:Message-Id:Date; b=ckw8MDjVYivgQ2pyp0Nn14PkoDGbx4HiUMRa+DlsImKP7cugCHRTeAHJJ4k9DrCAzNjkrHpVC+wjjR3SwazfvaZMQfwsiRzYDDZlT7ctdjo0LSTFscGvVA0fuUuBA3TM50AG4o9jUNsjMPxoS8FlaC1YwxXqFHb/zKGvIeG62X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNDFyJ2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNDFyJ2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A613EC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772682293;
	bh=QcT3xWfNysw2+LxKsqlcPBFDY5oGaYlADExeKdTPuEk=;
	h=To:Subject:From:Date:From;
	b=NNDFyJ2L5o2/ZE9lzlQnQum18YT0+O0VXMqEUHML19lOSuIXpCj75HT+yXF4w8/tP
	 Rf9nE/c5IHkaUCoZC1gn93c/sxc3aTEB96uGl547HtOI/1YCtA7u70sKSByhf7OzhA
	 hN1y2Jb1EjcTaCegu3BkG8sBzlyI+boKaW5utKNrdQXpkZSDkJsQ1hg4rfAeQQAcei
	 wbBX4Mc1VGq9F3RYVJba0GtLeSo+dT/48cW1mWFJuP1Mc82FJBQQZC3wIrVjnKUpnu
	 hPpaXxW4dQwpiBbWb2Sq4nJAqRE87MvtuY7YiSMJkCCEKq9LOZo8p3AaUBbVYMqXLH
	 taBSN6yLqEDDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C74EFCE5F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177268229358.15808.15888947222558440343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5212bd6b60d8746e174ae4324c14206595838b931983c57915705b29d6a91482
Date: Thu, 05 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772682293
