Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214883090EB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766348634; cv=none; b=lS6wDr8lD5jdUyvEyhZqUk1ur0MQiCYR9VY/KAFDA+HvhuNKaOmXhkx5RMA5+SRwsVC3HjhHpA99sJrGx2NX5YrHub3Mj6MgXhUanhjXPQTubjaqeeFCESvXYIhOFz8tJ0/qn72OJnL5BEjpFKkF+JyQspa27NF6Bzw8FJJ071E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766348634; c=relaxed/simple;
	bh=wP+ILLLYNfVTJpH179+Jg53iJDL+gE3BnX1lpEDSBsA=;
	h=To:Subject:From:Message-Id:Date; b=MCiOeyYnYdkohESCaE86g7Q33oUfdPZwuOW6mPVW89ijSdtaF4QASY7zw+S4LexnKXQNVM7iQxu/amx/SLIsWbpOIW9nh5OCBl3LLAH6+J7wafMBKPviN6sB1uCUim9yX512MiLguTeMWw7iPpCazE1RkisXI9xZavBaoAH+K+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r85gTBzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r85gTBzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240DC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766348633;
	bh=wP+ILLLYNfVTJpH179+Jg53iJDL+gE3BnX1lpEDSBsA=;
	h=To:Subject:From:Date:From;
	b=r85gTBzdhGWl+RccKLbh8mNRu7HjxkFR0J3EJPs3M0UJ2HBkRf2/tek/8ZuLkaj4c
	 KvZ12i+N5qSi/lombRpBB4VtCev9t7/VMWRaiyBQYC62/2SVdytOkvs8wmyIdOYH5k
	 JqY3H1y42J6OIka97N3jR+3Pg+QR9kYWtIIymVSZ4OIiKZ2tYA58yY5P7N3NGxz7QN
	 2viGu3Ufa/6BFEmCVxIwnCa2TtYdlcIMnLp8T5q12CTkDlnLTUCnnwK7UKOYSWC8MB
	 208z7z4DFo0VKZ6ulXXZmpWWeEapLC4xNAQP/igY9RvYJk2Pm7mRZNh+rEkznhD1aH
	 XUVHO3nAcNSZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCBE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634863358.19590.15230491337942998836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9377782add23692c8e75d45e662fa205465869f1d37c9ceb2db4433eba10a4f
Date: Sun, 21 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766348633
