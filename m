Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D43D1D5ADA
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728021354; cv=none; b=bh7jXYExS90mL3/cHxkK1qzoxTMJUzghfHnnUxXFyTjxi0IZXpBotx//PDMEiNh6V9ndVqpp1+nYMYe39EuNtaJ1i6C8U2UwQqwlLzHIVewyAiQGKhiS6J4BYoZI3ZczptueSoKylP641Gi8pssQsgSN3HecjBTo/47PMa3HLtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728021354; c=relaxed/simple;
	bh=24/Q8twLEDpwe3LOHUXYij2IeiXwMsEE1ms0TKmHrmM=;
	h=To:Subject:From:Message-Id:Date; b=U1GS6yX4yYI7h1EcZ+Ko8jzv2DVDFaJPHo/yr3dzEgNSaNlyzYA1OCvXjoMNnxfN+Fl2rzadjOtj+yst5rCKRog61SQRnbdLweME2EwShb5QeuKbG3X6HhqNn0f8s1pxjo3kUqlmuMgWA58T+BD38cAIpQIsp9MsLOXbnuXA/wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8aM2hGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8aM2hGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC258C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728021353;
	bh=24/Q8twLEDpwe3LOHUXYij2IeiXwMsEE1ms0TKmHrmM=;
	h=To:Subject:From:Date:From;
	b=f8aM2hGE0wg/keOkaY1SIR0w52TlFRmZaFWDS7c7JMBkLngYarrOV4mt4AueZjko/
	 Q9m8oV/iK597B/MYPDJ53znThawT6KpebD79qJKWetXOppPCZuND0QcKQi3Q3y+oKD
	 ytS6Upencmu8CAhg9q1iPvpKjra8LJ+mtfayPYTHh8FLeVq2Jr8pubb5EzLFmbYLw1
	 htNnlpu8waa+JNcYQI7IQPNKU2dYoqWVFwoLO2HozfgaSAfprA3+76cfbJ8REBpODx
	 nBl8gb+sQoaInf6ydCvnEpcvlriBYWu+M2e706sf2/5Dr7s9C37BMU3HCrblbrOUy8
	 Pt3MVBoSYSlLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3FF8CFA745
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802135369.6268.1020981244002617022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c7294f60cec0d763746b6a0c75273f4d205d30a0083c0f021370e78b4be7f8
Date: Fri, 04 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728021353
