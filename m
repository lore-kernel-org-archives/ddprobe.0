Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDA23CD8B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783080514; cv=none; b=DDnsL7mmc/CvKfIaCHVBkjk9dy0K50ianWcKIJpgS5TJbZ4aDy+8400UX1QOz3rXlP5mOBTW9rUx+TzoVBLm8/XJTftx3Qus8ttqa+Ex0AE5WY+0XJnVP74TDpopYp6ECQkqfEsxcvtjIryCMUdNnz0E0w/EQMa3b4J25cW7Mt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783080514; c=relaxed/simple;
	bh=zhLfyEDaQprbQRjMP/WtdmSagptvg8KOcccCytUaKIo=;
	h=To:Subject:From:Message-Id:Date; b=Hz7j2EkjsGsANtLqmw/ssPmsLNWFGorxDw50/YYcj2V6LfkLNgGZozScreqeF9SdGtIXfr5DUp/ibjfMobE+unNDFgKHRGHTODLRNlbxONtRt5V65Pebt6EPsuLhMZFrh4F/e79oNlZz1Ezv0n0+tluvk1U2tjQEJ+kLKI3kxAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uub55HC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uub55HC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE079C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783080513;
	bh=zhLfyEDaQprbQRjMP/WtdmSagptvg8KOcccCytUaKIo=;
	h=To:Subject:From:Date:From;
	b=uub55HC7DNuHo0v3H4FWDve8sBSudZvupUzaxVhUDomhFbZm4pxud8DnlpfiAL5GV
	 +ZWENu74ajN7vwI2DTa90pwuCUjH6K7HPn84je58He2Vo+ZTdeFQ3vSOuQ6mno6GQn
	 VdUMVEzWVZA6967xeq4c8rHoGm6qNZckl58KzN5DTz2g+KUqRBrT0f44cDIzonbUFc
	 P9cQjVWNREInPfqoMd2W+0LaA5/GTRNc0nVLUE+WeTfSQ3GM3wADUH+lfLPx/j1JVd
	 vQ5pmSXXDVmFEnrN4a/Uc3ldgps0AP+EygLe6RipoT5qIG+dpXKYE9z5JyV/AaW2Ip
	 9gitE/dXgxW2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95ADC43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308051368.29854.13264624801889417853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b9e2a5f544a31e137193a2283409583235321c9ca061d88893735fce11dfa3
Date: Fri, 03 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783080513
