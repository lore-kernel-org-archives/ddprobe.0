Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4217A1859
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717196663; cv=none; b=HZi7oeYElgqZg5XQpEwwYfc7dhnQtkcGhrw7Lv4aFwA4WwVBibZwdtCk8ALpai1JfRgKNvkzc25z2/UENKMrnHfMxFNM1GtqaIgMjhOSO7fn6+7+RIt/tN6vquXX5XPcJgdWabS3AGwSlsbEdgzxCrleCZCnk2B+DwH4VcexTlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717196663; c=relaxed/simple;
	bh=5UZNvvUtC12cHp33hefbZ2cVvr/frguAOv5UhRMvCS8=;
	h=To:Subject:From:Message-Id:Date; b=DHIW8xVDyxU7N7UfJbX9YajjubIiy4kg7z9IbQPOHUXg8sl5qrzD4obQM2kGC1/Ny8XNCLX2SZWDma6HInADTrFrq8IaVaDzmtT28J+R1qVsh7Hnmv2gFfj8mOVZy74wYZgiKjoXsgxmWSDROM1Z/Pbv7C8nnC3Jj+Jtvs3A76U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzG9ej52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzG9ej52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04C0C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717196662;
	bh=5UZNvvUtC12cHp33hefbZ2cVvr/frguAOv5UhRMvCS8=;
	h=To:Subject:From:Date:From;
	b=HzG9ej52wN61f3huDoeFf+P+yk4oZlALicszaUS5XmAtLOh0FvMqFdQc3YyPqVY3z
	 UqEsguvS/JjLUZTx+uNTGAm8UYgagI6nCao4HLCjH128zbdxeAK9N/NtxMfSggjO8a
	 7c4wn/xG5kK+4Au3sS27yeZEK0RnZ+LxCzZHA6mR+Ji0n1jLx2bzRigpWgHlVH8lpl
	 Fe8jvDpKB6ObNKB7A88+sR9tEGFxEjTy9r6ytO2jhfNp9/lhGTlpIuiQ8hpGy+XhXU
	 6SgFH7MllLSV/MToPzT/MpwRcdxGfZdTm4wPeXs+upfkCxSkxDFfC0dMXXFJLUYXLH
	 cKm/2AQ5PfkAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD86FC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719666276.23255.13378201389716032308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc5f046a836bc36005c76b354d35484cdc7b8e7e984321da5b6c31884bb76a7
Date: Fri, 31 May 2024 23:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717196662
