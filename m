Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC1E1D555
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763880714; cv=none; b=Cp6ofcNCGbQBAoIIX32h2/FpP5rxM2nHVh+XXq+sEYge1Cy0kqDH0u18KLtFIjAPNvhhIoIySjuRjvba003Q8OaNibPH3XB5QkpPVc+736GmL3/SG+en9ubhjOqxGEuNbCs8JI07bTxuvMNRL42Qkj/CKSPcnDQtqQ4N6LLVtls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763880714; c=relaxed/simple;
	bh=tjQpk+j+HAyx/dnmMvHZammqq71+Eygbf4+YTBJflv0=;
	h=To:Subject:From:Message-Id:Date; b=lcUmrji5GwGWKG+MCCwIZbSI8NwBYPuURBOB/QRqZfSiwgfPhyPzWcc9FH8BWvLNmGEVKDbqrhVhmelp3zFPdw/1p4FExai+FP+q1BU1FDjDRxZ7h1IPiApfHFCzh4sReAHObbSSLzEQPkynEWRvElteAu1NvV5sVUrO+M+F0+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOShE7VM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOShE7VM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8868C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763880713;
	bh=tjQpk+j+HAyx/dnmMvHZammqq71+Eygbf4+YTBJflv0=;
	h=To:Subject:From:Date:From;
	b=ZOShE7VMhI6PYIBE9llyAbf8wm5OjEgG7PF9/BJbIjiH5lJ1PmEHEewM4cZglUlzG
	 i0307+aRYNRMzHe35OAYH+hZMzRuukwycQy6d3qvfEc4pGC+clVqeMsvXgiG3NpFme
	 WJC4BZjJGc4BCz1TrkpFi6jheMdSseZdsTOw8hSuQNv09l6UWZEsyWJ0CWeLLX8VU9
	 LwxFaZenznTmYjXwn3XgyaR3YJKxOLPZPU/UWgzqbBnESxht9ye6NO3IMZN1UKBbsA
	 GCb1GPt8LRtJhoUN17j5mH/CwxfDo1qDk1rcNOyAj8HJArZZiARFQtJ0UIMgJAUtUD
	 pj7sEEnBwRS2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F44CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176388071358.27200.813208087097088689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae899385ad0ab17c7ea7ed6e18f4c64f069af4cb7b102398270697274109272
Date: Sun, 23 Nov 2025 06:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763880713
