Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E54C2147F6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746630595; cv=none; b=T9XvTo05B+7DSx7zpaJX43fJH9oGCEtyD0El6BWvpgCvwTVaHLcyXNL5Tk9o8j0zZft6knGreyVtJBz3dGjH2vRILbyDdsR8X9TMsTIY9mCWRtuVi0vQlXXETMCauTa9UzkB8cjWoWOeNeTjTSKaTpqqaNctZyBG1KvbGM72Gac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746630595; c=relaxed/simple;
	bh=nn7JrlkdJU6aETHoCxF9K5fiZ5ezbcFqtPVj4nkSUkc=;
	h=To:Subject:From:Message-Id:Date; b=t/sdtRQSJV0Uk2qYl+IYg7lUCT8t7PQhWIgaHPNLR3GIotyNPaOIb5/sGx3EZe7Dxrcy733wkWbxvoiaCE0xTODcRCFIIzecj1eeYciNyz1fnNSDyApu7YgX7mWtI6JxwZfzen7lXHWceKygmAHk12reeENUGKEOegMhHCWpXVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPfujXZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPfujXZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F517C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746630593;
	bh=nn7JrlkdJU6aETHoCxF9K5fiZ5ezbcFqtPVj4nkSUkc=;
	h=To:Subject:From:Date:From;
	b=TPfujXZSlEhKr6FbdxRehLa2kGZ2lpoFcYfXTx/9iNhoH9q8Y+I0yFI1gJmEdfC6R
	 0e3ENQaIQi6IpbpOsLI5NTVXWqIG5YBvAF4roUNhAVfxoW0+9t+PUokqAKrYpe4uyX
	 m6Z2B1KObuSUGnGFeAxOBd9t/AIIFZh9qfzqJeY9Qx6QQUwuD6PEuvE689PHx3LkVE
	 2uS18ctSZSkSxNS2Bhb9isucwgvjiUTZxidZAuQjt0hzRjQCQsEse94FXWetGiC9Ec
	 HatMPFQOYQGDAZx8siYN4yLXXdIq9tUQYLU4v8hTcoSAxNzAt+uiM32P4m1odp/JHd
	 u2uhx2P4QPvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB2C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663059357.14601.10483531003488057385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22da78c49d2e358836c8c31152bfce2985735e39e826c99dd86468576b4290d
Date: Wed, 07 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746630593
