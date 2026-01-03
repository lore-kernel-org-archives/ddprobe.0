Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228843FF1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767432234; cv=none; b=TwIJ0BkIHd266AaLSvY+sUATaAbS6TWwOlXjndX60ftSB6Z2a7MMO2Y14EmAChEW0OFFKYnGNGCH2KkfM6UuCjXhWWg2jdWZdC6n/qTC/eahuAPkUSWbFZCRzB6N3yDVEh47RszFOrQ+/4C6wkuZXVcChKMPntlR4Cx2MkDD7HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767432234; c=relaxed/simple;
	bh=ECzT4IQ27aMu1+GPQ5a6EovJ//8X/F9dwg14VLih4fw=;
	h=To:Subject:From:Message-Id:Date; b=lgZvv7ig5cNE7anf8IOPVPizRmwsmmRDndV8hdcAVF0gzNQxKo+XP/VNRwewn8t66/aMg4S1yDDlbTLPqOVkKnFLw7404JEjf8WuN5RRsXk6ZQvHRDW6CTpGMip9gyCkEjhESUxQTL63UlssouGqAwfH4iSy2wkBuZpF4JUQFrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3me7UVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3me7UVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A533BC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767432233;
	bh=ECzT4IQ27aMu1+GPQ5a6EovJ//8X/F9dwg14VLih4fw=;
	h=To:Subject:From:Date:From;
	b=F3me7UVfZcuE9xhC92DKnewW0Ue+av5Fpb0qSitzvNNuCQyIqOSexONNqY8dsCbfh
	 9nBfXcrLGsqoT1zB/dXi/S/sAG77Bz9mIXAZtlazzhUarBJCxxKYAnD105G5RI6/13
	 0HQ63+1f/7lZkyZFXUoWg2mRBjkmB86lJkBICLPWN94xQ8oS+TJD5U5/k8SeaOZgki
	 1vHVAm+6umoUlGDAsmNW/xP+9aN2T+7MHXilogOom3emZdNpXlqFyMZOHir+6f/mtm
	 QrxC2RlFfSY6dCLF8ldUO8H2XdQHYovq77EMkbQaegE3SWvWtOgbg8Oxd5XxZv9zw+
	 CDNpszEZP4NkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915CEFC6177
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176743223357.27087.2357555624573264430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99efe00fbb37475f1b0e3dd99df00bb84be2c2d4d1422a50be98d1f3f37a6f4c
Date: Sat, 03 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767432233
