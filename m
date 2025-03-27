Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8E8C2C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743059395; cv=none; b=rd0RBUNshOrLbAbqpLXUvdFje1Wyr2ociF3kmcbQHYwaIsQCkZY2ODnxDwsoTYYxtZwhkTI1ivGock1Ux4PQgozgFgv1PLaFJjFj6S3kmo4OzO3nz03djxbkcYEegH1FBTMWk+UirTJhjMUgv/D0Y0jpp1TiWQBOZwtVBQYH9VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743059395; c=relaxed/simple;
	bh=oqzcSS58dRwxFE0+Y+BbEdLWLPF9mNnQIXzYc8GDgs8=;
	h=To:Subject:From:Message-Id:Date; b=PYX1v/wUvFa4pg717DXEGucRzESD0ynxdH4nvM2kagw1wwnbv71D5QYHZqX7PzPnjQfKGw4RYB/8N1cevqjo+IvzccnoRlu8wapt43pJgZ+hOWgI7GsH3ppWXNZAPsBROYJWcm942AIk7LvOQBlD2pT/XwJ8NaRt2do+X/KzyAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uk/C4Spd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uk/C4Spd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39F3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743059393;
	bh=oqzcSS58dRwxFE0+Y+BbEdLWLPF9mNnQIXzYc8GDgs8=;
	h=To:Subject:From:Date:From;
	b=uk/C4SpdnYn1U6hj+UluBI+Kgofsn1JFUzVdklO4aV11JA0Sm0eT+QK33h+By8Mi3
	 BCmL5gI/xYMvbMVR1I0jfPlkAl1jcZGx4xUobMamW9frCXPbm7jMQE/etKhTLq/S1B
	 NBV9ZnanHY2iKUE92WSECY6ydU7uH6oq9EanVfoa8gBO0dpiq8G/kk8405Fcf9VhYw
	 otAN3ghM1kto4715hWlGIZLACQZZTvdBoxPk9khGxuqlDywlS+AW27cLv/UcY5lDji
	 Z95llHvHsovz+Cdy/iaecNcQ0sxgrda5R0BF+YvJH7Zz312h3i33N198k5YolzT0rd
	 tbBgBD52id/ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A06C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305939363.10464.9007498093650773903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4810fbbbdfdc8e36c259e964aa5f177a8dba53887bbce71eceb4c56581bf713
Date: Thu, 27 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743059393
