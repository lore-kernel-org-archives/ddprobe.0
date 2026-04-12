Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D18191
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776026854; cv=none; b=ZL9KiQWMrvOVmbN9EfwRNBcQFhnAap1gn5ovTJH+SYAG29DBNoGd6dCtW0ntvtuTF1CxSSUdRw645eRk/Vj5WBfkcFCI6ND0Okc0PQxP/GdLUTARFULDkSM1oAKEW4pHl2CY5nhXVxfU+nF64tr70smmgvcuVDJ7cy96Tz/OmK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776026854; c=relaxed/simple;
	bh=2VRbCqu5kbeDbcnTW7Fr/kF/df85FHttxisxpc1I20k=;
	h=To:Subject:From:Message-Id:Date; b=m+51C7pDIsFO0ImOKfWUYcE50afFcMTdlqcssD9ZoLfi5GrsuTeY548ZStrZE5apwEJ/ski3b0+53KRU0MnG0GcRjAIskR2TSrgeAoJuPt3pgSI+NkpIraOjmKoM1RJobBEjd6caIlaloNNIFQDjlRUoPJsCSLzhyx9sATAa1JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p0CHPK4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p0CHPK4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20A9C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776026853;
	bh=2VRbCqu5kbeDbcnTW7Fr/kF/df85FHttxisxpc1I20k=;
	h=To:Subject:From:Date:From;
	b=p0CHPK4FkncmGr6zhYcJR/ca4bW9gJQ91XDwZt8yeE2uqRmP0fjq+XGE43B7ofNY+
	 cm6D65VTC0wpZgCE5R0f3H5CwiRtDHfzC7qNV3hCNUytrPeZ/BSoirK+z8d69d/byp
	 WGGq/2j6GGpEaEPZCHAnNCAnVFJw2U0xLMkSSY5loL+qxv6WHBi8tCpokh1Vdvp4zG
	 sCh5wR1kmyv/DT1avH1jGZkg7iaABXSw+PdxGzYsKBuoScDVGNRBpc067MXs05HKxG
	 8ROaNY9dZNrVPznqtTFJyKNtsJNeauDuYytlu1tKn2wQ1p76yBl5MG/jzmM/oc/b2Q
	 0vd4n1hhcCT6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFCCE93802
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177602685368.29178.665327966102446094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4429573a55c1132e8cbd996eca0af966338f7f1c6ee980fbf5d8d6c09db2654c
Date: Sun, 12 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776026853
