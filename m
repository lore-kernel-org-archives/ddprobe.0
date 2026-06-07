Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51ED12DAFBB
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780865674; cv=none; b=BxQauy7bztTWDeExMGd+300YiN9Hj4Q9prged+a7NF4s0SPI54ZNd2crlsGM1DPKAIprYA3vJwDco4MD2RVGtZrW/3ISgRnIAMeKsQ3gFctmoh+2Digimnygnqccyy1Tu91sIEKj8UZZagwobQ/zWuS3vhVZaYfFVMYAMVDP8rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780865674; c=relaxed/simple;
	bh=/4aD/c+wKBhDRNPsBo7YCtA+UDyACx675QQMxtCCn+4=;
	h=To:Subject:From:Message-Id:Date; b=X5dGPcmC+gsfSQUZQZrDICsZjG+FN7fDI78m9uaTz/pYkGzkDhdL9APRs4D+wep/tWF9QRigrqBzrHHiRD2NdfFPklVNUT7ybyOl1yqM62DaTvYbEqtE5E+shfLscXaUW/PoPV6QZq29nSrfZQouRAKNfyEfptGGwrAl/5lMqtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHqv4fK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHqv4fK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA206C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780865673;
	bh=/4aD/c+wKBhDRNPsBo7YCtA+UDyACx675QQMxtCCn+4=;
	h=To:Subject:From:Date:From;
	b=MHqv4fK3RLTqXxyFdp6UbQZvNmZnGWwDD/PH9HEvBf3q5K7RiO1QbkSrBAfyKjqX1
	 0MZ2tjua0jZYOnATk712ngAUFUmYfUphZgaB1IDWBE0l5rafw162KxOh+Bt2tXkuGk
	 b17m1QJlCz3JL+/8ji/ayR0DQzkc+GjbmdkzdclQI+Ns8+mZR7UU+mrD5sLX5XygN/
	 1OOOCYT8uWxdigQasBrAw5hmV5TNrc8yJ7T6yGZM8q+qXAAH0GqLUQ+6r18aiGqmWb
	 l9urKaT38ejtAWM+oZavo/WXctRMYxFf8kGvqaXnrMry2J0s9gIgk/Fblly+8bbwXu
	 9P2g9nF3XSkRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CBECD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086567368.2532.15787280089938717615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8c2754c402f5b589e9622a557df3c07b30f33f892de17b70a6d0ff09390552
Date: Sun, 07 Jun 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780865673
