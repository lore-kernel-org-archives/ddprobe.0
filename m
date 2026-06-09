Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111F1368287
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781046334; cv=none; b=CGCBCyC6/bBMSR+R6apCJ3604eMuDf/zHFLeQptQokcVwZ+BOq1HLpIDLNIsOmFN4/XESl6yAkCM2bx9rI2lYerycgEDDbTyJcQS5SOQz4zXPuHwayyLSDy7DjisfdEn12srpVfKeOQSVauW57LYf7MXxjG1GdrR9P3FlcjJh7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781046334; c=relaxed/simple;
	bh=de6JBcpGbejHfzZ8zpHdhTYjlNyoDqm22+yAlpWaDrs=;
	h=To:Subject:From:Message-Id:Date; b=VsPSvM1CcWbSDe4pvbg8e/Cy3oY/oGuRq93kEZFhXz0AF4sqhMOvW8WRcPn7eSaqmR6IpQc0EqDiQmN6zHMGkiwRXP80c1we9dP4Ti4ZgF9LpdbrHF6nLvWpBljJ5rDfdS/4a5gEc7TZ42QuvLow2JofxssCvcouykaneYeMWWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRBgD+A/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRBgD+A/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB38AC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781046333;
	bh=de6JBcpGbejHfzZ8zpHdhTYjlNyoDqm22+yAlpWaDrs=;
	h=To:Subject:From:Date:From;
	b=cRBgD+A/0psTNCzQdo6dKw7GoXWkcwKVWwgV7+XkzNcgSVCwgnnsqNg2bmsMYyxMX
	 va4F2bNk1a6z3RLG9RX40czclX7TSzkdACbJ3R4/T6Oj+GZOGZgyz1S1obJhVTB9Ae
	 IcYeoA28s0LXLqgxI1W0cK9E5ELGXsW1M4BDBHiimxAdVMT6AV9KAioTKYd2WEW1IP
	 uAeNOvbrL/+MFmogVBPxL4luy/8JvLvLxEUJQNSDmcmnJAcf8CwlwEgGq0MP39A8NU
	 RhaMDF6JRp7b0+fjyEMY/1GnOCgSj1mplcs8HBfUSOEmPVlFKj0uBysRkRha4r4kdG
	 N0C/7DAp+uUAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE652CD98C6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178104633370.4325.11680077595365309260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f883b3cb6fe802888054c0e944f92e54eb69dd11464d7cc89ff0517c431c4777
Date: Tue, 09 Jun 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781046333
