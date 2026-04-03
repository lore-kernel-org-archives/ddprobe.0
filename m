Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182733624A7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775256934; cv=none; b=JXOrAOyMT9E53J6VIQpCsQSmbuXl3ycJ8zNXLtuLJed8UsgHKXoJFl1WLAqSafflSDCIhvBIeRlSrd93VV4bczJAkB+Fl8A2nIeipgjjqiDKk4Jx7oDPs4PwDU06TJlXa8SPy8WLmlhQYxORPdUd53aF/KsJE2J0VIVRRZ88zNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775256934; c=relaxed/simple;
	bh=cnV5jHSMVuviSOHktQQh/QloUydqYtj7vUgLtpl0q+E=;
	h=To:Subject:From:Message-Id:Date; b=OYH4cPOPFwfbLlWFLttu1X+oaBV7psIyVEp5c7ZEUe+XlGh+dBEzEsrFODJYjkp8T4ovZz/IJd2SYRkIBdCWcorFKCDKgk5Riv6T6jQiHNkdDSvxdqt/j2qtye/OgnEAa+tm9roYu3chq9ICrcO4uYMeYTlgcoHlyrE7D+vpfYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6RNny4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6RNny4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C343BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775256933;
	bh=cnV5jHSMVuviSOHktQQh/QloUydqYtj7vUgLtpl0q+E=;
	h=To:Subject:From:Date:From;
	b=J6RNny4HoAl614Ez77fkaPF6OEyXAFpTEYlf1ck4u4HymcTMWu33V+OYNZ6Hpr7a3
	 C/rbsuW6vlsgC7r1mU2+yZMSxaNXXGT8yAM0O2xYIftigPSP2I0gUAaLpLA9pKz4Hy
	 sLXMbs14QhPPKf6NAIbjO+GC+mA69UTtCzzJs+1Kjj88gdrrsGJPEsaJ/0GrwmX28E
	 2Cynb+Oll2BT3zSecVJi3GPgZbP7H81zpwsA4YkkjzjbIUSwD7RImb4JakVBYY/JMg
	 7hYF2qse+Rlf0xMEE8MGOsAQ8iwyoImq+ZmYqMyOW7gmNqswLli/4YZGalEzRJwYbO
	 SqY3L7odBLehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1019E88D6D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525693369.4278.13635034005646234959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9250781bed7922e88103134d55c6b7e433b998a4a8a45afe2623ef9753036340
Date: Fri, 03 Apr 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775256933
