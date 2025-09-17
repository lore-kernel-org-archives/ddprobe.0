Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1558934BA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758146994; cv=none; b=dnqVk+CRhixDpH8qH8yOL6lUFrMzwUAWfnTuvubCBbAXWIYODinbeeDdlCbKLAa+THIvOQ/pqRVR46OEau3yjHlULDPpdYErDl+8q7EH7L5w5PMaXe+aakMUNGu9x71F8Z88cpR7eGPbAhIDOWXFWX6dEh8WxA/mtsOknH3TEl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758146994; c=relaxed/simple;
	bh=MGNyx0QxzXTE040bkIIfQ3AUKpHNSmgqyWKvgsnQPvA=;
	h=To:Subject:From:Message-Id:Date; b=GFjGsT2d8dlvhDpp09SOTGfc1pFMD5eZDLNMKyJNKhv8gNUPgyZJbwuX/OyN9gQ6vnQE8BU+/BsueM/pdxKZl/qsuVPKSGnT6EkvR+KXnK9QQ7fd/w7CpBRKljeEU24yM/0MPWqD5HbY5e46Bxdgbrn1KAkmvXOnKccsvubfmNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODv+h1kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODv+h1kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F2AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758146993;
	bh=MGNyx0QxzXTE040bkIIfQ3AUKpHNSmgqyWKvgsnQPvA=;
	h=To:Subject:From:Date:From;
	b=ODv+h1ktPoVN8ha3MYvgyqmISWZvXTSeg1nfNN5l9zopUvoVuWhwuaxuYC8xsXpYd
	 AH1n5H+KPEIZmRvtMuqgF4C82npDOEG8EGu5okjXv4N1kLC6cxn7jOVOsp23ElRMWk
	 OLBkn8mJMZbJMbsJzr/pGFK7wl58RIuYljplautknZOX/CZy5DjEk/b0KNTORBwNkL
	 bH06PZ+JG1Ik0MSMUSwZqmjSkXazHLLnJ6ruJUzFZK94cGsNnKSsKGym5TNTS3XCwj
	 7l8lY1Pi/f33eir3L3/nAPX8+AI9i0/8ihZPYyTWo+rRZa8+MBKKsDNPL0bJ+jqUU5
	 xu30CH2Zraz9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E95CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814699358.8832.6092478486854538451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c66145433fcaeff8e3088fd6d4222afc86ad21984a4f8e5cd1e2f71cb081a2
Date: Wed, 17 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758146993
