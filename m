Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698593246E8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787778634; cv=none; b=d3AJYjXfgKNP/o1QfaEio3XeBALLC7cNZi/nTd+bCKjbRnmRQLf0g7CDKCxI+YRjWwObrc/qMLpobJ/wNgjQ1F6D4rUj471OzxxLaZ9Z/GxDvcfwwTajnY2t6/v5Uh1FyUgk60+jqgKOaVdFaTKDbbwsVIWMkagZVnxFEafVKT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787778634; c=relaxed/simple;
	bh=qhj5odefwjozRBcX0SU87pShHXkiyy0Edb0ZS+enuoE=;
	h=To:Subject:From:Message-Id:Date; b=uEU+8If9KL3r9htSKFPVfJZXML6IzvpzaYWiIGuzaYCQNKQznlGMl/mWAPCxKhKlSZTt/G9v4zHex5N23MEAzO62SAuUQzH+7EeZb+gQYtnu4JqhjJM/8tOlje8GRMXy5RB1ydB/a0YYVD33jT1R9csCpDuLhcFUiZbxql6tZ4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enio/A2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enio/A2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94A7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787778633;
	bh=qhj5odefwjozRBcX0SU87pShHXkiyy0Edb0ZS+enuoE=;
	h=To:Subject:From:Date:From;
	b=enio/A2JvX4C7LklMMccwVZ5TIHW3mdLPGKhCTB19DitWKOG90sEUzsQuQfsNKqlv
	 BDb8lmOfbf7gAW93gVN8tHQ1v7SJijAOoTNO1QJSuGDJ9+fcbHZtDmabXSeotTQZLd
	 OdC9LgZZYh9if/vXg0XgDbO3/i46yLub30LJ5KoLkNDmx2HdzUpp8vcSlmbG18KUkF
	 z/oF7SEGbjWFQEzx1trSuFYYzmiFqqpLnrEZGblBTZbDefEcyF0J4/c10ehcdVAc9g
	 1/eDi7j//Efcxfi7y8eOFLYEA+hohWPI6QRJDxGt58vuu5nFyYKIiU31XcRemEWWgg
	 LqR/5QLaQch4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA9DC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777863369.13885.11196463442412853035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f995128b7dd35b366c93792355d9ccd50676f05e9129a19bd0e67e2dd55eef
Date: Wed, 26 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787778633
