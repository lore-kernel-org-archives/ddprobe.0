Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D4553373
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722083153; cv=none; b=qTffWhNuryvFHAgmk6TlwaphiZxMBp8cxH5e5vAdNcvBqba6Lh2nCpOSV++ub1yICWSX+W0U1cbTr8+Z25k9+xK3ftwd2YLDAYRFXfkFg/cxghyG28gu4AZ3fUdOCR4Lc8OnBtVSLmT8BFVvQvNkxzuph8BP2zecvkztaKjF8ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722083153; c=relaxed/simple;
	bh=lyfUYY3A8UxfEODe0TwHfbSsXdww2ePGEVJa7lvTIe4=;
	h=To:Subject:From:Message-Id:Date; b=JDq/ZZvDLkLESDWnGfMIJgM2J9TvO9VfQ/eGOMA31DKQkzoPZkZUGLr9bRKo6w9um0zIMptZw4OX3iUEdUUWaEaWb2vm74H0yVuSyg2gq6vDi9eT3LFd2jITfTSE0eto8mXsUjrnNQu0cxNZX1zaWHEp8kYfcKnPU/+/T+VXpTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv/ibfjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv/ibfjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD4C0C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722083153;
	bh=lyfUYY3A8UxfEODe0TwHfbSsXdww2ePGEVJa7lvTIe4=;
	h=To:Subject:From:Date:From;
	b=Zv/ibfjORXLqTfW/6J58naKfUyQvoP/Cjdk4iBX63ueJW/8h6fnr7cflhb5ArMwIa
	 +AQIO1Gn37rT2kBEZ1HLQeb2VhMvxqYJuzWt0pljCYQYCHHwIUDDNiDXlBkrZelJFm
	 KwwKk5K4akBjQNmtinWPnRDzsMJ2O5cqrzFBqc3pqtIBu6tlo5fu+3Mg081R/RtLHD
	 CxfAaejTKQ25znY+pQSrvwSUSankmxT+kGdQ4Nc9GKmH8BgU+OZpPD4DXFUp3zRmuc
	 GW8DVBoEQmSIr+Ng2SLL0CE9ZloEbx9NIj3sQRv0Il84TLjYcKW/Y478ESdYOSNvWY
	 6oFtY7ayjD2BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993B0C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172208315359.5761.4911617749466904557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7583dddf51f92fee9b91278aba4f648f026d5c0cc1dadb99ccf3c7b6371f46bf
Date: Sat, 27 Jul 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722083153
