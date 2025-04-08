Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A02B20E332
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744091995; cv=none; b=HHdDaH0fNda6v363MezmoIUndyS1PYBHFA68I9++8xu2Hf/VDJOj1G5QSPHuTj1COwLvT/lHgDwdOI3jdGbgIhp+qykZIEK4TRyTpSh2WCKrxYOSfBAFQkhMfuNAyaEtpox0cBNOs8H0IKe6vJR8FuBof/pu9jUO6IKexliQZLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744091995; c=relaxed/simple;
	bh=XbQG3onsvOz0VdUpaZln72M5kJhEpsqVJA8XJzBU1Ms=;
	h=To:Subject:From:Message-Id:Date; b=E3Ar1+8doXfLRX0PT2PzVVA1NScTpMQuLdzKSje0gBo3SJr/hZOIMjmLYTVRVZp9nmX6Kc71d++ZISA2GaQXi/BCtqRDEeOTt84ocuqb9ydvg7U2CtBzJbaix0bkq2vSM9qdwJ8abHQHH/fRF64hau/xuYU60oOsB/oTldEorvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdnEdEFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdnEdEFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF8C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744091993;
	bh=XbQG3onsvOz0VdUpaZln72M5kJhEpsqVJA8XJzBU1Ms=;
	h=To:Subject:From:Date:From;
	b=KdnEdEFrXIRTG3OdtfFM99kRxAzvsqXJSQUEHOJOBi2bVB58xCe53za7r18/xl2V5
	 9qMsNgz4AqwUyV0GBQ/bikdMOnBRcE3D4zf/wPJ81lhBS/p49VUuhdTxS03MptNzQw
	 FB5I+YRtzBz2U5iI8AOECPaZ5Na0AKMHbdouSFlA6no+id8jTQzRGILucWUeT9hbpI
	 y3VgG99zMPqK4B3M8OL8JaBmXGhVSvDbq1mQAbARCcPTER+KoLYmxXqd+bcXOz9Px1
	 v2W4tX4aE/NLhBTMlkm/UsoXKt4g8s+lGkLBz/KGzvVei7dmfxUvWuK0uG/ChjGpaL
	 bVyse8oCqhjIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B0DC3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409199359.5651.11317754275717113852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505ac7371b2c4d55e80292489a86a81b6cecd01d9b293206e67c667e9e1913ed
Date: Tue, 08 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744091993
