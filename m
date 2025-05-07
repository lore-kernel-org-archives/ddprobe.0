Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F651F8723
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746655795; cv=none; b=e5IKGGPK6/p8CIYL9NpLJ0j++9RGrtfYswAoCfbebozrsA14ZKhmgPIc2EG6SYKp05lC1nvE/7fsPndgR8Vj6eueaHuaHQDipm9+Y+GX+plNoIrOKADmA4nX/X/t9ty9fdJuT8vbotRAhSDda834VIEoL7ajZP9XqOCjEZbgVlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746655795; c=relaxed/simple;
	bh=cK0ZQZw74rPyFuYbyELk1LsgNHzNkEeBq2fnnWl7ndE=;
	h=To:Subject:From:Message-Id:Date; b=rmpb7sN3OdtKho6vRuuHnep9+lvBQLHxLVK4OTalChN0+6EDf1pPzsqFXNT3Tj6yrhXqQqSUcp1iRy2KSWGl8sEsfHQ0rSXs6K+hopXrR2f6z0idSth8FuyNaBMrzYF1RfIQ+z6/v4m0+FEYDOPiF8lib9li1X5i6Eh8UK494PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRGbKS+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRGbKS+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746655793;
	bh=cK0ZQZw74rPyFuYbyELk1LsgNHzNkEeBq2fnnWl7ndE=;
	h=To:Subject:From:Date:From;
	b=QRGbKS+i/BH+nMdr0rcOePpW8D9MC3/vNZ9FwCAoAwhvj/N0iTuAjV4EZnya6hEf3
	 uhTl6bJmS4NWC8n49plDGFQPrQVV49FOjzccYvnxv71DSOMspx+rk4Zai/als+/HLh
	 WDVc2gRkKf6xkeNlacGuz7xHzMlbShp8oBFxYY4pxWnV21cWkiogIqQr0Z4PMY6GMY
	 Z/hySdrr88FSTZYfWfVvsHTm3cHo6yrtFqaxg3qpwHurM/bNyohfVvAVxhh5TfF3fQ
	 tb+ZTyJD9uUcVKq3JQgn4Ypj3oDR06W3QMNxHbTfr/QGpC81ch36EFQDcRw3j1EvpC
	 ippwBDieu8kuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90547C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665579358.2493.13242589351894914115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57162367f976b35ee7c0e9a759785cdf111b0d92d2cac9979338c3ae3b6bad8
Date: Wed, 07 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746655793
