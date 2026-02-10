Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274A0332917
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770711234; cv=none; b=esGSVqtt4fpADzatgZGmjGh48GFbe70zSRBoMYMfXqulpoLuyu/L5185rTOmwCbGDofUHVYFlGdcMQsliW0wHlk9v5EGgpuckuA886U7RBOuQvsb1jatAYy5zqfzgO5IMPRMDcnAF7D4GJvq8zPPfUScD8K5YIbi6tT1z25LBLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770711234; c=relaxed/simple;
	bh=KfESwC68n95wzcRU/6s/zLesH3anYAyJAY+EY4ykIAo=;
	h=To:Subject:From:Message-Id:Date; b=l8JMv5JQz9OUHFKkoShPHg7/WFMk3c71sGp9yUWh//d7F0ddhh1fn1gehArNmm6PiapRStVrssDkaxipriyB9S5Ax6TDXg0REE0srTouLAXfltECQ72LEtQ/oM0E2iNIhwmdIkR6i5z0mXUU7CEVHkA9/o4kEhIJ8Ntvh3YlI28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVV++IzF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVV++IzF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7324C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770711233;
	bh=KfESwC68n95wzcRU/6s/zLesH3anYAyJAY+EY4ykIAo=;
	h=To:Subject:From:Date:From;
	b=PVV++IzFm+kA9Dusy/E+/QC5s4zK4OwJbnXNOTpN3qG/LHjLXhrsdziA+7peRtttP
	 hbfRfdykw/B/D3Lz4SgxT5MNapl6Ub8n8e1YzzJWsb1mwy0Xw42N6ZG4r0WLgvG5Aj
	 NDV6Pu3OYVm4YWdPDpc0yTbo3jAw105R2VQcrLbPTO21S8gQYGCCqKEb+frorspWv+
	 jsxDbbISxhzw/E/s/oIS5PR1IfnieCmRo1QeL5Aa6U4MF1yQS6TcHKlDonob19YPhI
	 QIgLxaCz4+4z4Qayhr0k3AUdUqnKQ96PR+Mj0LQRVYKKOzwWFSzet1NjpM2SOvtF1Z
	 H9jE+G1sDHqAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B4EA3F1D
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071123358.24192.3451853748834124780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480379828e1901d68192ae4e12f2b9a0c277477165283432e7928761171fb4cd
Date: Tue, 10 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770711233
