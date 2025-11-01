Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19ABC1A9F84
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761978594; cv=none; b=se31nYgXlg6cWzLVu2KmhkMlvSGq5/qEVGWPlaIdJYfttON/ddJeWlb3jkezmK+Hc001vKpzJL7W6eSdAV3aLphtsS26YPKYRkcuyqUHd/eLxvOAfoARIezABhVz0vlCfUs8d7GSZhgQUxIVR4H8O54Oz2W+dV5gJocy0gKeABU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761978594; c=relaxed/simple;
	bh=D2/98AIK+m+n9oBPJ+zFKwc2cBTLg+FN0rNkuBtbDug=;
	h=To:Subject:From:Message-Id:Date; b=cic5l2eVH6gLBKI3DJ4Bxh7DPydpB5vL7msH+x07Z9WHIbmQfbgY2XnRikNG0LwuGwY99Iu48cvgvaPWa43Sk4pcZNNDyulx/Td2/8nAd+dwlr8oPhy7QslyuIH/XtP4ZZ8N9ykvGKcdrByHEnObk9rQ6UJgfMjJck8hm/GEPX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icENF1cC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icENF1cC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FABC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761978593;
	bh=D2/98AIK+m+n9oBPJ+zFKwc2cBTLg+FN0rNkuBtbDug=;
	h=To:Subject:From:Date:From;
	b=icENF1cCcVQvOFTpp1uFuBI2ceL7+gsYI+TOjGM95D7XutTCoVmLSdREHoxf9V5lD
	 FQvyZNhb2Elm/hgI4Fqu2T/TUZgwVbmN974et2rGwtK1urf+2wG1Gaph0C8dzcV3KG
	 oolKlVHfsw40kbGHXCjB1yqldSzyo4vm7C8VrYGItlrFeEFGi5wKn461grkIoYBtZl
	 1yovtB/ZjyDC1Gn+crO+qMn81fcxgmJ6Jawn/e0dhOgVej1gUiaT82D/gYxocZObLH
	 fdMtipZ97v8ZGapZYoi5Avpdr8NyEf/gV48sbZMTfXjN0UObfKHk4vSsCAaTcyW8gF
	 U05apXXEfTOFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9416ACCF9F8
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197859359.15946.2556747042430489398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e46c43126c994e9d0e6b1f838aeb7c49cadb2dc2634d8003047bd884095244
Date: Sat, 01 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761978593
