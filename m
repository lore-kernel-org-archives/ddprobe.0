Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CE22DF126
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767666234; cv=none; b=CZwU1Po+WMXqr3ZqZ1rDEhic+oY1D5VdWjWV5Qs+sNcmrBotGQ2I72zOLxVZx6X9yjCVOXTsmg63p+bgmgK91JndNa2499fLG0Tk/SJudixhoNhuJa+wYQS/YqTG2diS+ct0UBCzkjc2k9IK7qpsVTeJyqcoOSCg0DYBQRtzgg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767666234; c=relaxed/simple;
	bh=TdZIhZIWewBTmkGVPqVPleKH5Iv7dDa+dZi7DVg9GJk=;
	h=To:Subject:From:Message-Id:Date; b=Pv6WqMGUNOzjdj90qfZFpnQaWGFvjaOLpdljBDC65skfPDKtZzp84Lpm3cn6WU7P6jEzCfuIBzlHdUVna7QyJZA+5ajYrkU9DVDp6ctcDjyLJ9LpypBUuhRSjUui7sVJSxPKdwpjCfUI61cT9S+QamobPcW1vL89p8kTQACjd5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIrjb8Q3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIrjb8Q3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB97C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767666233;
	bh=TdZIhZIWewBTmkGVPqVPleKH5Iv7dDa+dZi7DVg9GJk=;
	h=To:Subject:From:Date:From;
	b=LIrjb8Q340gfzu2lD5mbgqb+s0iilO7MFEqB8KKnk+iG2RI6/jEypxQruYQ7syO4S
	 f7Dy9a1RDYjcaNZNXbwdqA9whsj6V4i2eoAo3SKn6hkO1OuDMJnGNbgtPSjgK14pr4
	 lUgGWyZLmp+R5mTfyvYk9OVRGJk893GKBNq6PyyVG+/hQwdO5l3yKjOKZDo8vOWF+R
	 p1kvnmDJnjCEd2CsmF7NaCkGNQuRFHIe6UHuhHAdX61f2IIXZkjqz7KUNTJ7bcKIwT
	 1aZCVZ+LZhVTc/deVwxfipn1S9NrKWSWv03Ih+Pcip5QXyvJUywilVpGqZ4/EfuF9h
	 qowovKCuchiEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7F5CD042C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766623363.11153.18199382343217343675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a8db56b50834b585acd18c7fa6f8422c9251e8744450b807ad646c96b3b01f
Date: Tue, 06 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767666233
