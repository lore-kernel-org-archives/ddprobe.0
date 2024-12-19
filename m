Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A72433C0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734599754; cv=none; b=QGJXmEzm3n4wijCI9fhudfoERUJt+DLXXNAOzv8UESa/yDgAUjVZZnJcvsdsW+xbMYnyxpBxQfhlgBmQ1iw2ztUuDORtBUSPC417uQn0593aoablotMjIRzZlUj9WcfI2sWTVSa//OrhjUWshMZeI+vIiydvEgUCxfIRFVuXPOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734599754; c=relaxed/simple;
	bh=P4TqRJbO0593ZJB+0Hw8mmMhKufhTsYwB/B3Al9NXXs=;
	h=To:Subject:From:Message-Id:Date; b=X8StenTcjxls4MTqfoq8FIhcOSCBYE38WvAbl4nJ7wNpfi+elBpoXyPcyu7ByPcDoluZvPpyFs1YPuToDNVqQHa2J26w0jxnclD7DgU5m/CeCuCgp8F6Zo02RGfETPxirCsK/QVcbb13MFac79zS+7yPr4rluKe8gBB68lbtNPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHdmI240; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHdmI240"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF267C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734599753;
	bh=P4TqRJbO0593ZJB+0Hw8mmMhKufhTsYwB/B3Al9NXXs=;
	h=To:Subject:From:Date:From;
	b=tHdmI240FhjfnOBnGJN4OnO/sLekca5sMTtx16XZLhzyNWNROWy5orRxOWdSyqh1p
	 +N5rH7PZKzlKNs5QPWVm0EE2684d/0slrFyd1H+C+eu3RuGaK39eL5oV4r0+h0U0Jp
	 3NXV8x5e1ksr1Z4Z1HRvR8rw0o4kqBen8A7il8nFcrF6hwivmuR8RBHcRAxRIlO5o+
	 CjjErx0bbKwGMbLlZAdq0uGhh6eszsfUnbUMjYZDlOcfY1myDFPYx1U0VI3Z4m8lwF
	 ewoMq39xmJe23lj0Cu/AwEpqATQx0tFQiG1cVjsEmcraSIMDuitYCSkucPfsvOajWb
	 cJR5X2jG/jAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F0EE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173459975360.17872.5303792590283247476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee9d006cddcb5ac364a318ed31bd8c1e110e2084b97c60ab40ecad9b53a89586
Date: Thu, 19 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734599753
