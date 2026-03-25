Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4438A40825C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774468494; cv=none; b=R3yIj9H9aUugZ/ZZt4DPy0ZedH8OdUfbbWGkO2wZl8mqfHJBVzYRx3KUnMwky+LXz/uejHPe2jyHbEW8jCoil+kjyvzBwGkY3mNr8ruJBEcHSk+79FaTpRox58to8B0FoPzqea9l4HmtnZepuFUN8FjLJy3zpesP7k4YBU4xgtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774468494; c=relaxed/simple;
	bh=eqlYTcNPt6RtioBFcg/IDNwXB/58vVDlDyNBf2HEUk0=;
	h=To:Subject:From:Message-Id:Date; b=Dnwnm8jU5gkEX/PZuAhJKlOZvinfwRIlzUAdt7Ybkk5X7/qPP8iP3ZoHgjbu1GnfCXGC5Yd+s4b/30QX8efGzgyMTySDU+SG0xsgZ0sStB/pT3/7czcILpJi2QZAGkomaURdoEZiZQ6JNlcFDWQXbmk51Tmrt7gEH6wahEigfBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqDA0GAe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqDA0GAe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EBBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774468493;
	bh=eqlYTcNPt6RtioBFcg/IDNwXB/58vVDlDyNBf2HEUk0=;
	h=To:Subject:From:Date:From;
	b=sqDA0GAe0oEhBKsv/JOsVW3wWcK3/3FSMrw9PyClFYSNceZNG3B3nJRI/xgch6+0M
	 KBffAAOb7YXbxPERI/3cze9kwdIzCTIAAn/kka3K+JU0taK0vasKtblK5QHix/GP1w
	 439JyK76I4zGNUOzyOlM/A6VveRybM2uiz5vvcs1K3GssZmiJUH5+J/MYjQLwQ74AX
	 pCZ2iSEk5jdWKwv+wrLNdoW9K3vcGLsNidDOyPX2McwVoY1z/63FiMxna/VFJLwkCw
	 L2Ic+MorfmL4WdQMLPl2Ikqc84nBeKH4X42no02VCb77TA6UFoA/e3ULSsrcJKV1iJ
	 kbwSp4xftTqGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9578F109C057
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446849359.17920.6642850311943778128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089bd5269683338738bd0c2764982764c45ef63519cc1c8edf9e20c3e448cf4b
Date: Wed, 25 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774468493
