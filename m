Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C691E515
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754732394; cv=none; b=Y5eMV7JNIfhG+MYuJFZrgzbGK6hxJa2HPwKrV/4jEoWnAnrJLWeUQTwSzknB/XtWpu+P5pFMzeWHZs8a5gigYur/b1xW4z0awgwMpwn4M4K7GMTgV7y6kx0YN49k2cl7yajvkgnQND22QEFxyWxPI8uNR4OfvllvyGNTH7LzKwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754732394; c=relaxed/simple;
	bh=pPNRvV8FetB5k/ZqAVael1X6unc7CSTiACavoLQD3es=;
	h=To:Subject:From:Message-Id:Date; b=mQyviZhpMRRco8am5BtxRpGsldRRLncEidXSdHpV9nJS7orLUx8zCCOlybe2MA1Eyh04OCSgt3h72I4FnB2O8Bn5B8joKNHl5Ptx0jISfRlD+YXQHVXB6dmKlNAHW1d0JD+Hf8Ghhqvi9dbUbFVmIA096sBsatHVaLSKEjP0eVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGhci7RI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGhci7RI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FDEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754732393;
	bh=pPNRvV8FetB5k/ZqAVael1X6unc7CSTiACavoLQD3es=;
	h=To:Subject:From:Date:From;
	b=PGhci7RIJdkmmEgdXDDGlWWj5Ff9uyfAieuIWjxF1isWSqa8Xi6zVIfbCvINoJncV
	 Tp+DIUnLjS/5GIPzyfnD5VxeNETUy4tPUd3U+M2kB8KJl4TaE/eX0bg/L3P1/DzYFv
	 inDGMRSQ4JBEPlPzSNm606o/Sjr6Iph+NRIWbDHMk6RoGKGiBDm6oH0ySVx5ce2mn1
	 KSJaXRt9/WefoOPl4My/RevYltVwKPVql7DEnAohqEQ2ZMeIXxjr/2rTUSyDafj2Bc
	 NtpZ8GgAjZXXIuo58meAmX5trWc/U9d8+pUMWOGbJx5xR2WzFeMCTiPATEx5t2q6jp
	 QzDNsRqohsrRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B59C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473239357.24191.11787412896906465467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc7c65f345923ceab597595d06d90b0c9dcb53649d4507ec45e3b2c13b66198
Date: Sat, 09 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754732393
