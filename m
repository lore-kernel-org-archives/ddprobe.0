Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88CE91EEA54
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785055234; cv=none; b=EISOqmB8vQfQttwQqtJxyEDJVwrGhMdVn7zpNRZJ2RfNlRJ0Tt75wy/LwMXsvzK3h+MZFfB8kyc0jv1JM1xNVw8cEwXIcT8HOpu4YKUhm9RHrQZE6l0Upy6Ss7DLqvORTTr1ZbMjaEcaKN8pN74qTTE/SkzfTMUG3PX58+6tNjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785055234; c=relaxed/simple;
	bh=LDWLjwARrPyFr/KhU5ddSW9lVrajVfOzSG29bdwhKR8=;
	h=To:Subject:From:Message-Id:Date; b=u6jIrj0CH8UCE2gcOIVP7d7p/qQIZJ5QFZtZurmAaPjxD1D5s6X24UbF5C0ESs5fcaYDXePOd2WCI6JBdcmyYgdzqsyKNx+vgf82WoEzM+dRnuJgEFzlLnFx0UOL0QwR88vhzbNJ8u4VUnFcVwiN4/QV623n2NonmeW/LmdftNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDD/pqq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDD/pqq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB198C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785055233;
	bh=LDWLjwARrPyFr/KhU5ddSW9lVrajVfOzSG29bdwhKR8=;
	h=To:Subject:From:Date:From;
	b=ZDD/pqq1UaSRtNG/AGelU1qLtlvfio4UYSnAWQjPWPb7GHdHcmv8eoisxe0Z70Ts9
	 uMyCOyC4dSw9F6Rxx1vl+X4UW31f2MIuLtkdEnTwF43af55zfoa3PGwVGJMXjE3zNJ
	 dt+6YJ6uZVUcDIVeUNsU/xAb5zVnEhQ8BNBtzEgZKdSiNCJCyUArOaBgmT+wQznpWK
	 3JDAcZjB2ef3cxudeGS4sWt97JNQ/Il3byA6YWjze+Fmx4q9f9kIuVsQ5E9o0u2ML8
	 jGxPUFk3kjn1feQoDbByptAfc3WBAcLPVyF7aGXlKxc2Mf9IRwPciTjUdsQrl8rYJ2
	 U1OHd2XDn5qow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B71C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505523368.28898.1902921090363646244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a38922e4a29685f1c251e1dcae1d562931e1eee0eeb8eece41032df9c73ccc
Date: Sun, 26 Jul 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785055233
