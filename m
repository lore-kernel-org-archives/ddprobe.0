Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1134813C827
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730734554; cv=none; b=UIxbBX1n21xlfgQy5B/gvjmUGwiT7YZTZeOrd3BYnhif/8QSOTyCZG/EaK5kwQ8O8U6jgrimtthQotO/4S/7gTg5Q+YA//xDeq8s8AKONPLVAjAhjpQHe/u6+UaYA+mZNhmOrniHy5ljPfgcELz1RWQ5/+YZLes6JfxPW3l6gw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730734554; c=relaxed/simple;
	bh=YuKY9QO75CHBbZzESVGdIPwdDNDlNluClfrznQhzp9g=;
	h=To:Subject:From:Message-Id:Date; b=IpJp4hHzjrep8NSkTz8JY59OgGGrksrB4jhaJMCTNQ/6CpMYKnHyOuaQa3Y7hHGBzDTsraxSKhOvq4nDR4uqTQIGfEe+zjSEXCGOf7IoXSHFJLoh91Hi7DEMstdWKrVkpiq9P8sp4oq7wvCeTl5MWcTV7K6463RybweKVoGontg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W47d1ZSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W47d1ZSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8740C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730734553;
	bh=YuKY9QO75CHBbZzESVGdIPwdDNDlNluClfrznQhzp9g=;
	h=To:Subject:From:Date:From;
	b=W47d1ZSU+jJ+HmwLc7j1s93o0dM5p8N7uDcHbp4OfAYj2kVWH8GByP8MZnebFI6Uz
	 V9EBdSxDcPczJHT+BGYv2lbL62ZGA13uJvfvvCVn+d09deDDjzjMg89wol/ACwatc6
	 JXpC4o8+ZqVGwp8kX44k/Mu4s/zKJppJ5aQbpyFt2fu/mnAivZZDaNDdjdybvAkJCw
	 7cGZguKddHcSDmpIE4AwT1dtfcQRZdt13IEulP4mkHQiDcZrzimPgIBrq4gneI8Xd/
	 Tbk0kFH0rYcDRX/zBDtvyV8KY0J3WC3rWxxbzP4NAqxvTYtfR351MPegryRgNxp6V3
	 h2CqE5cvMXA+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CF2D132DE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173073455361.12691.5698728482107156696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e38f48481fc8c5214533d8b501a690cdf1a396b003818fdc6c1dbeb3a92a518
Date: Mon, 04 Nov 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730734553
