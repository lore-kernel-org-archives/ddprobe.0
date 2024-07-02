Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FB41E49B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719956723; cv=none; b=nfLTzSam3IPWxJqf3/ICALjua71K9mvNL84yVj5G/GIV7posuVgnNha8exNQLaMKziY9nMThLuPUYR9CiU10em7bD12Igr8Ch1gmYQPKpEthWjUmWGpy/93+ZVXmiBFGLC2HLaMm2eXdsIEqR7s+e/obsdr9qNUsL2IWm7zFoTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719956723; c=relaxed/simple;
	bh=39jyi7hLefRkKWxMzNd4g5yehVz0XMopbcKsb+BR3/k=;
	h=To:Subject:From:Message-Id:Date; b=oYl0ATGhiwDJ3d7lYeOxoMNii4dBIby2BHgEg31JlnjmYmbs5P6WYPJ7j7QuNjcSwbsFqUEN7n/ppo1W2zuvKuLJvSG2OaCy8rGX4AtWvdOaxa1jmwmZor54aVE0GI5OeTnwTuYLoj5tF+qja4FbmYySeqQcCYJPfByxOrqLQqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/hrYJ2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/hrYJ2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7517C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719956722;
	bh=39jyi7hLefRkKWxMzNd4g5yehVz0XMopbcKsb+BR3/k=;
	h=To:Subject:From:Date:From;
	b=u/hrYJ2XQYTZjL4arH48xmKnsSjl7futwV3C/iYmtM/yxh8a56yjqFqbLO2+LlJBs
	 QmCFkzTBnrgk8aRGrDCNZtY6olCI6tHWIBhpddwNnniaZZpzkzg6IhHq/Dtc+0ru3G
	 ftUd19ALYyZ6QgwSLj/7LlP80B9AfogRw2WTWAtw2Qalm5DjYb85aqSdk02dOFNlMM
	 Ye8eyekkMuE6SSndPFyaZsgT1/lthOtkAdEcimMs5lLqa2PMt+0UTu2+AlfHczsFH4
	 1f7OBkOeOZ2QBEl6RDhw6VUKfXCod//DElpnTckuUt9wcIRfut1I5KfJgUz6TeS1QC
	 ohIxzWOO71+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D06FEC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995672282.30724.7893781259253503661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3eb6d6615e7b00359e099deb593c5dd7dd0ad74ea30214b0a4e3ce5279b107
Date: Tue, 02 Jul 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719956722
