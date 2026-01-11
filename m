Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A012459DD
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768119833; cv=none; b=tinTQUaBMV2nNLYyaCoYIkcu1NC7GOsxyqrp4qa//4ZdoOMn06axKXf3NZwVl0UOFTmxVuDwSS8xFS7uK6y59bxzfQEc5frIsAaX6t8NYgCe2SCfPoQcf9LdQeVCwuJmWbst6AySlkAbS7hWRLa+mrivROV8y4iS1ALlGUB6W8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768119833; c=relaxed/simple;
	bh=jvgBiJ7hBdFj8i1UDWb0h3fORwPhonM+vL3f16/L4xk=;
	h=To:Subject:From:Message-Id:Date; b=KUtqFQ8OdktKrbh43Q5mjdlCGsDLcg9taAvFb6lcA5HnkU0EYUINQUNAFWQVmSgwlnvddLrwbPshSwjDLNVUMclOrkXpV1FJKGJ++7h55KXmTcJeOKmmOBV297TiM3iGINRmvoCIB13ktyuNgVegtiXsEYwbZiSMt1Jy5APMjpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N330HxsH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N330HxsH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD339C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768119833;
	bh=jvgBiJ7hBdFj8i1UDWb0h3fORwPhonM+vL3f16/L4xk=;
	h=To:Subject:From:Date:From;
	b=N330HxsHxjuchl+WmO4yRJmlvWSIqiQc1tJJ33I8qmRf2r5GND0N7ARPEgJCKIopt
	 NZLBsA4iRFyOvwV5rpEfjnmNutEkRSm8SXlrrjFWCy8qer/VVJvw/28knM68RTboJS
	 83QpP2o72YxMyJRP4EkW34JU1vn51Xi8sd56qqcqmIGqEmUQprPKAhWvAZ+cW1xSAS
	 TTXmivs9XuhTbeQqyxjELemhklU5smkOmb7aDzLGBZD5cioe+cgvXB1mnf0LCXAsQQ
	 b3BJJRc97iqFi29dXIeQyRkT8IZV0rM1whoYzgSKtdcwFhOMknmEFlLVyhYvbvy8pB
	 fsKlpC4UQZ2mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A5FD2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811983359.25215.9780390693741681999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddcd998df8e9898106dbc288a88d15c4e33f37cd5332c0d25dddb76a3362e8c
Date: Sun, 11 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768119833
