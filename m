Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193A928C87C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768616636; cv=none; b=Deq2snqmqI39E3fKyii/Umz0DfWiXIMq4Hh7xdxet2LuXYgHJtNMBuurxz7jtCe77elbfmLASjbSoksB+8OZe+hwJ4YN6nej8SIZwL8LmeoEZ2M04pom0gSTlDR3ft+bY6QDDGkM35Pkfb/YhuxH5tk+K+VAxQVTVWnS9DlwRd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768616636; c=relaxed/simple;
	bh=s5r9ETGHlxZq/Hj+Lv6ZLqemWuRNp38WKXqm8XwNXQE=;
	h=To:Subject:From:Message-Id:Date; b=rHMT+GoJ94oRJ+EG36aIv03E8sga9566GuEGkC6KxGzFmsRMBhgDBPRTSV0pRCcjGuttlWOttm4VIibNKH19+MwgEoIcaT2i+x/FFRNP9WWjnM3Y0r4NUO8yvJ2iSDZdPggvtsKaFAzs9S/FpV2cJwIZXQVHZas+6qUr29ojBhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZEZOpGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZEZOpGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91D9C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768616633;
	bh=s5r9ETGHlxZq/Hj+Lv6ZLqemWuRNp38WKXqm8XwNXQE=;
	h=To:Subject:From:Date:From;
	b=aZEZOpGkHm7sdYGS677NsQYwLw9WR4frvnYWR7dfW8ZJUGk/5KqAzNQkXWLbwH694
	 feCSJ+raNfEa1ZIFap/Yb4svkZsAD2vzS9BhfspX4GaWTN/XjMKnkYLclrA6xQ0+LH
	 qrgcN2VCydKrBJ7jiSQ0KKXDIj9B0IMc9y5dJ8ro5xm1a/74gG7PW7Kv+OhVj00l/+
	 EvF3r1wT9cSu20KPOe7fMClmlP3VpGOLz/5NpxktLTH0aJYt1cQP1vmkB5rRp981HZ
	 brzp59Nxd2K61Cz+OTP+UlDxrXXeGlP/zvj/PrNxp7ryiJdzSx8RJnPG72Dnis83mt
	 yM/mBJJRgsvMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F70C9830D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861663358.23367.14909261389046582956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6c86303f3124b258bff78a778d33ad34c5a60d61ae50a53d398ec3520c83c3
Date: Sat, 17 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768616633
