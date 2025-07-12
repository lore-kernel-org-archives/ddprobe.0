Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1461086348
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752322194; cv=none; b=iNKs3o1HA9JZdLeo3VC1m5GQ2OeFEysJ178Xcbxav9y8rdAiCtyiaHK1xO7jB8dR9yfamzPtoxwzSKE5ZVh7fgtSk5lNoyXBCcbWlZNTqp6FOGI8PtTVuzt2CPgER++iTEfFG4lEN8vqrOfwunapo4LHCAClIiubnI8u6rpK6Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752322194; c=relaxed/simple;
	bh=T2di0XSE10tNdZWMoslq/Fl1okwfzH9/NZ8BqBI7E1E=;
	h=To:Subject:From:Message-Id:Date; b=BHGuLb2VLTdxQM/CE1I0urSDahxEhwyunWalkyFN1nQiZ2WWfWuoL90yKoGIDTPT/cJuV2Es3gKZn3P/6BAki+1U5WabMGOG+eMsWf6X+GYIsfq1Ox8l43ugxYxw616O0k8WO7FDvc8GZ+es+IfaWbDdQooNbF+yHyc49Fu/NbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjAkTd4g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjAkTd4g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEB3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752322193;
	bh=T2di0XSE10tNdZWMoslq/Fl1okwfzH9/NZ8BqBI7E1E=;
	h=To:Subject:From:Date:From;
	b=WjAkTd4gVpJ3fIA42RhWiDLXhbXCOgHulslM3GqKGQDdWIQL0INUfNBO3QqpxfKT5
	 WPFzyFtMQWcew7Ll6L6z8+Wf/xVzdGHakZaM0wtVWgX2V4sufCMcZ21eGTgk0zIMUv
	 oHAnhjavOX5HwekTvFKR3ZSC/0E6OM213Nt7bRcWKjTOi4fDvimtl7oAhVLTwlrZn+
	 LCoEoBg0cVQUA1xzVh6WMh6yKWZN2CxhB4vUUIlA43OyYfzm5fQwSXjDlXMbYa6ZyE
	 vnZREruG6Uev89l5uPAVOCVRzuGNWn+qPBp9gtYu+S9PnM0aWFjkTCpuRmEejqtMd8
	 8nzNyC9bwNlRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91363C83F20
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232219357.18432.16345432731970184978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c23f90dfb7bdd5d9513908b6fd28621fedb721383a56d19b76b03ed6ee330d8
Date: Sat, 12 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752322193
