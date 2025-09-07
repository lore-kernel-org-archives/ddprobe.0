Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212611EC006
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757254194; cv=none; b=uTlvUzc+lIpMlwnAxqIn4q82uhGpknY0jp/eP9/75H/S76fQMGENmiFAi9BjaS54falMVj0250BFOx8CpYmrXrO2lFnE3CmkqcUO5x6YmdCxD8Zo8XI3wORbzGfFoRT78tBZkM10mupzpE/BXG+9nk9WRoiJXuzEPxAXvQx7mdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757254194; c=relaxed/simple;
	bh=KUDdbP1CoRCnqS4vmZHHjnqYsDH1fdKjZCjVWZXGNgc=;
	h=To:Subject:From:Message-Id:Date; b=thXjaf6gd0B7aw2Muc2xCXPiQUe/UbzO0Vz/KdNJ/+BDCdfvKEi76eAmpuDSaqvjVe81siJdus0tBm7vdTzpG/DA9YeOW79hK/xeb+nHPhR95LcN/cD/D1ftKyPBvW7PNiX55JNkwC6P5F4ZUlSZhWC8elabT0PY3FmPbkk7vDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUI7dsj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUI7dsj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757254193;
	bh=KUDdbP1CoRCnqS4vmZHHjnqYsDH1fdKjZCjVWZXGNgc=;
	h=To:Subject:From:Date:From;
	b=XUI7dsj+/YDHyYZjmJijAuSKm+tZur022l1IkY3Jefl8df6Q/IGsnXKq6QAPWSXfc
	 CIaZktoGf6nEkqjskRDDSbjMGkafW+L5sZwSSb6Cx8vcLCMJBA8Pu9iBmTqAuVdYnH
	 Q/AmOyfcY2AjwIRrZRwxtLvbbVtY7sl+FLBtKhL664fNqJYr1vtfbtuFLM8g1aeVrl
	 px+g5GZBW69GRwDRlCBz9NDgjCJxilgG3+RJlhwYzbBPq5KyfE4+fQTArIvXaSgSSH
	 BQwXnMImHyFQj9vwQj4aWURXyqgCOgcY0o6M296YbJ3pDc3QecR6znQphbwHEzhCPl
	 U+WC7z3pogZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA6CAC581
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725419358.11009.14158588054768151455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f008861f34d35a74138f6280ceccce75002a0ac680e5f20c9b0b78cf8e7580
Date: Sun, 07 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757254193
