Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214003A0B36
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767826434; cv=none; b=TJYCFdZxEksDKJg7JRJAYnJlVJa+HOtTizfSScI5bouJxs9K9j3IGBng9Au7qPdG9qcWlphddX8SM0Tuwm60zVQs/SHzk2CZ+n6k3xQnwWVj4PckklwOWju3qJ9k4RZ+Fis/XgZC+8nSSxuYA7UaTPxVFI3AXnQ0HjArWloNXrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767826434; c=relaxed/simple;
	bh=NiHdETwaXol+JJcugUsDoNVhJikZBlWvTN/imMfooFk=;
	h=To:Subject:From:Message-Id:Date; b=Wk6GOHdF3EcAGFP69J5dItwWzndMCVF22GebJuRKWOCOMwrlaOa6xUacB1mXxxt0BobLpCzSFUreCL27o8C9pi6vjziVOCXvPSAQjFT6a679CCC63iZdMY0HzJv8HE10fHI0gj9DtVP5b1KGzfnyhVhCs4Kz9z8IckN7Ah8rb80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9AuyAVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9AuyAVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A566BC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767826433;
	bh=NiHdETwaXol+JJcugUsDoNVhJikZBlWvTN/imMfooFk=;
	h=To:Subject:From:Date:From;
	b=S9AuyAVtMLIM+lRkFZmfC16UqN2N/DtiJwWOfNn7OW7P4cLLu6ZIdGeMnC0ZwIvqf
	 Xkjqmtf4CQ3r3DGqgyq5QJurmi9UCEaoWDpWIXNNtuSvsmGzoYs8oQ3Ziodf8xX8C0
	 pQTHre6dWODpl1F+o5U5PeSJwG5KVlcG/FULNrJdNGqET3axE2TBs36ehTgBc7pjot
	 lWpoMWcF9GT6uLXshq/ArFqQ7ws89RLnJaeRe8m/RW2ulPT9GB20Fcchn2WaSVs1D2
	 32Iai/+/gXS7EclTkj1XZ1YCen7Q1aHf+93U5gaYyppSwWdo5aHBv078BtPk2Y86Ik
	 JeRtYAPoVJNcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7FD0D17A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782643357.4015.8324410565362097712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f53d8935dbeae059eb63ac79ab5d79aa4f2412007ea7104e432035589e2510
Date: Wed, 07 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767826433
