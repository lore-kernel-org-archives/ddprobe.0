Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC97D4E1D5
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711014497; cv=none; b=nPDOjF1Mn2bxTk7VLh5Fr2M0oy6OjIj2s2Z+RfURQBZ9u63zhXZTCLr923zM3tCWTQ8G1GgVjtgCrLy39Okt2V/48RcsAAngOGgFt1C4Q0t8AHUzgLbhh9qGnuX4+5En2/xU8wU+qdKXNvcWrNUKbJLAek/FRonbxadGQJVS27M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711014497; c=relaxed/simple;
	bh=UIG0DjY3vUJBSKHH0DWMq1hJCzNji1GsxfUFAFPGJ5U=;
	h=To:Subject:From:Message-Id:Date; b=tVg3KS8mtL7qzcugIBCeQyZ2xaRfC8BbEa9AmbWab5JXs3LWEXm/M3jTurHOU+nfdAOD6neNj5AVIdZQHKgeUaGMKLFXpHyOP1vEyEpdP6cBkjYhCpphicVAoQFIS4mAv+PUHVtEwK6J9DRD0GJApQTx9n6VXPSg7DYtSVhq4MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=myafCVKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="myafCVKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C014C433F1
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711014496;
	bh=UIG0DjY3vUJBSKHH0DWMq1hJCzNji1GsxfUFAFPGJ5U=;
	h=To:Subject:From:Date:From;
	b=myafCVKbe32Q9BcV0z/xMn2X05+gmty7NMKfhGLftEadWZwK7T5H+Dm1iRSHY/sht
	 ifEmoMbJU288zjesMbFjLA8UniicKno7dyEFEP1fx9nVqfyIGBOt6lQ3SGn6XKG3Va
	 5SGcJGjdnFvHNoFr4rzcS3Rm21hKbqcXjyjhli3qeZ5pzqiW1biKHsdeBgJ/rvryTH
	 BXUZAu49Fsy/Vit4SvhLCHGKVJdUC77AOsAkvxAiLLzM76aVYnv2tmWytV6eg3K3BN
	 9NYp7pMCqsxeg4KzSeDzHJ4JkAjiY72okdKnDB0kIIOxa59Y0FY8RhvripkvjxEiE+
	 bZgAivsWT106g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED04C54E68
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171101449637.16643.3080382208210405823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7453105d173dc5cfcf8a8b2eed9fec9a659fb2d3a6ae222497b843e7487131
Date: Thu, 21 Mar 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711014496
