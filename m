Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30409BE5E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750580394; cv=none; b=uWdarNxT/zTuJrY2DfbjQDp0ozDKlPNF990UoUvzCkuQcmf+S5hXDCsdBTq3/LD6pu6Qg+YEk0tOCKMHVcA+izbj65LLEP4KorJeXuJrIDnrNuSkskQYWbkqQsQ0dsp6cCvItXkoMN5wz9EVJmLChXuUJvHHmfFvIWsmazzR+98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750580394; c=relaxed/simple;
	bh=NOtS+GaF3RFeTxSfsI7tQdD4RQc3GDuWWpSUTk9GEtE=;
	h=To:Subject:From:Message-Id:Date; b=lskzGXe0dWbke2HDY/R5cU3sa8MDQwrNPUX3gxdhagd0mSGZD8XIfh+Bi7BEh89mluafgMsxs8NO+5Pt64NaEmaSgXEcrbRrv6q8D89vTHdjCyMRgB3chQZzSeYehdDus7sj1xN/usHjo1qgvxbn97H1udG9gzya8ypHzSrNNVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6IML1n+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6IML1n+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A460CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750580393;
	bh=NOtS+GaF3RFeTxSfsI7tQdD4RQc3GDuWWpSUTk9GEtE=;
	h=To:Subject:From:Date:From;
	b=H6IML1n+6mx880UBccd1Lc/XcU7zfY6Os89tmq1Y9yazSeJRERkq3GnfOpyB+/rgl
	 c33uevidAKW/fGYPY8+rbZoVyKvI3tjnauel/O4iawmfSSAL+2bKIoSfp8bectD0yI
	 8LJ1a524Lvl2aHmK0GN8CknGgTG4rz8fCr/NZWYXnYWqWo2+Tk1zbTn7tWr1v8+LAo
	 p7LICdq8Z5ruKbVEuWUS3dYykM5OxoMsFiwF1xwmaSCg2H2vNqrl9DG/PxzP4bPcGB
	 /DQD5/TclTbeFBRlOSNAw6Ms9g026StkjvsSu3wP79MQcAzqQz7i5MidHAfd3sqoXx
	 X+/5zK3OtjYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020CC7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058039358.30316.5417429012645422445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2965aec66360f10b4f803f8a0c98b4914f880e0f50a4c6d750787368084a71c
Date: Sun, 22 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750580393
