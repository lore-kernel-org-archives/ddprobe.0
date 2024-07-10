Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA6A3C39
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720608983; cv=none; b=pzN3j5Es3BAp6DaSYxmGpXsBHsKyN4Rnmj+4u5H3k+UrRPX6HsidNbqP5BRmyPx2Sco3MOGVZktevW8crMu50OJSd0RzO9SDyDXi0rQrxOEXbUMEIjk99O/BYa/EP+CH9TYjTos3nICXJ4MDz3J9DWY31AazlC5RqXzdnkveoj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720608983; c=relaxed/simple;
	bh=Cc5YzwTvXdBWod0LYXIQkij70Zv+RvNqU8yFQqqLN44=;
	h=To:Subject:From:Message-Id:Date; b=lOGwr16G4/0YE8SeUPHiNy4pMtVlY8peKHWg/CSegvuwXj1KmQS4iqLdfXlOLL8O82HsJWCAxtInjpSJrxnx2MywYcRsP4S9sbJ5u2FRdeuuCMVKxw7wQ9K6VRCsAhwitK8AaOEMn2yK0fREiZ3EQWpTaFSYNixA7PJbJBUpmzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAfc/2zY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAfc/2zY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB66BC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720608982;
	bh=Cc5YzwTvXdBWod0LYXIQkij70Zv+RvNqU8yFQqqLN44=;
	h=To:Subject:From:Date:From;
	b=oAfc/2zYsW5GmMxYxYVpZxqZasvgxCG7rALjGyVa8ohtV/Wa/8JFGKpcj/qlxsOeE
	 CD1du77uNOzvB5faHHg08kW+UuuWwKSNsS+SnmfbWTtPbbgl63B8Qq4VvN0/H2+PDt
	 +heY67zXLyhYSASa+5EPB3LeazD17M37V8rEFh1Md/+2SCxdNZAUk3kbbpkPLh9dy6
	 IYibdEyN8It8CkOWGmWwcSK5aYoz0VYlO4JatIieanWhNvnKpSob1MCU7ecLdpfCgg
	 tz21acv3+tLq7OTKy2we7XILF0LMBKICyd32cqGGvGxqzptu/VU0JLVmc5zUTV5kYd
	 B/8kb9D6GzqqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BDDC3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 10:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060898281.6009.6616336079346020664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f25afdb846c837b28666c20c836c97dcd948829da2f3f52967e779c383d5955
Date: Wed, 10 Jul 2024 10:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720608982
