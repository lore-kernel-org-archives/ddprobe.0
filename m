Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2F521FF29
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789284634; cv=none; b=VgyfGxnnLaHRZSzLOmqGtKJwl6zhohigtTIK4xVmoPIeHeZC7tSI9W+zg+/moGB3lTkTVsUW7WG5046ryBVWGmasI3gCI1ElplRdB40d/kG8e8c7PEtwmJ4WRr6iK4/4x4ilRZVBR28LTK9eOq8YLlhDpIkzbwIRFtFIlI7NcHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789284634; c=relaxed/simple;
	bh=add7qRPWKEL0s3VymQVB9MQCJJL4MqEGG807Juf2lp4=;
	h=To:Subject:From:Message-Id:Date; b=NXfBdJ/OCgYxybDgGh8o0lmBkglyTfEySTFqeUQB4Si3i1xwLyHlOh9xTHCgvztNLEjf4nkPmt0a/fwNNAae7g7rHi+ElB3NWJCbN4wXcJYcg2wPML/WJ5JvJDzAaKaI1s2bQeYeVzGJSKtAmHCNKGhrL854wOaZVlsUasFTuXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOSjPKEU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOSjPKEU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5C0CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789284633;
	bh=add7qRPWKEL0s3VymQVB9MQCJJL4MqEGG807Juf2lp4=;
	h=To:Subject:From:Date:From;
	b=gOSjPKEU93sEFJkfRv7ez8cmnnDEiIpxYXAyk1+Q1ldVaC86+rRa7RxXgsGdAO/2b
	 4dXXAKoEm3acygp1Yhs8a3CMiIEHGQ3Rlww8SAGBE7CllRH12j+ePkhfbzVQ4GQErY
	 D3Ld2GuU7ii3jomtGEZ6rSB5GNZLFBYbBokxdvHniwZHqylmzoQyCrxBoFrUqij+Oy
	 JZ4kmlHmiJMkjXpPPxVVYt8lzVl60NSGwI8EWp0O7A6zg7CQm/aiV6eruJHx/XRRhn
	 7G+ftgKHNjoOagRR6lYdMIFg5PHDuTYl7PACDk1KzAJwXJxDb2jLVMu9eq8fX6MS9e
	 XN525napbAk7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD7DC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928463369.12704.15798500646548730344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d054e65381fe56d1932a95f874dae437aedcab267c3088e82c15668a24e2023c
Date: Sun, 13 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789284633
