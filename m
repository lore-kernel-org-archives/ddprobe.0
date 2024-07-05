Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C0C12FF89
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720217723; cv=none; b=bjcgZLuCrlshx2To1AXPoPZLWcgGOcQoZGW6MPxqi7y1tsC+XEYHMl8Zti7nLL+wG13j1liZBVcFYx3b+IwOyd8RMa7eoMthoZPe5QkHtLSQur4x8pTxLeun9Tl9+h6H33W/cKIrk2S9wD4Vkd+es5c8dxddKfeyOngWr2Zgi6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720217723; c=relaxed/simple;
	bh=fcuVL5lzl97MBcu4txjlqGIE4NFAFowP+V15Yewl+gc=;
	h=To:Subject:From:Message-Id:Date; b=EnuSwellmEZxU0l0alTzIGg4P4+3xfRzhmtzhdUktqPdQf6lEBOZiDgQmXNbGp3TqpFV2Q2g2nqcp5sURGQiLgPg99SUUbUk5zyLROiqEjSGUy0ItJcysAp5f5ui3YgNfbkG6Wa/AMZzuc7dCXEq921YgF1bOBryNilp/ATRGFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoafRGul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aoafRGul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB2FC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720217722;
	bh=fcuVL5lzl97MBcu4txjlqGIE4NFAFowP+V15Yewl+gc=;
	h=To:Subject:From:Date:From;
	b=aoafRGulyuNCF5da050S5fEzkFTONC8T763InFVridzobmNDDv+FM12MYonlTwvoh
	 vmCfjsqfwIiDn0ZS01fzSfhZHX/tF83ZLRK4ZJ2zMW0smcz8FMWQKcmQv4Xe/RigDV
	 4bKm0NbQf+1Wu0h4E1ypTUp+JuyV2FYxYF+m8Sq06TRx5wd6utlUYwDYyuZKv7F82C
	 2188bAt3z3NmguDBKCYhoRlj3qvICMUj4ZGD4/GBSuBvpFFUhkRQwiEGmWxF/gqprX
	 2UHrPFRS+xQF/zvLv5FsosOWTohUQAUD1J2mPBg8wOR7jatyNc5ViaBI8jNWXJElWb
	 jITlncBVNSmtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42FEC38150
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 22:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172021772276.22683.12640789520774868045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21b8481b5904da85f4b9a966b39a83d552978183f6ca3773a12889dc153fb99
Date: Fri, 05 Jul 2024 22:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720217722
