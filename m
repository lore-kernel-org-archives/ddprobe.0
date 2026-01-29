Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0899A273D8D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769672034; cv=none; b=lReAQyfLLlMmKyKXUkxmwUTB7YjSdC/A0Mtbve1jqnArtbc50csmi145kiu/paZvJq4sdLZZBz03+1NRv5+LGA+YUZTbIkfhLlMGb9rYvnl3ogzJv0VfQ+e+bmktQ5VYZ3fT9IZsLRLi3tCLxpOKT4CCUruYGyxdobAqLkakg64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769672034; c=relaxed/simple;
	bh=Drr/bccS23L3NFqwnYG0szSFG8vVR+dtSn1NWNNwj+8=;
	h=To:Subject:From:Message-Id:Date; b=Wty2hxJ8H6tBpa+R2iXL9UbrFyTWiPUtfbUXT9lLoQceOYhuMasrXmp/VTdhNL/Hjt8yHQoVd0LvdWR4IiOYCTD6giieLKAf0Va1QdkBuSBpWv1QJUJJfs6hwekkGSJU+lDG2ZYPTAv2uEyQgIUii/LCFcWUj7gjcEurYxkDLlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lK9Ajl7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lK9Ajl7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F598C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769672033;
	bh=Drr/bccS23L3NFqwnYG0szSFG8vVR+dtSn1NWNNwj+8=;
	h=To:Subject:From:Date:From;
	b=lK9Ajl7ORkYydCyAwcTKY1A07oE/ZU03mP9oy0i7//+1P93HLKW1evUMkW8R1hP6K
	 4EFoye1muLKxO4LpoY9QoUxIamS9g4G1r2/IIhwTt6IitRaNd8yAPKmOJjcG1eKJvA
	 XxNfLETWidCdnyPCkDCKe7mq3ufMM4bNZfJp4E1O5VgBp//w0tmfRbG889sWi2wZRb
	 VxAyKlUNE5aNVcvFC6tXx8txc++yw1gx9RHrnFqiVoW1B8VtS1ybd6pDqXMu5Yrrxh
	 VXPIbBJVEs9iXt/XhWAjDnIsS+Cg1MHVlVsSODpnYcxn9IXvS3VEC6sGYNB4erXAsT
	 +WaWaL6K2C2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90147D358D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967203358.2762.12993631509510196614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f483a159bfbb54a86df9bb45c84a4c71eea513757984422c454ac9c548965714
Date: Thu, 29 Jan 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769672033
