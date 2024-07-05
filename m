Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8CF7E9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720145123; cv=none; b=APCXQ3NsuNYTufCvdGAqYtpkJuesSDf6zyLNCjme65OxBGUI6/RgAV+fhrIHsRRoHKl1t5yjCcXZSemCodMg6WVCJADllYeUhdJfjixpACKnSvkzpdYdk+83bmL7H+smpCRNjJTxTJ7i8LESp0gv3PaLjvYqH0wgI2u4uH1TNR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720145123; c=relaxed/simple;
	bh=QO4tMgFmDch3Uc1brmMg20AxYt3cH6L83TL/C1whKE0=;
	h=To:Subject:From:Message-Id:Date; b=C6KaHoTsFk8ihVQ3p5BOXxu/0quVb/QFYbHBfuQTeVDr7yLNe3cH1y12N3m/lizOX3dsuqkAkm4WYr6oqHVGWqP2tnM4WCRvDmUNJ/GSFgoPCO8i3mhkjgvCGC7c5kkcrdV8PLkGMwtUzQvO6J2ilXqc0D9yQuafBO68AHapZpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OftLSb70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OftLSb70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F24C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720145122;
	bh=QO4tMgFmDch3Uc1brmMg20AxYt3cH6L83TL/C1whKE0=;
	h=To:Subject:From:Date:From;
	b=OftLSb70gRVJrN6o4W7kW7WLmCGYH7twoyxYTtptiy+XF9lpnktQXGtw+c14Fa/mV
	 j6efvBjEEbmc1EJbvcbkuuiZsSehIcUe8ZjeiozvrVWWdeAUEkyPYh2i76b6t144HB
	 nY3utfrOMURoJu9eQzO39WJoLacMquUOqR4+ZKYEIaHvO8tR7BRQNvbrDCPH6zpKnC
	 u6lVQ2CPIfJfH3s3anwAxAxr4b0EkuxQ2qKa40gcOZgbxD+BP+fLcqdq0Quj49ZkPA
	 SGTQeztWp5bcrqey34yBRY+WaZazmmO1A5RMN5fn7vuV2ibfXmyq9HxEdAxz1Kb3R/
	 r3zDEEo4Pv7/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A1AC30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014512275.32257.9197783803100203548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3981825d66d6b76ee1ba7ecb8ef4538101af9e17e08453438596c17914e2b045
Date: Fri, 05 Jul 2024 02:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720145122
