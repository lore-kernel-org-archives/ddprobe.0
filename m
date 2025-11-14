Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126AD8634F
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763124594; cv=none; b=VtuzkpSjYnvLQiZqvlKa1XKg+6SE04GOJc/XM7bakAH51RRVrpJP0xQ6WAA8R6tF4iODSMtGwGKgPd6OzT754EG1kxwDSUCs1ugBuoURDveDjegSPlfROp4RzWSrsxZGObMuMKoV1w5tbvnaKW7o+E/EVGe8MuMB20sMBQ0IKTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763124594; c=relaxed/simple;
	bh=yrnfItraPox61+93B38agL/g8v8viC8W/XN4aGJzQ54=;
	h=To:Subject:From:Message-Id:Date; b=U1YXfS78H6TZt/PVRvW8Fnqr9NCA0lJOZ29i9CDzES0O+VZv+Wpd2a22gQSRrOEbBAga9Q1NhzjeDkBKs7Ik2lveGFlrGmULXynPymPTGEdxlwoL/OS6o7VZXH7GDopsWpTwX8Dn6JyAR8G0Gjd0nYRhlaczvvel5GocuSv50A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxZXsP/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxZXsP/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0C3C116D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763124593;
	bh=yrnfItraPox61+93B38agL/g8v8viC8W/XN4aGJzQ54=;
	h=To:Subject:From:Date:From;
	b=FxZXsP/GdI3/twHAojq+emDlqld7wnkOVR4VcO8q+S98Qfag8m8HnyN82ELaRnuvB
	 zuI1ah9miFN/Kz26+QaSlj1r1O8UyrS5VuuME4UXBw7vLgyp3cQ3Fl2vkdh5PYirSp
	 Gyu2yDsj73REXgqN8SHbkvMTPaFaWX/l+6uvYeFtEMYaC4M4CRDsipP7/nLRXTnE2I
	 h12QOczHZjW5RlcfxrpWM78aG0rSzlqxb6OM45CC40teyrt5TBgV/CthKEOOsVLG3E
	 6Yge6rTsaJJgAaWCyvwLotrk9HfdQjI8KyPLIoKSeAuUaJ6E/EretUM/nKivJkn5p0
	 XklxC6uAo37BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90307CE7B06
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312459358.20951.10155405355894466145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3400571ef6090a54d7c79886637d9a57d3978317072cadcdd7012fd0ef92888a
Date: Fri, 14 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763124593
