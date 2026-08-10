Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2637B3FA5F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786385434; cv=none; b=d8qrnmObPZcEyR1zhGvH4OIzL6Y/ehtCavS88FoYXaXF3nszNGHYbsncXoU0EMRilZD1yg1majFUV1woLnld2u4qToxJkR5vXOV6LFQUiRZcxSGqCCtbX/+oMbK8UN6hkK8OBtyhfe9pdoTPxezrgpq3+fh9R0zNw19t+/MVGDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786385434; c=relaxed/simple;
	bh=4TN3Ly7rYC7jQw83LEf7MabX+1/aT6PTOyDnu4CcvBI=;
	h=To:Subject:From:Message-Id:Date; b=KXFb0DTHLDqkxKEvpkvbrrphPNWPWgfJBdeq3H0E3WpyW9kJggC8ymjULBlp7wgAKm5EYhFQdlWHgkmWEudDmHArvw1iIFUPiFumiP/v7wi7G7F/aht7xbfu3bg0UkZER+dBQpHkR81meZjXx5OWO8fVbX9rPGiOG34Jq2GHjxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMy13Z/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMy13Z/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB72C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786385433;
	bh=4TN3Ly7rYC7jQw83LEf7MabX+1/aT6PTOyDnu4CcvBI=;
	h=To:Subject:From:Date:From;
	b=tMy13Z/+WoKT4Sg2gyvO+21tAr5lUt0nUp8ofdv+YqRtaBa5xvB95CA3OlcTalg+v
	 upB//lvAzturJbcPrHXJd8n8mnrxakeDgoL40JdA8vYDTFgwsk3sM0Pyzm41hBSzCN
	 6YnboTKmfuN/jt2MDmUFi4OQ596k4F5DusWuoRxOM1Ua/Tl5xi5x8T4CjtvrZdc8oH
	 t/9xJyCNhgsRmt4VrjIoUktIp8+536PAzP5Xsp9vDqAqEjfphAtkLDSjHQjkbTts50
	 oSAfetUqAVdqYnJe/EdsR06WBE29WjOc7lJJXJFglxnoJmQWcxwKkGrTX3PbJ2pj5R
	 07ChYFkfHD67Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12A0C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638543371.16109.5961196874018293102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2959edf4263ee549719cae4f57032982aa7c0ed84beb37897d91e82f394de26
Date: Mon, 10 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786385433
