Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E5722318
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753918195; cv=none; b=Sn+qWLOZ/UbF/2Rv/2N1gcD96KhxhLuXTg8dK7EAMA5Q+NRg4ydA6sBQl54u/nJZ6y8n92udknYaQXYnSst6dyPVaLsvIoueQa/Vp7+kgGJBKKn/kmpbB8+oLI/XN91O18MqeSb4t2KgzTzW303OJApVkqPa08jndukpHfAsJHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753918195; c=relaxed/simple;
	bh=CUgiPrkRAfrL38KPKi9o3l4/ERQPmpwbGx9WVMvteo8=;
	h=To:Subject:From:Message-Id:Date; b=hf9pEX0mrLtB7QjckwbXLJRMS9YhL38onLFzqZFnMc5m5Gd/RlvWQrzsdlM1DlzBAx3kMfQos2ifNZ5pTV7/4CNvwETqS1yZygJIHhP34c4mjn/Nj/tekT7z6/owz/bGtPSDVYQ1zrOTnhjV5zMSJViZlMambc+NLEH9BRiUAOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKNoD8PP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKNoD8PP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753918193;
	bh=CUgiPrkRAfrL38KPKi9o3l4/ERQPmpwbGx9WVMvteo8=;
	h=To:Subject:From:Date:From;
	b=BKNoD8PP9AVdFfDHfC9UqaUR0ZYkWEgAy5OVCpbsZoHNBAnpgubhIN2gZxDnJF0BD
	 jL4DbbX1KR3wCNT36w/YLMp3n99oUeGbGIcycenWNaYLtAi0PYHupcJ3wyELjjKRiV
	 0Y1dJ2OiHTJvC/TiKGaNrQ4/EFQ7Uxc0ADeY+tE0kqst1d42KdKJ1cVCGECXALey+C
	 6xAGhxcTbRRbZMRQbBldPM5Tiq/oBRD/ESBETZGudaZQQ4xmxAGSFSlH+hmUTu7mzr
	 4/wCrqD5sQu+TVQeiIBOFuUjGG1FFSXIrtzff1iAztaRvC9zytHMfaOEuJ7CnUObb2
	 P0W2Iseb2/7qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F56DC87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391819357.10951.7823709950296925220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230b26894f65902c9c8d1ad80f11278d222095080add37c92b1b01a3a22a03a5
Date: Wed, 30 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753918193
