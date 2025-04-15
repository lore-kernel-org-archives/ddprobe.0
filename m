Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBE22D86B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744758596; cv=none; b=CuwDqWJf1AWGj/ST11U1BXy2GjPKClO2OCdhVrfq0JUVe0Mja9sugDg9wYwLLkdtyZ8d00ksT04Ak2SqJpbhYfKOe4u8FnFz4E/SW13hyTBZXAaYqTx6xMhJwAEzSMkx3veVXd+Iu/mO55e3BchmyKMPkVuAbZbLuO1YIRop+Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744758596; c=relaxed/simple;
	bh=NwOj5O/OLWyE4YPNyjjytmJugbJnXm5ozeJu65zjWIM=;
	h=To:Subject:From:Message-Id:Date; b=hxouVeDhfPTUi0oEQ8wYUD5pGy0NsRW5joagZvIswA79mdlIfFnTXJA/ztKEG51a99SVFRLpgns8MqtywZPnjdEjUY1rC7+UCnIkNxUMW5iYMvqULQQ0fS5kgmbJu7LmD7Mlh2RXqIMhhydNDUdOK2G8UP/kIDeUdt2NdSbAiRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isNSiJ9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isNSiJ9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E96C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744758593;
	bh=NwOj5O/OLWyE4YPNyjjytmJugbJnXm5ozeJu65zjWIM=;
	h=To:Subject:From:Date:From;
	b=isNSiJ9ochnl8wDXmwIyk8vC2M13x1fhD8gD+CvzM6lJyH0zY6zU+m28jlpBumLBV
	 3bG3glePdJAlz1rP/3sAcLt772O95YyT4wf92hF3o8YD1tajHpjivoLDHEkTUMI5FB
	 s7NQgRz9VlEkoJUjdSGxonAwQNVFi+Y5FcZzwpIfppQUhtRp/rQkicndcLtn+1BXwy
	 ilRPAQpKuJdoneGtR41bwBUQo5VahxqYWmx925xAlTXVzuWTf9LGVvqQ+LrSK0D18H
	 l8CAzFaqfAxFUyWCvd3EDb9sJrjPtBWLAnL76+8NA0HgOMalUlz3iw1tvp1qAARhI5
	 wzaaaz8n3/Ptg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28FCC369B9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475859365.2424.14032150995694800355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a241d51c155ca8e3819b4d2ec38628304bff7838d4a5a37269f36f760fc4f9
Date: Tue, 15 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744758593
