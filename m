Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394221A7045
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744933794; cv=none; b=Wg3VHKIPeGKiyh3emiUryylMbAM3ZmiOdRimD/KCHe/xVsc5SJvd7XiDkUkZUnPSiWekywH85sVkUMPaAUS+qV9l4aFXmKuonfym/ALPGzJFR9hYlS5VxpTEx7IR8orH+4oHwk7jckVch6Qw6RjM51Ir+ODO5cZEUAIBCiwORak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744933794; c=relaxed/simple;
	bh=0YwUf7k/QCYvDDIm/mzqFMrpk9xdHsutPlkjLAwQ3I8=;
	h=To:Subject:From:Message-Id:Date; b=mDAg0d2JXuRn5L06HJYEVn23GD3HHKN5vUhX1bJheMql6eCG4jjP6XTLLd5aGGBPF6KaDvFaE3PURG7U9wr0yJqdRCgnXZ1bZ/ORbWISdYUXtmG28MVAMTdVn2UoTnOYOJtfTlH2+HArGjBQyhkabTzVFgCdkI/E+80yt90lnJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwMonFPI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwMonFPI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE2CC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744933793;
	bh=0YwUf7k/QCYvDDIm/mzqFMrpk9xdHsutPlkjLAwQ3I8=;
	h=To:Subject:From:Date:From;
	b=SwMonFPI2jMHCcolj9ymyRe1s8rwgmaoE+eIjLqXpSdGZml+KN/bYaJKdU5BnEayX
	 zQ1SxPoZgSASeWVmauVksGATLOkPbqpB8Zqd6ic2/VicKSCHJ9tuGYauYLobgxGPIQ
	 r80BRMdWlfYrtwUAqdGwHpZT1xXAF4k5uA3jTXWYIGE66UY+OyvodF/gbfXdvsW1mw
	 IW1lSMAIN1adZ5vsHQyYNsRWUTe7Km0vAD18ZTYhn2KzPJMi22aA2HRJ3vhSQclh2m
	 tTsoNSmTDRImt0GSjEfOKg/0RSuceVE/gKxZP77Seqm9BB3bSw9VxFDeRCxKeH79xX
	 GU9GCPB98Smpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944D8C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493379358.19238.16173094268002459349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4eb7ed0d24907363c337bbdef58e3d62947dd07a5503ba31beda8205b626bd8
Date: Thu, 17 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744933793
