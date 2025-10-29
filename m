Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C3B2F692E
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761721794; cv=none; b=LkRKNxbLr/6dRb63R3HPAGttLcEyF0Ce4imlWHT4lrUWVhbXtI9jHGh2tX/xpqAgzU8BXSIr/6wxj8UPI1h7gqU/QSq9icibxYZqo1qNoKwYjiUMPhbTXzN9/NPcKfO7CX9sejLiTawvApnVgwtBLX0d1t8kZlyRvGwPpJjWwas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761721794; c=relaxed/simple;
	bh=771RC6uM89b9xUB1OZHKaWzcHWH7fcj0OH0r6yIElsI=;
	h=To:Subject:From:Message-Id:Date; b=GPKjZBL8xDBung784MXHKOeDvJPBRF7ir2rY14+kWWiaaD9Boe82znY12EJDAd/j4MVcP/32Fmg4qmH2vehuXtYt9oIGkNqG/4+paTW6cV1l8CuCugmsNCu19Mjid/i0O1u8f9EVACGqvrNuVgiJQ0kKv2vslpZl1kRTBG147vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVpNjqbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVpNjqbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD55C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761721793;
	bh=771RC6uM89b9xUB1OZHKaWzcHWH7fcj0OH0r6yIElsI=;
	h=To:Subject:From:Date:From;
	b=TVpNjqbIB0X0WknQY1oVzWK/e7M+r3zsQMtfboioYkIO/Rjj/ikAfhIJ6x90wdE/x
	 jQXxiu/VGw60E5sDY9mwQtoK+6HxZoo9BiVUHgMuWHkATV/CmpXZgXuszN4PJBhyVd
	 5At7BcKJyzcREgv4ZCsvVOcfOIrDzaXIiPxkv4LtVXD2EIUR0dUE7gHBT2Ilzil7Kd
	 xpiwzHgot7hKh1tAmlYD6O0ZX2jq34w7sX3ML9/HuT82n8E2rPD8c0fc8zlyu8yFzY
	 fKT/paEznQRnjD80YFyUEEDtpBWpjg2y4dKPX6AeLSJl7t9N0D/5+vLQsxixmzcqrT
	 aXTmSUw7w/WHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B0CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176172179358.25934.14507319847238266135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24856456ffe45e76439010b63370b4a6464717dbf5dc20b685cc9f162de0c44
Date: Wed, 29 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761721793
