Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D0E231A37
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748957394; cv=none; b=J0PDOIisb4QrHSlPC5ulm5yf4pyW9uRujuEca5ICLOVvjE3bvJef+F6B/l/I+gjWnVvDwi4BIoOzvW6+59bZngbDThb1JF3NyKm8LWGcc/GOPk5CS7VbI848FOQNyfkAGrWwMGgysh1MD0hx7DeJPYIZgrBr4ziP5oMoZDLcrrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748957394; c=relaxed/simple;
	bh=FCr86JLFyxs6gRAKMTIWJhapzChpcz2eD9tYROslQ6Y=;
	h=To:Subject:From:Message-Id:Date; b=Bnw229Ua3aWMfeUFegg6EYK1DQFCHJLis2CRdh5Bhqle6wm+7xaiKNGIwarFp3nSv23PjPcxnYtva4d88M4Hq+Sigl+I26h/kJd5poOxVtiw5xcwDrXvJqnmVUulpz6vvnUtWcwtctjmFt5l1HKypzVaOVIkCfxijiND3GTddtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oiYWFN27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oiYWFN27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9D2C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748957393;
	bh=FCr86JLFyxs6gRAKMTIWJhapzChpcz2eD9tYROslQ6Y=;
	h=To:Subject:From:Date:From;
	b=oiYWFN27ZziCU9X6iE76fmZYYYHiQcX4rIh3PZfXYOm8NZGCuStp45LW3rzHO2WrZ
	 8JIl4l2e4Kn92uqRusFACyhKU87NmNVyyzQg2kOCnB3G0M0YPnPGGuUceCazTxEJ6G
	 mjPrGrVqeL3F6MGgzhV52RzRGJWXyOPDjJKz7OQAo2uNAUMulUEG/RQ0cxmY4RICus
	 Q3/W/o7+XT2RTjphRCbN53I0DwKNH6ME6zxWPuyPQtlHZHi/ApK5N6h54JjcRh5pqT
	 b4oy2sc0IOS1+uQZexswqOedAXPdHYQQJS0Z1exHxM/Wf0MXp52ECH0zfdPuzBUgDq
	 QnZljQkQS//Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFCC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895739357.27397.14593865095761885220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4070fecb90f8cb452eb61e699e3dee53e56910bf8d4bf2bb8acbb25f3076c49e
Date: Tue, 03 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748957393
