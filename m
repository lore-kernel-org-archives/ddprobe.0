Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE82018B0A
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769564633; cv=none; b=BdDbB8p0Iob+km3M3J34Zht9L5+HzzrhhwZ4S2SZdJ8cVKTmNONA9pmFyoGJlyp6mLVe1egumIi+XWMqtykbNF0MeHrKnIe6a3+SvrLo1n+kCF2glVAquxpzt+Z2rX3KxeJ1NtQqVQi2fQ8+NgFPnKNZb/D6EM4J9LvvQ5vAPeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769564633; c=relaxed/simple;
	bh=Rg9Z4Vr3ZSjIGUy5nONu1TLgCP5QMiKxEaqjDdhyRM0=;
	h=To:Subject:From:Message-Id:Date; b=j9zy/8MTwHVNclH8IjoJM+F4kQ+F0d8EswB5Ql05Qn64byrjweKYaNS/9+5eRG0m8/qmZ0OaI5WxxFDldClj44OMdQ+FIS7jjITEK2o8OZGbFJ5jfxmIc8C1HdZ+2YtKtOGAX/U8HzXXiHb7IgYzfLX6xX3fAPAAz1nkvNIy0aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKSvp094; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKSvp094"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0202C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769564633;
	bh=Rg9Z4Vr3ZSjIGUy5nONu1TLgCP5QMiKxEaqjDdhyRM0=;
	h=To:Subject:From:Date:From;
	b=AKSvp094KpuAoZiiwSZ23+ewROWaWdsnTMiTPrtSeW3bDs71t0PTQpjlgYRHimYI6
	 zKcNyHE62H66WhfZ8z1OXAcq73B7QRTX8qDGWt78RqxbWbPmWDzctR8T1HYEDQv60n
	 alhEJ52y6/TpHRwDLRNQ1X1PgYeNLdPsWFJUyFsYsJDj7fhgsp0p6jeJzGJ0el2ahM
	 Mes5iuODB8D1XW5L73B60GHWvSAs6BbBqp/MRxNaXSWt97sUlPksWVYSlzzevn+v+v
	 j+9KJao09dJrVzV+06g/oY0dh8KAPHcPINjl6EmHdDbUlQt4O8DY/vxIrASZxc/VLQ
	 O+0xxdVCEotOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CDD35660
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956463358.15688.17303034971123222365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2ddea5b1b146b6f68b5ecd09e72d373f64e72db08ffaf21d6378553ddcf435b
Date: Wed, 28 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769564633
