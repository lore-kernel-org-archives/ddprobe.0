Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC24207A0B
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757348994; cv=none; b=T9NUpCmR7GS1mSMr72ncAJB7xGKTCYgXKs9k6dYOXULlUKEmnfLJTAii0dvYLzYDleNbAm4iJqhCjh30WTGkE0hA7na+ukXtubFgno9Rd47jB4QG1M7Woha+B8i+Rpdm1myD8AmP+BSsJR/i7vSUkZPsU8iR2wngySNY10jMkG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757348994; c=relaxed/simple;
	bh=PLowj40zEqKPzamks/1CNlfdG2/KBE7DxWn6meyQW/g=;
	h=To:Subject:From:Message-Id:Date; b=FwS/+WkjN36vL4IjC6hn7h4E2xbjV8miDpJWHJZkn8P9jhfmAnRymlxYz152Gh9aC2iKdreDBCcND6nLUGAy3y5OUoa6Q//gwvO3dI4RkfPfrD1ukN/9J87NVo8T1BdCIpkyd3ap4u4jMjU+5iad2rdfdvBGmqZbDUfovUUwqac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgENzNCe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgENzNCe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2455C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757348993;
	bh=PLowj40zEqKPzamks/1CNlfdG2/KBE7DxWn6meyQW/g=;
	h=To:Subject:From:Date:From;
	b=UgENzNCeKNDposO37lxzpxo8mK8Peov4exGWWmG0kATumPTMTNxnG5dEFA4SzIw5a
	 /mD+WLjQoJr+9H2YuPzbYznL8fcqr0upcoawo+aro8gFuHSOMPUE+oCpFMSG3iwQEV
	 9yj8bupu5TieQbLi1y7jgxuejGbZsIcJiUPzSun4RTyrddNF42jREc3dgfmcsdYQix
	 Y2zrke2Q20AzB3gqM2SmAT93bcKLImvvEVMqk00GYAr0a6dmcbCaUki8S4jAP5P2LT
	 ULC2HtAcw9TAivYCRgPcWOTeQfk+Ch/rTaNC7v/IwvK0aIzIdMfPLoSk7O1rGULuzV
	 gL2evgO+EC+SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC17CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734899357.17334.5816162325167785980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b8641add8fc8fd91f3a2085fa37121bdce1075c93fe18e6ddd6e4e42f8ca1d
Date: Mon, 08 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757348993
