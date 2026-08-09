Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480812B9BA
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786248034; cv=none; b=b2/iNR54ubR8yoOBfzyv5h8gNX33ID4ByxpGUUaYCcuF/wMy7D5jaZKGkFRP9ETLNmI+9QrX9TNev6x9G1cTiCBXmhYwpePpnHc1nZHyZC/sfmEoXxVas0FMapr4MGhCGQjQ3ailgPCl2B14ACZNXoi0mjN7T6yaNnkWO69Moss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786248034; c=relaxed/simple;
	bh=I1lYRY3EehJcke5c6E9R479JOTvKkMI6hpdI3Z7cqs8=;
	h=To:Subject:From:Message-Id:Date; b=gfWplJAymuCK916FHZjR+eYq5G/IwqGofeyh2RmPMoLpdlnXi3K8Z/mDt86TW4JIDyfNQDIyhpUT12tDIyK0uLxcZ+4NTs0nVjOqc6IR0GnutKvKxm8dWivXHVCPVtJhgsK40Hs7p2zPx3QWEoxu8QrGy7+9DH01kaezVH6oyDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7IQyPZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7IQyPZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA63C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786248033;
	bh=I1lYRY3EehJcke5c6E9R479JOTvKkMI6hpdI3Z7cqs8=;
	h=To:Subject:From:Date:From;
	b=Y7IQyPZru1AYyKw2UE7l6N4V8RC9RjTbqylUJP11ZHxV1z5eNdIIPLhhI2bBWk4Uv
	 QGf/4zFOCPwuxUIGawVEg7KGdm0oGsxQfNJod68gCiXRlx5fvKVxfXWgzZLZVDdQFV
	 Uc8KlER50xWagiv9q7MUKOiNKtARgBoSzUcffsY55lezo06v0xc0KmAiV/ffUwFW3F
	 NLadOAFpISnfRiN2XRK8kxUDZ3ooBC4xI4Jwl4eel1ETaz72PPL8rRsD+sa/ZZsPG2
	 kM/1uc2QuISl6x8E6x3g12e3q22Qks/FaQAM0Nzdn1JZrspqtIMMdcGC5sZSmoU88G
	 QuihQXI09OXvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA586C5AD2C
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624803368.11474.522976311150774602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42610d6d2999f599be79b15af26dff94aabe00fa9136283117f354e2d9ec35b
Date: Sun, 09 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786248033
