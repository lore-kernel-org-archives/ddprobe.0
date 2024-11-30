Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358FE17C222
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732971354; cv=none; b=cl/ZPkyPRpBezNRq52FFoLVPvbXl5AKAV6jeyXS6UNFgLCsWcJHn8FKT/RWnPWdjQ59BNOYVyirq+0Shadh30xtv+bEOVYoi9Q3CrpRNh3qn/0VobpxdMWtUzkQ1Glcp4spRDwL8xvxlvjyZ4Xvl1ppxASZDIJi54641IuF7tGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732971354; c=relaxed/simple;
	bh=Owffp/tG7QcTIwtCWiScyIeuKZRbcfuUanAUsB0RGds=;
	h=To:Subject:From:Message-Id:Date; b=G/wVqfuqQC07Q82GHMiQ9sLRbb2ASHn9N+V0QdPjJqg9IrfFFrVG5c8YfiYYX6px+aMO595JD2izHBRN3m6hpmA89gbNDk6SBgnONkqy1n/1SwjB0RQ0h5UnZs/LpoL5GnOCZRs9KVbm7PMtGobD+Xtf9UgAzHXasE+DjvlzRMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWHIG8+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWHIG8+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6178C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732971353;
	bh=Owffp/tG7QcTIwtCWiScyIeuKZRbcfuUanAUsB0RGds=;
	h=To:Subject:From:Date:From;
	b=VWHIG8+fwOQulAUoO3ovpNJTOq2ap/eedi4gtDQZPcYUSRFjnGbnkhhoF5nW9TqRl
	 OWNswRYrBw33F/CzSaQXorNbYrIcgUOuQ1jdT7WMOraBXxGwcmOKqyhz6qvpsEqom7
	 cciCDDfkPCIgpOZs8AZyw0cX00haxVxN+BypvbPQiLUrI/3TDztGext+e7/3IqjmuD
	 bzhBtfJwzI3/IS5nuwrg+pESOtAoBK3wJngsRFuVSi9BzqjIiZo0rPND40xTEunD5G
	 cZ2T26QMtF2cC6VvxcQPupSxth6EOi4SZ6qdZ2flaGe+NbGHp/FjY+zi2em6dtAhwD
	 qods+LPwyrHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4D0D73605
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173297135360.18670.1920520370613294269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a82c81a1a577b48e9f3e1631108f43c67edf241303402987566fea4820d9eb
Date: Sat, 30 Nov 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732971353
