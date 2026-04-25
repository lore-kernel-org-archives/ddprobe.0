Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2904A1D63F0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777088854; cv=none; b=KlUhUD1peFRawNy38Te9mGjI8emwFLjI8vVsXYbWapGBxOct0BAh6AhtzqvuD3/vrXlFmqcq2ZSt3yxiRZbxiyte1GGDYdaUAv7vWkqzykVrWh5UpMzvA4IDFKhe25nZv3l+7F0Y5IrXP+PAQax65ZWQxMQKcrVWWT9dHyr3Cl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777088854; c=relaxed/simple;
	bh=VM2DUq8ritEQ4EVnBv0d0jUbgA8seF8sS14KvO+Vg8Y=;
	h=To:Subject:From:Message-Id:Date; b=rCTYTCb6/CDv+nWU9jqE2TjawtgXSTsxxJDZitYDuy25nQSCNb+w0obB5FYWRVQva2RllY1FEN5sfLU/aQRhZyml6epzPu2xDD7fMO33uUbHMAOS/P+GeR4z9xJmFNQUWCEplUW4GdNuDoQHoLeqJAEe3wiYVUjbG3sKy8+uW4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoCWr+oE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoCWr+oE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BEDC2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777088853;
	bh=VM2DUq8ritEQ4EVnBv0d0jUbgA8seF8sS14KvO+Vg8Y=;
	h=To:Subject:From:Date:From;
	b=QoCWr+oE7ADBPHKQGS+AlPHy/abFTX7afChvQLdcKSnPb61ocjvlQwFZXjjemns85
	 5xMjg9+XrXLMLsgEttt5m7C+XrR40Q3CNyVNHojIbuOeW4/l5vJ4AcQbcew2c0Ih11
	 SsHSMGoqCaqsIGQlBSkJlT8I81fgtyLq05BiF4MyPs2APXI2TA+qHD4lEAwoJ70+03
	 S1vxA8QTsg6DhKmk7b2mfSoDplUFu9YR6yeYJE0X+lTmrGHlVpiZJqyTO5x3BMkZej
	 KnGlDh09U6keVlmaJ0IOxJrpSkyGhrBHuHeqaUS4SyIFhbKA75WLWaw7CDh8tlryIl
	 V3SUJO/MdiW4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1F6FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 03:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177708885368.24278.14233157185607536513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17fd4f30430fc88de2533670b06136f4a4486d9e3255413c11597568284be4aa
Date: Sat, 25 Apr 2026 03:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777088853
