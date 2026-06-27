Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EAA149DF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782577714; cv=none; b=c82wT2+9mnVDQ1CrjmCZaUGng8Wn4XIkuS7A+2z61bCYP79FqtQOW3Xlmu6w8yvvUa8ndCeuC5Yoxc2441mCwizREJkyd/+siXIMqPWGWqXuG/Qhrn0+WlnWgTiD4l3QB1y5+KU2jrgW+mZbDxWvK4z+r8xLc2ixwbnBo6zwjxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782577714; c=relaxed/simple;
	bh=gB/OvV/OBzvVFaZlH/nnvZ+WHidFx/wxmsZKgT09hlg=;
	h=To:Subject:From:Message-Id:Date; b=XgCFj8B0G8l4JFHUkIi2+p3ar6+/XoX72oCqmQJ7ADURLVm5b8JBg0MW51xXHfQzeVWiHYOgbGTGz/u2CuspYm29S7Ly/uec5pQIc9zbpt/ka+GDWH1wDcbZrqtR7N5IlJg/MVdgKNAsFAN+LNRqkfJXbeyVXMUtB+sDA5z7CxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8bxYA5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8bxYA5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5045C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782577713;
	bh=gB/OvV/OBzvVFaZlH/nnvZ+WHidFx/wxmsZKgT09hlg=;
	h=To:Subject:From:Date:From;
	b=o8bxYA5/YT/PwoFBxSfxQRnUoOdJyf/wiOZMhl2UUQGbQ3o4nzSnndKfgaTiHV2tf
	 C1MEClLkYaYWHiagzvMttw9iVS0+XwcsoKWDmr8yLXCzmt46z83lRXXQ8nMvDXOPih
	 Xcar3xGPbsXjIuChjy713qM0D+uZfjjtwReu40wkRbCq9r7AdRrbmYwsLlUxDmc5nP
	 gabQ7zlag0vrQNCJ2VE/TDEGw5J/IzW/WQ5zc0bscXevPyqO3x6x3jAqheG4MqhmaH
	 glYYyV/a0bmZkiyJHobBWczce+eA17rG5xu5uXfFaJdQfr7XA3ZVgi/jGi3iTaED7x
	 Jwl/9XH6AA80A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB416C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257771369.956.7455461712673656211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20134c4badf2e966543dfc80a8e34040147edaea6dfa9b1cca1b010b5045b356
Date: Sat, 27 Jun 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782577713
