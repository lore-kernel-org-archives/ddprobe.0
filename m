Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1091CAA7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742400594; cv=none; b=OK1DCl47SXb55jFw3gpFYmGjHQunsieSyBgVCW7AP+lJZA3z7Pue/G4vJuUxN/7q/vk2qMZza5sk6UbIY+YFFcnLMI5W3iztV4ck2PdJr9csGqLmrNQ29EYBFwsRis5y55qbs+FGKn0vAl271WHKqcimlI2kCF/GUrng6ku/QL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742400594; c=relaxed/simple;
	bh=akxioHYqjhevaxxaN+DWkkemoEdSdYfm2HFkP4QCuTY=;
	h=To:Subject:From:Message-Id:Date; b=AFUkLhSaGqCGDQkcQgefr12QFwENa8jZK+Gn1ng0boC2dfr3zp1++DW3++yoizEW5wKVxzDYu7CxXtxwmOkmJa0HeSb433lgq0IaKdUf54U2qwpJiFyPgfXE74BnS5G2ltvqNddDMdLvmEYsxQcLMBzUio2NyfbiljfxarQwy8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buDHnw/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buDHnw/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA61C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742400593;
	bh=akxioHYqjhevaxxaN+DWkkemoEdSdYfm2HFkP4QCuTY=;
	h=To:Subject:From:Date:From;
	b=buDHnw/Z34RU8sOJ9LHSiTgSLs+3dWVeqJsXtjEeJCIu8//92L56J3MZduVP7D9Se
	 6rktVch/HngpB5arOcTPTFT6Oveh/eJ3itBl8eHcbMOFKFgprePVy336M6aLD/T6gh
	 fBxtvNrHfR5rGz5WgPBEYhT3+uh2qw/bLhDXa/tn3mR7+AzkfBXxdu4R69xtz5JV6v
	 uZhNkMUZGU5p9Hsock1Y4kwo66x1epIEBiRVmzod7fT560MZLm1YzPF5hY8egtPpzB
	 RzveugocN60+VIoI8HqLyaqit6ogyz+uZudJToOUvoclDYVf/PYznbZDBxDtb1RUb0
	 eTCQuPOZz8gTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A395C35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240059360.28023.5559384190292731322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c7ce1dfac315fed0daafd85b99f8d905b82e690edf3b775cac45464c28609b
Date: Wed, 19 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742400593
