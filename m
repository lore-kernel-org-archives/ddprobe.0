Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD12382F01
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776712054; cv=none; b=Vn3OazNLyvq5T96d7wRqPr2o1feSRWCO0dLiXI7f71fhCwW92FDJ5bBT4bTS5UZ7HqW438K2sk9MFtNqXBJYxWCwQR6zORvcO/EusnWPmsO4xTpn/TE7v3y5OhY3eX9sk5bCQSmsyA79TtPU/pQmnKtw1NlAym4PnHvH9eoNxi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776712054; c=relaxed/simple;
	bh=156/eFfcQHOvPG7wEdBWZusR3n2AICYMoxTNvcPg8PA=;
	h=To:Subject:From:Message-Id:Date; b=PAajOdcCDahnDlIyTwaX1aDtqeJKye/hLiBgu2m0GoXTFpnRr4cm4oHfuy/jnVKQ0XctsmzWCxUNoIRJXn6GzjCblcA/lO90Svx8cqOMcZVRfFdq+XNTVtKy5TjMbKh1bwowm1TdWSVe603CY2TaCvpco9MJlzeFaSLQyPtf1wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ouk2GciA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ouk2GciA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7A9C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776712053;
	bh=156/eFfcQHOvPG7wEdBWZusR3n2AICYMoxTNvcPg8PA=;
	h=To:Subject:From:Date:From;
	b=Ouk2GciA/bjhPxCZhOylbORoyrqJNSk1rNiCKehTy3QJGFlqEmbrFtbf5rGjGx/Im
	 yChSC6CCxd1t9ryzDKbuwSQjCK+9nKumHCwwI/5AupRmD2yRma1l0pmZnNvG4IVHVw
	 Ln2URVL2cw5f5pmjwgdNEK3MDvYmx7I355Bm3Qhsvko+FxwwM6Yfnwm7a+kgXjmBHl
	 TQDQHoGWVE/6VpcHJ0j3dBfZGNAl0/3LFeAzhSJTxuiB1F5A3mLRR2idBx2QIjlqhq
	 weU6AqxmW/aqA2CVzXs3qcMQGQFTDH5mIurajGbJt5b38Yj4bbFxHXANJgzXzbU6VQ
	 tAiE241Va1OJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB0FF5A8AD
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671205368.18519.12810467821043833823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f7620adcce281e2f791241293ddee53b4d0c94444077fd1f7aa59ee6cde49e
Date: Mon, 20 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776712053
