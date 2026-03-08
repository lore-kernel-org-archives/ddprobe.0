Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274241F92E
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772948694; cv=none; b=pT+Pgs6tsrZyzlYnO3xKylsA3JEBgVT8pRETxxaOehRyafUl63AdFy1DUeJofJoab2GeG+xyavcLgqgHNfR/OBakoEUFQwvJ0ANhO+PaSce8MpJwHRipXo+Wt/0HvfZM+BCsXPYoYf0kjAFq7lgvkyBRWnIP4Vz0nnYWKdiShfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772948694; c=relaxed/simple;
	bh=mC2K8KxzHKae/fjW0m1dZtowe4WfkxlfAiIMcDBY6nA=;
	h=To:Subject:From:Message-Id:Date; b=ofmELYmDswDAw0d8woliQTazM9Ch+W7EhREJ2n2YdXck4KbaD07LFvBwMhaNjaTOaz9WEAr6Xu8PyYniMZe+WnNgh/aqUxuolz0FD86A3BqqRWrb5xrAeRuovsPK+6b4DWjNzK93gM65TYW8WzmgCjQXaYOAtLbVzX2O/cLa/lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5gxH9k3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5gxH9k3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87FAC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772948693;
	bh=mC2K8KxzHKae/fjW0m1dZtowe4WfkxlfAiIMcDBY6nA=;
	h=To:Subject:From:Date:From;
	b=Y5gxH9k3EAOzsSKcYmc75mvlHUPnEyKCD6fax7xUfB/C6VaaqXSAG98j1Cmd3GPpf
	 ETKPe1/wmyVDB+II/jRPjoRksFc9B2yMWJZKrbRIO8XL1tOVrV7Gr2y7TFn7AHxAYB
	 eDFPkxhnDr1vcwe+a9lDVU+skmwI7D+J04v9y0GBYWjnyPqqzUU9TRl2jtmjRi6mIK
	 Z2N1x0rj2xkAPsaHABW3jDwuUpy23MmKHv/cYrYusRG00ypDdQef87dZqs0Yl0iPjc
	 vZfjBGmBpiVfvanaKflPDYw0lrIIWJqzy77JSoL0JsKrTHyuLUohiuQSjl2hS9vJys
	 scVnhTK12F4/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566BF55131
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294869357.1761.10681715416302350397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac84607d355dcd4687b678e3b41bf2fd40bedfc5488715a895c71a6f78ee5db
Date: Sun, 08 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772948693
