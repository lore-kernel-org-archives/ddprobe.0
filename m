Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6DC1DF759
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780194; cv=none; b=kwSf0sSOeMiowCyARoZXL3gdKfW7ihi8hPptCrFW0LjEUOv94pL7j7jvgxVHk2Rzl5JA5YhVHgzM91U1+Jb3AJw0cqJ2iBiuL05BSIYuKgJ1P87HsooQBGTmiJ6ukINuteODpZogRc90uJuqBWVR/XZS0to63NpDonXr2AsGuP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780194; c=relaxed/simple;
	bh=VJvhBMPGBBt4MvYUiydWWHns2UKX5UadAxF1giv8JnY=;
	h=To:Subject:From:Message-Id:Date; b=h+w3JC2B54rqAzmkOWEbWcVia69hAoz+JfOHqh+9ZplDMxDoxMCIJJAEitalGZX833Zxzl/FRlmHYcSmDc6Pp0BlOEQ+fYOYfQVtyOUIrVmqSnOm2xtVxysM3RTJP0opfi0dgYq+QgekfjLH3RdpJS/HFmeingF+k6VPB2/11BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2L+wIgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2L+wIgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEEEC4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762780193;
	bh=VJvhBMPGBBt4MvYUiydWWHns2UKX5UadAxF1giv8JnY=;
	h=To:Subject:From:Date:From;
	b=f2L+wIgJ7sBbVI5AaIicyEgX27vZLecmlXzSW3GO+29GLXRtFXxvOofvIf0apDsVR
	 ZRSE7ee1y5fKFGBfPaOEAOvcplpQ936hEOJJUbIG2AHq3mrgIoWAQAsZbHRDUcT6P0
	 gP/PqxVvOhK1NcEQL+4x4gWImS2wfh9KLUQSQwnywx85SNAHgOtU7q1a4zsLwNrz4V
	 ZqJB9s+SH2aZrCDXODtU8ZLhHEwdU7D9OS+p26Y9LVw79BGpXHwT721uPFa5OdnOMs
	 ugBz9WqiPZ+FNckEjU1xP5mnvyBs/nApOb/JRTWKbPXlg9Sh1B0zuOjFpOBNHZHrVq
	 UrR5viAOrRNqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDAACCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278019357.24187.6219246030347269669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d41f4cf5bc462fe5c2ce982c9c2ca47329524d7f661fd6e2429283fc548835e
Date: Mon, 10 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762780193
