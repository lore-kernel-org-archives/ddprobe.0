Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0747E2E371A
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751745594; cv=none; b=nzZ2EgDM0bkubTmE6NnYSNf9rJjglF+NDhLo10HJpxKkBklRHCYjZuKpwyRxgFqzzqZnxn6ZIf8CXzHupB6m+hrFj4JcS6AspqSWpLkpYtEbjj9DZk74BI545WquvHYY06R1WRHN1Dof1Jc867mqs+7ytlvEHhrHYTq+pIA1L38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751745594; c=relaxed/simple;
	bh=MGBGDsYHi8SwM9hPcuG5RumaPcynVXnU2ivd3ZXHdYc=;
	h=To:Subject:From:Message-Id:Date; b=aLM2EqaojvNPHlujFGZHLM4Dpkictxnez6aHnL9b2z17sxzwOIEa7+BhXQegM0XprcJ/1aDN3GlmKQd+xf+MSmPNwL2XHFku0RLh23KzgQ3kr/2JChvV/yQ7l/YvGq6jL96P1fm5AQVFBJG1EmUYxH1Zu6sHzvxvF96PC7yXqi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLx3f0wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLx3f0wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D310C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751745593;
	bh=MGBGDsYHi8SwM9hPcuG5RumaPcynVXnU2ivd3ZXHdYc=;
	h=To:Subject:From:Date:From;
	b=RLx3f0wXZ2ET07FlJ6YpVU0n8/QVi6TSywYAsx3l5DVN6ZH3U+9pBfkZU/A58foEo
	 KYbYX6Z5ijPB4TDVHHzIzvK1HTiGz10X23gbDYqEaP0YPfza5Ny8qfeIgFx7PY8+qP
	 n16Zez7JQMrRFKJWYlAMdc7xIBHSc9yBS2FLSziu2M4AGYbqaIA6CnnPwjUW/ce0DT
	 GsOSRVqgzpfOfT3zhue4NyaSZmKioX8Zu4ODeaFYqTdAQuWiFQ/52CVu3IfhUtLC64
	 pRnRAYAgnx5RmWP2AAV8Vj6YmRk38+NAsEkV1pUfuO/ZN98xEdj6uWFbF1jbgW7aQr
	 GwhpIZxKcloMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E875C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174559357.18303.5457891510363284147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db17e82f745c40985c9c5ebf30871daa19bd7cdfe41c50d6ab73997bcdf13af
Date: Sat, 05 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751745593
