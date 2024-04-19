Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5044BBE4B
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 07:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713511163; cv=none; b=LHdj0gcJZGz8w5Oc1Ym9aZWVKwBRs6HTZU8IBnK1280dnk1Fa4SREKABCwRGFXDutpb0Lbz1Tzv2EwGoN+3yXTUI2oIGKHpG3EAzCcgKNI97JxTe86eTYs0lv4qXSk9EZu5rXd1bLwzqlPBq5WXbz9dZQVm6uWIm4zbMhZ3dCwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713511163; c=relaxed/simple;
	bh=YcOCgGWQtFzxw3VQVGTVvwWpsAU6g0IlMJsf41HASB4=;
	h=To:Subject:From:Message-Id:Date; b=HijyQvPdh02qu8JXJeauimGIILK3JhFUqEZ6PbQPXlhMq9IvixiEmVw1gkJVU7j/87K3we3P4dni+Ok4HpRXzCbyhMFo5fVGy/w1S0r5wpM/B2/jF+ivRBHwCqFSF1httqouPvn6rAqVUuuY7WvVwCzAujhiWAnBUOpr2eSPUnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mErR56X/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mErR56X/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD384C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 07:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713511162;
	bh=YcOCgGWQtFzxw3VQVGTVvwWpsAU6g0IlMJsf41HASB4=;
	h=To:Subject:From:Date:From;
	b=mErR56X/7kE+AcyFAhlfIJhFPLipVXrNZw/2tOjFTqQRiPBZDyeKo1F6GblTUbtVF
	 H0bhhr5IEwj7mW1uVDIqSV8PYQ62TgV4de0RP9807mvZqelv34douJ4kTyhQM4GlhX
	 vhX6ngWZbq8H9BA+u+GwpfttaxH2vH4wqnu8j19lzDsBxfp7iP5RCkX5ml0QSN3eCX
	 PvKe6GliXM1Ydw8gfdV8dPCteTC3dRqkst9bSZYO2155Z1Sv12qTqbT2vusxKF9mmB
	 dLoiOZ0u6OxTZD/JmiSzkVdQJ0kWnONQPMGDqYOFNbZ6EPjEPM/eWqVAqmEGzqm0uZ
	 65Iw+7kl2MZ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BBCC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 07:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171351116280.5350.14587125483401388384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6bae76abedd714d7e96971e9c17b49b1f73202abbd54501279112c78a206e2b
Date: Fri, 19 Apr 2024 07:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713511162
