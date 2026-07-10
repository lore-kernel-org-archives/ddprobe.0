Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28FDDEEC0
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783702714; cv=none; b=qIpEWtMf9TUJavkyStf5tVW0QDHiORCa2YFk9FXPRjShbYzzW2bEvCd3I74sxZ9dqDeBZZr3z7TW03CEdXPrb7DSr+XqftP/zaepEAnGyBtgzZhCZet7RLzW29p+5zkxh7Mz2GfSiCeZ+DMrL/8MvsW6EI5ISYlR9DhCx+K7i+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783702714; c=relaxed/simple;
	bh=eICt8yzTKiBh3uis4EumpTu3wANkZ/+a1FdYc+tQoEk=;
	h=To:Subject:From:Message-Id:Date; b=oRCIG1DH+8mGbpjUYCZX1wFv+l2uHaFbQDC1SvZYawkAXt0PSE1wvrkpnJHaqNWjBkZmCnel6RbC0DsM+xQbmATT+SRh4P5jFkcyT2CZ5L22eHLTT5X353X06VAgveeZEKNgFHYYF/fyx4PmnWW5SrnrQ4P/M8nl4ZgNZvbZMBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/dhmeIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/dhmeIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9F7C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783702713;
	bh=eICt8yzTKiBh3uis4EumpTu3wANkZ/+a1FdYc+tQoEk=;
	h=To:Subject:From:Date:From;
	b=e/dhmeIW4gfhjCp1jPkWzVM/ejLu1EICnO6oaHZ4TXB0CDtY4zrDKroBd94mX4kcO
	 /2yhazlCUiueYQRLWEqffAmcCkcS5oVd1rFwDvzc3hjI5G5KKh/IDlMMK6X5kWB/KG
	 Txh0vSFeJy4RE8Sot8gAa4sL2qCit/HY9kwUN4NpzQIF0PFlsne57JPJSVcMrxIVmi
	 lLnjLkBdqhllLb3Uv5S9WBL2WHqXJXIQUKYpB21iV8OoOjXALCW54WrSzhl0bI2fxB
	 KdLJPBKBunAxSd5GNOTviasuGJri6AHpeZFrL3LQTOjlGPTt+i8kh6Q+a7RvSte3jC
	 RvcGRvCfkCh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD4DC44501
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370271368.18867.17427636003852790369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9828b998eb962d48887bb7bfe3bd03e5e4c72c2c900479cfcf0621245d39cdf3
Date: Fri, 10 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783702713
