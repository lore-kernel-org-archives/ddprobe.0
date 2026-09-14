Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B2C47ACC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789395035; cv=none; b=SGr7E7hF3TMiEMprxHynreIAQihMN0eWwhJlJV2Md5iwrgF/aYsQ+4eam9uXTmo8xatVZZeSMkM9QYyjQfG8jAxGFxDsMi//Hx8ITMw2yyRJxNGcuNMCCKZUhrlomiifxvBxl088NNw4QI/9iSQHapzB/D7eP6grN+PfQqbZXWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789395035; c=relaxed/simple;
	bh=Gvfob9U8KLaj4fxkTTc0DhtrKhZLXAB6OkfEfgymp2Q=;
	h=To:Subject:From:Message-Id:Date; b=pHOPAbO/IajXoctKXr910LiQK/nEhc3PBRXlSysWHgfi/i1GViNcDyqL/xq6tOKywYkzr6yeG3gsb1241LP2y48Zv+EjZCTAF8EJQeHXD5ooftN9xVTCMIX1ASrTGGZpKFocFwqPsJ5J6x09zfBZ8AXLgPylTqsofU+Zszb7TXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rgk573KF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rgk573KF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB55AC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789395033;
	bh=Gvfob9U8KLaj4fxkTTc0DhtrKhZLXAB6OkfEfgymp2Q=;
	h=To:Subject:From:Date:From;
	b=Rgk573KFKI3CJ4IvX8hTGEl/62+80yw0otA4lcouKjC0maGCVVyKqQJUyr+Ff2pI9
	 nPRaSUUmf9hpjBKcwO5jwDap7SO/frPjZR+JkaCjCoMd6yVO7zASxW118GpxMMYzge
	 3Zz7MAojyfc3Tsv7DoxBvczMck9O2+meKDsmWQgbI/vj+Cv8rKQ8gA5R1ZHEK8w6pQ
	 +WF4poiNod3gTrMjRxhauKszoBLWro83Gj5gErxd/7NaRO3ugQxFmbHK20X22PeXvj
	 1EDNu5kW9QrYKdhQc6aW8eOXRBjFdMgC6H9G10iuOV7x3N+rjPa6WHwfwQ3eH+Gmed
	 82uj/sON0neAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B230FC88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939503371.24673.7316618713528165323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 647a0d29cc278e937fb93906e6eceb79437c75d92dc6c32294ff707aee7ab5b6
Date: Mon, 14 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789395033
