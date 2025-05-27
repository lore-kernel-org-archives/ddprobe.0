Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3842227467A
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748353194; cv=none; b=MVXJoOyUApKsfTOsLijdoEwGcXcvE/dq+ad6GLxCE6NiiIxHE6K8qdqcASC2xJjhttVylQAesl9TgMSgKxpYB71QVTXPwZYC6YfIP+5rfV7OxL3ZSGLa6FIKY9BaRn/8y4IbBZwrC9r7bZvhT8wF3blw90YgS9dFmk5muI4TVhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748353194; c=relaxed/simple;
	bh=2Vz/NAkR3GfoazHGF36y3rObtbSkpMUUy1xYS3bw1lM=;
	h=To:Subject:From:Message-Id:Date; b=jWe9t10c4r5SQ7rY0kQuidWt9owyCTXMXfxFNAq1vALvi8dC1e0ZKlWl+muGM0B9M21vbCGI223wvNe5AmCo2nBJg8C4V0oRKimMOMFZZlI0rglKTf4aAjPdnZIM1aSmd+q5+O+2YEqvIEkPAJnFjXzb5BolJ1qdJrC0RwIqGOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDDpocYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDDpocYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1632C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748353193;
	bh=2Vz/NAkR3GfoazHGF36y3rObtbSkpMUUy1xYS3bw1lM=;
	h=To:Subject:From:Date:From;
	b=UDDpocYOwwiWbY5gX90jkcseUJNl25i3bzZdaBsGh73EXpQORIZH7rM/rRW0S6PZj
	 G6UV/kVC/RHWHU7R/rB3Y9qDHg2k3KVVHYxqqenN7k9UQhv4MJWjGQephde+XR5BJQ
	 90SOSAjZ17Gj+qtnzTVAg3CAEHIDX67u4BHFIxubeYSi+FR5/iqCsNj18mr2yIwadj
	 MqsbEWoijay+pUUGDsIFylI7Oi+JUhVw3Lbr1x50AnJE3IKLUzAnS0c11ReGVwyoBV
	 0FQXzi1+Wapmba6P2Awhr+Oc5yk/anbyRaOhDLsrqgM35tiqcxWuwAzRot78E893uw
	 XRXlkbJ6+AqrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4DC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835319357.15939.9063922373272447373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe26ede75174aee4d7a63863ad240fc4e75cb2b51205b1fb67aa5e1463fbebf6
Date: Tue, 27 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748353193
