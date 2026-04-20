Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF837646B
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776652654; cv=none; b=WGRPybArjepmW5fqP4dpbh/1uzTXWGQg7QXNKyY5akdF09G+iVRIeLVQB5jnbpj7lI+5wsx2BlCXBPmAUsq+lOCtrwEKuwCietISoKnArJZhQDvMRR4dZPf0mLagV0g70cKjUEcKniBGyts2/yRjdT6d91G7nZX+UnlWG2y4c/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776652654; c=relaxed/simple;
	bh=17FdoVksewtUDkoT0jsyjRqdKhLVJroZZ8nB/SiprfQ=;
	h=To:Subject:From:Message-Id:Date; b=fKx+NLrg8BeECY/GcnDRrtCF/L7ydJJuWhoLoI0SPwwyLlszHwv99nTIqO7YUsO9tAbjHLQ3WGo/jkRT4QG1XYvfjH4ZlV0YOCVn/z/0g15LFB3eykKR4a9L/F9U/TFFlkJJalgXV7yYkmJvAWjfbYIryaFkaGoIy568KL2Fx84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw1bzvlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hw1bzvlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBEEBC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776652653;
	bh=17FdoVksewtUDkoT0jsyjRqdKhLVJroZZ8nB/SiprfQ=;
	h=To:Subject:From:Date:From;
	b=Hw1bzvlUYieUuyIWFO7rRE7wMN2KL1FW8iikw8B9jpMwgdS5HBK3eRbpae5bRe0yo
	 yP4WjEKNiSmOFCQg04FMgkUDa783LE4uSzARCX9TyHKleDny6SidJeq8R5Y8p0ZiNd
	 1itkazA6YabjObJV8MU1/IV9G30ZGmx4f0KcwTy5znBqmgLtWPDlGfwtsbD9TbxNdo
	 PMpIHazvRY0tAIgHxGiHgOeOuo+4uVOEiBFyQdObHFH0jXYOOjvN4GqLp/YuAhE3a4
	 3UV4DyBfUvjzzYc2oVHmQ/u7aGRH+uZWBpJ+v/tLfvMPzR7mC06oKV6axC+LtpwVe1
	 XcPgENrMxCtQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91C9EA71B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665265368.19536.16962099857939302479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5706214e53f470424d8e86b749c4607eb22ad0118d8b2739da7889c4e61bbcca
Date: Mon, 20 Apr 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776652653
