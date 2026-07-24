Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7B71624D5
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784874034; cv=none; b=p7y0g0rPgwHrvEWbS0/hC6ntl6myPLWTOEw1ifHhmIgnO8r5vwqJjNkBfyKLaLrF37e5VZyTkR7/SQFhtHo5wZXLyDM1gwVUsKrOkEIMNS/m6PB1hl0DbfMV3Mq8seq9DTR8vSRUe0W/7xrbF8Z7Ng6OgAmo53ShaC6HeX7iLmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784874034; c=relaxed/simple;
	bh=+dlmoVwV1LU67/Jyd3TFVFws/w9g1MMLlkZ54AFwKN4=;
	h=To:Subject:From:Message-Id:Date; b=d/6D7qwCMUN92IDLSjMIknXqnjB4oqIBv5/F5EzX0HBTcyHrXCxDwNXnm3nloCvlpbShF1yHW7CfTw90G0uUnRS2fP76vneaI/IasqkNrhOWedt5zIXXcvKEwBsxV5WyTJPO8F8BTfM4CjEsFDIZKorr93QxNkLU8ZoV/s4QXW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLeiB3MO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLeiB3MO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD25AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784874033;
	bh=+dlmoVwV1LU67/Jyd3TFVFws/w9g1MMLlkZ54AFwKN4=;
	h=To:Subject:From:Date:From;
	b=nLeiB3MOPEcwWKP2ELgNXwFhGSUD5pK1APZtswEjZFt5jES6sB/jzebL2BYNkcZsh
	 pSyqoo1h/kIS4vECoRjyR+EM+6nbvU3QtWV0JUgcIwYUHjpjlESrG0kcV0lSOZz/va
	 kBIiW6fhrrsPLuq0jDvrZaqJoslomjAR2R1+Q6lzg4vQfGCSHQrqme3ugW3rLXV/xT
	 0DyJYm7hcbi69eQAAkuqdU532l6hV7sVHaMgb8Okr1HhaAnhCGR0XJCm1lWJV2aRrG
	 8FctKynNdDmdgcUMuzDxPFf2yFdGcIPqBzDsbnh786O7mMFUzX7nzJl77KFYMB/uGS
	 jzoB244Hz2DNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A93C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487403368.18829.4443283854973877584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8364face16f3295522987aed9057889a80cd683b6439db6a3c6c8716f2e1ed13
Date: Fri, 24 Jul 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784874033
