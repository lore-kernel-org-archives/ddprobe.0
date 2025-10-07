Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398E9128819
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759823994; cv=none; b=a8lbh1lC72cQRPCK1UzqnQJ85j+x7RZf73uJ65dsA5f78S8yJmOy8CrcEyPIKQ371YKrQI5Yg4yjnyAvrar6dMKi6ZFeMNjjw9xFf/rpGsruRRWZIUN2xwr5SK6ffF182G9yK6WhZUjRC9Uui9ZXKSyBDthgOuyaSkOjppUEljQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759823994; c=relaxed/simple;
	bh=z4K2ZPalutLIdYECc+m7vrumGUjiZX/sa2UTXCOz8e0=;
	h=To:Subject:From:Message-Id:Date; b=FpHQ+IIgVbkUx+UZMaNH6zpC1/zKLEv061czCZBV/akZU3Cq1/bZeVT9y2sVSp5HYfWhcwXO44rPsOv2hzKaKD3G0u9EpPUsr5uNvmYpPjtrik/vQfne9TAwoKPbZ8z48gDNzw9iCxmaOMEgjZg+rIQYmuAnysoiYAcSV1i9FqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhfooeLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhfooeLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759823993;
	bh=z4K2ZPalutLIdYECc+m7vrumGUjiZX/sa2UTXCOz8e0=;
	h=To:Subject:From:Date:From;
	b=bhfooeLAejWfC9wzyNp8lXFInAwk8Wlb5bmVjUWtDYiDTgyOsddDcs8xX6zriSIQV
	 /Bnp5Z+ALtOSeHqZP/mi+xTDsQ7MCjMQNvjSg7C76EcqslwEeemKsxto72ErJuW5Mu
	 eM2lavq3CyKE/KBwj5hNHyjOYEQ0pg70EQFc6wzrCZPrTtW+f6kSsuYQKoUHjJ2Fgi
	 oszwSP+7MKnHZ6QUJ6ne2x8AW2lWJLA7GHffkzytZrlCXKuMJvgg0UTPtqLGIXdlZK
	 +fwFINwsx8+y2juWA2C0C0axzYSnGAk+P+oq9vf7F5YP73G4bD1BbJrJdpsG+ghlgP
	 Rc/t3ETCBR/yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E5CCD184
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982399358.30152.14495552353849333001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89934b31ef80fbc310891cfc295d4f41a8c6a8418888ba3ec922f12de1a6b744
Date: Tue, 07 Oct 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759823993
