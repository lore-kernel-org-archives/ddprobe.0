Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357AF2AE6A
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742510394; cv=none; b=Sv1tL+BBtSL+MxerDB74QhvMto97EEw7Tz4huWoUsYqN2oCZ1ifVfPyLRaBZwcZcyPN1TkZ7AB+v2OVJnW3miNuywLaXT2kILsc8KeytxUK/jrf0EdrOaRDJvu5RhPG7eRFQJMEAjA/47ulFzQiWgvfXlf27tYorAo6gdqdWv+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742510394; c=relaxed/simple;
	bh=xEAEbuUAho3qbiBt7SDRN/1a6SytBksdojomVcpYAuQ=;
	h=To:Subject:From:Message-Id:Date; b=LPHD4lIr31DEZUVkhZrIr1Q1mnP3nzyI0IMSJFuspRrMfTK1ssoKGgqKeTt+g5QRLIGcCi4I9kJdMzaS3/kXexMZZ7KXF0NBXVGg4Yk20e8CvkUZ38eoeznS0jHqRQI3is7tPsBfcT1dkhoiXt1TKiiADmqjNPy0ExW90F60vvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAEBMCoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAEBMCoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A2EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742510393;
	bh=xEAEbuUAho3qbiBt7SDRN/1a6SytBksdojomVcpYAuQ=;
	h=To:Subject:From:Date:From;
	b=tAEBMCoOR0neQyivHdr4MCgHNZnZ94RWc7hUCOKrTRzj5jptF08AmBHt86jjkktlV
	 Nkv9InCMSwlKl2ij1HMMTq98prpTRSyXa8pEugh+H8mfcdqHQavIIGdMigdtuEvME9
	 51OqI5Kfu/NGg2ImN+q1lSaHSsK2Sc4MgV+Nk4p0jRfzb5P2Fw067idRWZ2Z5KwD0m
	 99VVl5VlBD+oM9xQENfi3TjreyGC2pXOMxGs5RIykvioku8G62+jO5DDjbjCYkvjsN
	 a1xnX9JSkhQzN3y9eOjwuBnMNf+WmZs1ygFMZanQOsZXXfzzTmr1l+yep+hWKj//o5
	 zsrl8St207lHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF3C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251039359.1215.568914095305688030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a9f2ad44210e0aa2dd68dfcc7b60b905d05ccc4384eeeaa20be00b74706721
Date: Thu, 20 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742510393
