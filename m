Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147BD3207
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766524434; cv=none; b=X8nTFWW1Wsdnt9mJE051FKysCajdEbdpwtj+/POlvWVZSUKwjL+Mt0R8gXX4Ivit4Dy8zRjA19wUb4s8eCLa8jBxfRDIXzDsLbOt+7Ka0Z2w8xzU9d+R9s2KLrBnTmzNPxJR1KbaW2zASbj20bHVltQEr+M9lM7vDhdr/6eFzQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766524434; c=relaxed/simple;
	bh=djtF/uQuY/wJ0SoDaQXM7O7CkbYsplSJpUZG28Ljr8Q=;
	h=To:Subject:From:Message-Id:Date; b=dQvCUP5SteUHo8ZAudG87vP+mLbjXSaU0lJWphvPedtQVDn42ocKR7LPzv4RoXB8Si+LOo4+dmvfARv62n1S/jsgqjhyhs4MXdj3VzpLaczHh43l4xdvu+tB2CXamMwuS45DgLuHIa0EriO5X1zAHAXStyiSVw4rwqjdI4FgFB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/arU1H6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/arU1H6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A100EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766524433;
	bh=djtF/uQuY/wJ0SoDaQXM7O7CkbYsplSJpUZG28Ljr8Q=;
	h=To:Subject:From:Date:From;
	b=P/arU1H6yYTdr99U1E/SUXTwj5bM967rSGIe2NRpaECKOB81ekWm1hKzyFckR0hAQ
	 ZuNJwGqa/bQN3sAeltX0Kmtm/L6DbSOFfylkWeYVJdbR+hGHshYNz/zVcD52vr5K9R
	 9Mfii1zXUBtvR2mtIGrCWigL/OnQyWRlQDzXQ9C2LJrh9nZWaGdiV98mVYvfQ/Edsn
	 4QuB8YuxGbsv4y81vjecJ2G2Ts6+8fOokTFxxCblxPoEhilL/piA6TJQxbIh2JIhc+
	 FSlIaotWycShnQDEaxT/PkdNkppJLfDU+LffemKeq2qRmAomzeVjNjT80KaPPhWHzA
	 w5wFQ2WW89h9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6FE6FE31
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652443358.5942.11866397971300299917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7489b19cb5807463d97fca454d3ffbbb0bb63fd8d051212addf3e6368b22fb8e
Date: Tue, 23 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766524433
