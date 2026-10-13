Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778A95592E5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791924634; cv=none; b=iEOXzwn04JXx0Lg3THSwDVnUJxnGA26znDdbXASYw7HUBBJSmUxMSi5c0B2dYxb4hhvH0/InRm2T4dCOx5llvjLi77J82KtYNPiBGsSGH7c+dv2SAuwAPiQTr7n80B5ZnehuDMOnzlpdJx5eOG8wcW7yCbXkxT69tWV6c7BBlX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791924634; c=relaxed/simple;
	bh=pYU+9PE4kvhzYUIFSdzj06d1pKRPjzZAUPLuedQqfuA=;
	h=To:Subject:From:Message-Id:Date; b=SOZiSFQLuX0NhfbFjP3TCqeiE2nP35vezhW1ophw33KiPrJLApMLH/YVrewLUrewC4Lv+4T/CWMFDOiZI3Fo1XgmQN61x9bLqc0ih5zY1zAJ/0lcQd01LUrClnVWoXxzahbbBan3xpkgoai3wkaDfPRDUxpeI9ZHtxi2IqWnw1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eszEoDOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eszEoDOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF237C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791924633;
	bh=pYU+9PE4kvhzYUIFSdzj06d1pKRPjzZAUPLuedQqfuA=;
	h=To:Subject:From:Date:From;
	b=eszEoDOi1uydeIJlUE8AUy5PODou45w0NFGbDLUfY9yA25PTX1mKQyZISaqLU8RlW
	 eONf9onNOSHsCwRV5Ew2fbfyWzMokmhnYo5JHmZ2NDyr6DzPDjXLpDTKV57l/ZAtp+
	 Cy+F71MjpC+2Z1G2GLjOE+/b/BHj+a/jlP43Fn6P6kN8Dz5V1Uv5FD4pljzEaDNXbR
	 x4LuiX9/dPdX+6HV3svo3ZS/iSGtSgjCOZol0GARA7JIbN661XlkbGwQsAgHf3V/WQ
	 bEAg1ere+Catgc3Xbzh1WQPoLQjA1mqP5FA6sLMYLFkQh1S8qbrvWOZ0nJPsQb09Rj
	 qyqKBorlknkSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA50CC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179192463369.18624.15339229893444952743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce91fb66e7110dfb416d5c9884599df9a2007d95eaaf11fde02fa2878a83a3ae
Date: Tue, 13 Oct 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791924633
