Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1901B849C
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766193234; cv=none; b=RVdcrodzeBVPdVQSXbCbEpqZTWc2WaCfICjMLAKjFfdVqDVGvrMbXE2TXQbV6+RQeMRwpsAOMPFfIRoRcjaKy57th9OV8pOelKX4QrM+xngn1jW3sI7cnIBrXZOVYcSnWY6KLFVfuxQmInhrKptxUB+zqgCXQq7kE87Dr2AeDa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766193234; c=relaxed/simple;
	bh=TeWFFU88usWiy9ByIs87TQI3TNqaPBxSjkYxjU3q08I=;
	h=To:Subject:From:Message-Id:Date; b=eirmKEn4wS/vnFmW2l/5WvhSdNE0p7Y9DSSknFly0lOCMp2Tb4tqU2ry4q2UT3hMkwvuqKJPayapuJX4Y6kWfqhCRKwPtDEGNLiT6Wmch812KTLZ30jO/h7EA03OMtbkJHB1vaSf14CDbZK9/LjKs2LdnWzR9+6iZ6YlXKwsSvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtXSqOy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtXSqOy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B32C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766193233;
	bh=TeWFFU88usWiy9ByIs87TQI3TNqaPBxSjkYxjU3q08I=;
	h=To:Subject:From:Date:From;
	b=AtXSqOy46QTm1Z0fkZcfZ4V2S4YlwKGR6NebkW0J9qvCvynRoFlbpH1A4aKE+S8Ur
	 S6e7e2KEhzctKRriNB7EN4F/hiMtiMPYDZGVpmV4utsOGmR+jwRq6K0nsOMZZuxGNQ
	 4DthOIxzj0ItBpEqTvNMBHXriwn+leoT/D6IUIgPcUYusWH1wTmTcPHhQun3jrTWDi
	 xlA3x+ZjyaujIH+flrZf616x6LH3y74k34allbjoqEgfam9GeNxKdbQlfQZhMipE4P
	 kYZFOZXpOaVdcu2s117zZ5zK0N/2I0tZhaZAUaA9sJxfjClm62LVwLFVCb7ZucQw9d
	 TzIUceOvdr52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F60E668AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176619323358.15179.3210056498052128271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b39dc12f9dad305889f04da0c79d17c114eb4a50bfc1630421e5e261a521f60c
Date: Sat, 20 Dec 2025 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766193233
