Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DDE1C84A6
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759603794; cv=none; b=Lpi8pFaWNQW5QaKkoId9ZhuT8fgJrQop4PlMXr/+20Tg/RHEuDJBZK2mXbIdJC0K9vGWe0I355Gp0i8N0NuvyWvBUaQr7pLruV/JNQETRnP5SRKBlgV9gr9IYFwIzFCzThaRPA9WkCS6lsMlY5FafeF/dd0WIbHL/Iu70/cNvDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759603794; c=relaxed/simple;
	bh=Pbl0oO4mP/gB5v4rP6DZhD7eD2LV3/BNhw2dET7DNUA=;
	h=To:Subject:From:Message-Id:Date; b=BIdl+g8Bt45NafAvS9ZOzTGSrRl6Jhu6iKvO6qK0zHS1sTyh7JoKPIgDzKWPStOwmHv9xExeBy6Vp1ts2BustwHjhOMgP3XaRYDRuAJy7jjV36wiLaOkbOvCxv5VHBWFgPZtBCZ/knTFmaO2C4DYMvjHQtjB/l7mS+CwW57TcjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BryRfUSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BryRfUSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8405C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759603793;
	bh=Pbl0oO4mP/gB5v4rP6DZhD7eD2LV3/BNhw2dET7DNUA=;
	h=To:Subject:From:Date:From;
	b=BryRfUSAKP5CotQbBKNCl77tk29G26HZx977+PquRZRqDORxzv93BQFDujlvLjeNJ
	 y069ofT+NOxkOmEy6F80aiWp2IPonr8Tif/txhZJsQ0RXRtMUkZpOf/am1edEH5XQb
	 VxvHUVWq+Xm/yGgUeO/hYanaQK5bwu1vLp+SlkZDQnmVPq1xdB37ZT9EKb5n1jt7mV
	 rNLg1X1OgHzoj8BAR8nqkFkQoJkpPEivmBcj2RTfXS861Z05BcRnKJ78byGrSztn6z
	 E4NIRoWMO3fIKZ5addEsoFi8YIlr28H9yF6w9dg83REQE/hFxPqYFmayOi5vWqnUWe
	 lAg8DAfikQjsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92214CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960379357.7471.11041529590752834280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea4598c5a171a57153d24fc614a3eecf0150f4c7c40ddfeea042694b89bd829
Date: Sat, 04 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759603793
