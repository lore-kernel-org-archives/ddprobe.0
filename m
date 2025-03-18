Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62CBF4A1A
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742266195; cv=none; b=t7lv9o/sNdosN+35t9i+DjZ4qOk3Yb3oPJfXjvY41rSdvwNND6bkfTKKt19+rFvbt3U9IMvwxLe3OVBQ5o88Zzsij/T5wL/5TfmKyoxOnRTKaZnIAsqzgg+AkFoyCSo6Pjnt2mym8aGAPwCwv0WiwpA8g+EqDPZS9aHXQmx5CGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742266195; c=relaxed/simple;
	bh=d4z4cpivUqG+1EMV+koRbeqf8QZWMXBVePdnWwEQNTw=;
	h=To:Subject:From:Message-Id:Date; b=s2/NE7Z5kF1c+lct3GAIIEoaf3LcUn2fLHfFp6xRGjxRokIzzXDSQT8DgspcoJLdRwagcD2lQok/2oNKKunPuxRzuB+j+g4d8XfURtfKfCX6Ai1xhTSndMPaYOmsE/SQC6KZZLoydbeZYWK5Frn3wk9Dz9n/ugYDzyg5QSmaXNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XB3fotzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XB3fotzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3161C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742266193;
	bh=d4z4cpivUqG+1EMV+koRbeqf8QZWMXBVePdnWwEQNTw=;
	h=To:Subject:From:Date:From;
	b=XB3fotzngr274JE50XgUulPmTfH2SKkGYOdcMHxl35r2rcbELHVH0+PiB2rfbfdLY
	 0Y8Z4DtPiD9blag9QTNego+8mIAmfkwylu8cxPS5U7Ax3YSnTjt+vyOagFMIoqA1eS
	 D8IZ1ProTj/o9FS/nossBAhm5BtRjlu1QC5MBqtNMCRY60pkZAtYAncfgkwNyPLv0E
	 ayClHDYHB6cxLkBemzmAcyl3f3WjPaTVvDZ6BZwax+0nOAj/pN8i4GHxz660sQMK3G
	 na0z4MLcv2cGHDPEKfQqWComCkPj3GY6KY5sVBPUqnYidRz4oWg4/8a/dAlR6vOx5+
	 jxJ+8XPbTJHzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0716C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174226619364.19869.1171120809081650554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26085d3b138e20f841b755f3d1d3f824fbfccbb0f4f17a3be72af4107e90718
Date: Tue, 18 Mar 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742266193
