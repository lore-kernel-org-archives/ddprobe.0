Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CDB1DE8B4
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745989195; cv=none; b=hthavYwuut8lHJFaM/8pZa+kOmehhbZ4JOPswckqqIqbJrA0nsXkKiXKM53PbmdhqnnkJ0pFgyCOe6oGlLwDFIuvE7jPBoMrCiaA4u9HbKfjwSSY1RG8NUxsIaYrgF1sKWxtYge2ZtLh9W8YhGBmIXhn9Km0pyxMg+4WItpuGfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745989195; c=relaxed/simple;
	bh=KaxdgZCHicPMindiJ8tMNa+DxjW0AhzmeC+f8hUywEM=;
	h=To:Subject:From:Message-Id:Date; b=Ved32blb72i5jzMkHFCgw741F2O6kHRWypiMvPE1N3wvmn6qMj6Cb6sJh8okKoxtlneduLHSR1m2wh7oOYnW4Tj30YnS9fXT97ssnceRnURRCKXEh1wRmsXF0SDUkzXN2E7wS289GwhhFZdv0mvtyOPjYHXaA0rvxEz4rIvk7C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDZWU63y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDZWU63y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF6FC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745989193;
	bh=KaxdgZCHicPMindiJ8tMNa+DxjW0AhzmeC+f8hUywEM=;
	h=To:Subject:From:Date:From;
	b=oDZWU63yRipDtVYn/Mo1WEPgtBzLeiVA8T+vINPuX8cZ7JT0LZ0Quzm8gmNiX5sOw
	 G5xgdwxco9Z1AvjQAMa5pYSUP1cbzTSS1e7dtLGVn56Q9GOH3Ae0ktmbQH2HWLq43a
	 oK6m58AcQZAwIsMmNlX9fukk0YdCqoZ1PtVfKBS8LRj93PIMNCeL2wDPb3vnOQO5yk
	 wEnwrDCl5DUNFDvmxnWav6uN27pTQPD1NRQcKvNnVFdp5vRBl6flfiQCpQeKaY8mbi
	 X6T/jvjZyWl7cXRwy3hXcC02Cp9weeyP4MKoXNs/wi9XiTwBNRl/KePKPgjJ63DiXw
	 xW4BnfGOzrNwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DD4C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598919358.31828.11467855403640099661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a526498e19fdcf71787e398af5e88a3a05055bbd070ace4a8341c90f29d730
Date: Wed, 30 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745989193
