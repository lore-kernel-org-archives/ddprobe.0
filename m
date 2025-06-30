Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175B11FDD
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751255994; cv=none; b=UVW/XA0LNVYwdAQFsGy1PcAy3vdpC9/xplAKrdu42kyYK9hhS6WY4ccDYex276nYIJJoF/HDuyYgEwLZ3V2h+KORiV6s5oqqLkFZ519t38jdYqq5Q0Gqd4SOxYW8IQjckvna2irDdDEDEHBUOS+F/jp6Rdlof0Cc+Em9CJxTfXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751255994; c=relaxed/simple;
	bh=gsGHBVHWEHY7lFwAiS1XBgXu01wThJh6535D1pvQiNg=;
	h=To:Subject:From:Message-Id:Date; b=RnfwxdGCgaNpafn6GeLenGvtRXGHjqurdoirlzv7CWBE62TpAbDn6Vmzjm/FXaZnaEhUsQentXT8HbuoUaFp9InAWRGrFcndBBj8+Uaim7lQmqa1Fti/PHZAa/uly0Evfi05qQNKcQzW3OtZAjacL3GKxOaGGUbgzF2RMzjJlpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBl4ZG5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBl4ZG5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AA4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751255993;
	bh=gsGHBVHWEHY7lFwAiS1XBgXu01wThJh6535D1pvQiNg=;
	h=To:Subject:From:Date:From;
	b=UBl4ZG5yKX7una2to08xkJwcxyBiIQTao7MYfhbrCf6sox16ryuN+jUkJDABJvSoy
	 VCf4Eln+9Eio9GQZEvVQrN3PCm3lv4HE0h92iH9xM7cGbuKaqIifftNqFEOzN1qw2f
	 AKU1VEyn+MY6NP6og9nXtBjI7ZmggE6ulPAQ4u+KWhvBDsmNfHmKGevdGkBNYGksp2
	 Uju3TgfN+khC3m8a/Aprly7Nc+CTqK8wEZejd5eFoEvreX5VWFQSnba2Sk+Eetyj3v
	 NQJJgd6mAXGBhV2xgX24FV3qYMNlLirN2VsHElkaYq/u6vdEOMCfbJkA5toCVOGADb
	 UxIilIt/Q2ygQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953B7C7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125599360.14399.1247593244094888384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2896a8f378a054dd488622d1718bc20c343898a4154bce2909c4e0e406e5aa1
Date: Mon, 30 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751255993
