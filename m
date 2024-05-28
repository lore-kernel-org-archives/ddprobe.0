Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E32616F831
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716910463; cv=none; b=jhXD0y8g/toVBkVkZwn/Sf893n3QfVmOhTsRew9zVwUyVcpE5z4qGxIyHsD/xwySd/LfKbw4+AFK7cvUfthMJzNGT8pxWHmJ8HmQcTUHEklunSUc9phvcC0ac7B8h+fikP6Zc84BIO4mJYF5X7DtsXfAq/+kQYq4V6kqHzQotVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716910463; c=relaxed/simple;
	bh=jaTZGcSjfL8lZ3j2X8V7bohxj4oKH+HRLY8LzlLiQzI=;
	h=To:Subject:From:Message-Id:Date; b=QhEDPA5VfCj9tfmIHjZti27knhWgi+sX4Bfk6GDDlDVNWXB3z8cGAuUX1NTNYEraSkdUIs9/xKYlT/CUYjUQXNgrQTVmRNQGB6ivm3a4SlaRmCyt02LkrmOrox6acKg5eBre3YHPRIbf/OIR/zEJoIbgPHa8h0NZobmKHvncCDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMXkUUd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMXkUUd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53A6C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716910462;
	bh=jaTZGcSjfL8lZ3j2X8V7bohxj4oKH+HRLY8LzlLiQzI=;
	h=To:Subject:From:Date:From;
	b=uMXkUUd2U3gDXtIGmCtgQf5YOIExa8YnpcM2UyXzFXVNuP0QVbHtsybM2d7kIGKY1
	 HxFCcVUUTHef38m7EmywF8EJeIW5dFn66BmtvjkIBNsdL2vRBBA4on+9magJ8Z7i/z
	 bwHqONB6Wx8iITVXJHZfXx6M/WHvmaBwsB30rWTq4nfYy2TQIRyrzwDwTM2LW85L77
	 ROJVLMQwbIYK5r01L/UrVfx0HEFa8rXbRpAFois1LlD2EFCZN905hdQGAk5g2Bk2EO
	 Vx0mwuBvTP37B7Dr0LoGl/DQ3S7pk9qFjwMtQ8xbYN/+dqKJPmK9xEzMeIwZQCEy90
	 SvCVyvugqvvMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AE0C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691046277.7445.14113212719103993806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e62a560f8e875679a40f3062aaa038e38cd4b6268b65d5755bef98bd979fee6
Date: Tue, 28 May 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716910462
