Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249D01A316E
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750228194; cv=none; b=W3AIx7TuX9N5xA6F2/AXQxH4zAmA1Kda/60hSK+Ok71zXSYeYh209dQjTiEF5LM4eDrLvuT5cYCm1BDJMbmHH1QMKvOLauBg7CVHk/BLLW5ryRdVqBPn9pNImGwK/s8LgyIXvp9KVJPjgtUkJ8zGhVF6MqraLmpiBdkEdMuXKd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750228194; c=relaxed/simple;
	bh=n6Zs1IDqJR1NqDjAVf5GO3VZJyttAMXSo6uHN/pfYB4=;
	h=To:Subject:From:Message-Id:Date; b=BzPH+cWNGzYw3kdeqxW33As/LlJ8EqKgb+00VuNjVZ4tlHnvwFiaE4aCkYxO7sDu8V5UzygTnGXsG29EmwgeC0k/RWWB3B2m5i6VgUKx/iKdjy0/Vxpk4+AxPNm0Z7vxAdxA4Wc7TwlImJfg7gs6xC5Qs4RgrwcNPTcOWKgxw+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vxl/07sJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vxl/07sJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5374C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750228193;
	bh=n6Zs1IDqJR1NqDjAVf5GO3VZJyttAMXSo6uHN/pfYB4=;
	h=To:Subject:From:Date:From;
	b=Vxl/07sJ2rGClKo+CxYaOeWIb60V/IFMsojWRC0eOugLVlShdfZTIi0vay3ikCMPK
	 oBKj2oexen8JtFeq4uDXcMCUEuA3p5h+7/V3oC0cvf8mfEJvbU9R5cmPFuqJdnlMuJ
	 d9DA07oAtVx3rCpvXBq9UzVuGMPq/OMFCLoVmwgzbZGKCEHrAQFe/38j2mmq1uMkKQ
	 uPDSep04oyGP8V8+Ype/WIpjwl8LWpuE6LEEcVmXttiulRRLXykBbdHCfMailUlSoV
	 j5waI/DXlU+2ReBbWg/gsUdd83LBYaFOqW9wj2LT8E53P4E4LpNDf79wAxq7r0r12z
	 UliXy/VNPYniA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEEC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175022819358.9123.16173374867898181992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16179acdbdca977f0cf2ac52cab8445c8b783aeeca4bc1b367dccdb60133127
Date: Wed, 18 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750228193
