Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4093F075E
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789900834; cv=none; b=uweGwsoqiJu/O/MAcsAZOgjtfP0E92ZdSRKPyLj2z+oPbK5LsyPQ4Nughvo4/a3kbiVU30eJGLHJ50+kWoIDz66aqv1TzbxQmxWGFK3eDxBWb8pLSUYAVgDBVxE+41G0rqdGOgFnhhCsQGftW/DY/RKuUwyFhYFimpUhS2CYC1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789900834; c=relaxed/simple;
	bh=tnSOHTj1PjXaB964/d8jpoPcrvVmgVl4hvCY8JMAjqk=;
	h=To:Subject:From:Message-Id:Date; b=LwDJccvx1WuwtdnOihAbde9Tq9258Bqm7zO/9JEiXfZg6QqQNwj2M1eCewHrtTuj3cRuKMBFP/vYT8mAFW6OfP788D0uKIYPs2OYNWCILQu+2TeOtL3YqJ6YTgmhQcErCumCoFK57SjS3iaRZwHaP8VAwDhxhpY3hFpZyKFH1tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ge4uBdIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ge4uBdIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02EDC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789900833;
	bh=tnSOHTj1PjXaB964/d8jpoPcrvVmgVl4hvCY8JMAjqk=;
	h=To:Subject:From:Date:From;
	b=Ge4uBdIjpJwJ3M5q6OePlrN+VX6cgEVbEh0g2TAhXY7HhtDS3GUsDG1lbqch4lAXx
	 6U8PTXRaP/TFMI76Hr/7bL5XkubS1j4DTUDNuetSZPjkiAWwrPB3R8Q8jLcXHIIgfu
	 fBUacoe2T/ZyH4jmvZ7KIMNS/E0GnK/23ozOQ1XN2xxl1xYOy2nNyFpWmqrDXHbILl
	 lElDCRUH5kkwAmSiansyaZm0Bv9swx5B20H2Sn6XOq1X0lH5tlpy3hU/VBVmxJIrSN
	 LWrOq94EeHFe9q68l793y/+4G5Z5AricvzsYzL+XPZRVcrNfLIZLvZy0wXuex58F5Y
	 +0CAHnpgsjkcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC546C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178990083369.27311.10653970548752619273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee76f2201513a13df7f55253d66004e6605de8e5f98c59ace2fd61cc2dc4950b
Date: Sun, 20 Sep 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789900833
