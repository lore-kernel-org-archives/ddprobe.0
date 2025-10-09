Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE1A2DF154
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760010594; cv=none; b=SR3Ui/IiDihKXLdIas6MBG3RXi4buyTk+8G0DjtuhN+/NChaOrV7H241GXymEBfM79L9YDFY/gjhp4sXNpAy6E5vrH/m0Urv2A455jrHTC6pYneYUuqSO9HePG17VVTRfOrbhx5hHOEGvCvjHvxawYu/67/lBP8CFmvkzi7ZuKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760010594; c=relaxed/simple;
	bh=qHZdWKGiQB6PlGP5iHwiZmZ2QxjJKicBVcJy+dEZz0E=;
	h=To:Subject:From:Message-Id:Date; b=ueFnu4ZYppDOkIdejslN5FyM453zlpAGAZn68ZOHDv/gLY7FSLk+5jyd18CAwyzYBq5c9C6XevelthSK0tGgV4ZIGjtfoGCifYsEqfVOw5cpKCUMxzpxJ7wIUN6v9jiBGDiNNNfJv0iZun0LOsbBDx9LUL7NF2V26vjIDGC0CDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufWb4i9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufWb4i9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F929C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760010593;
	bh=qHZdWKGiQB6PlGP5iHwiZmZ2QxjJKicBVcJy+dEZz0E=;
	h=To:Subject:From:Date:From;
	b=ufWb4i9eNLi74fc4y0/1jtx5pnZl6GRlDQotl+WN6FDFN4yhPWjjZs5Y/TMk7YPVr
	 RjteXEu6pUFlUnIdV1/DFJuaZraMbze4PJIq+fz0eeJvQixUo4yp69yBzktIrm3HJU
	 RCAcUDWUv2OUH9gVzLNqSgbCgObDXopoj+LHTbnLkkBer9eiIZMdQLaZfzprMRGaNa
	 Glsd1gqKLWeHD1EnemBWXsGkxCjuUDWC7TEfcGfSG2w2mh64eM2+7Mb0C5bSadaI01
	 wPmDfzL4/AwlYfgL0eGgXq0SA45NHAGCcpytk1AsNC0k2SFunDx4RSGyRlMPk0qmAh
	 +Eh2CS8F8D0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFECCCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001059357.10241.8475632108273290070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38535dee4f762bd2651d1628e13d3b61ebaedb51f93407426d5832ed06a70edf
Date: Thu, 09 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760010593
