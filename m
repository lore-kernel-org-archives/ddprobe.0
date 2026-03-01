Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EFF22A4F1
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772374494; cv=none; b=gWCd4G51hcQMV6gIf472cZFKhRXdTXjG4j5k7QIJHEc8zk5hRObhk/+H2dCVAl3RDJCaeqbcZE5rO9sb2XyDjKk1X5jpX9WwiuciKYcRSoGmQ3JdZwgehE0MSVhO5pYXsCz10GVu0MD40ZV/uJcZ/xqUm5bR180NMDi76OiyabE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772374494; c=relaxed/simple;
	bh=ooGmuZHqsaLzBQNssIzSuFs75C+7XzF+wlq1WFSC+mE=;
	h=To:Subject:From:Message-Id:Date; b=KlrTPH/mC4Z4WOin4Pc9PZLeoBGh3+z5yzGAkSAHJnixGT8XlVU9kSnxDr7lv4FDBq2laoL/8+mzFzT/+YEwMblYAZG0AIImX4uABTFDDvnAsExwkgvExtfUWBQXEiG94auivFU1jjUD98J3yO5I1k5vzPltlOzQ5Gw/3LtF/4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSGKuLCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSGKuLCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD3D0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772374493;
	bh=ooGmuZHqsaLzBQNssIzSuFs75C+7XzF+wlq1WFSC+mE=;
	h=To:Subject:From:Date:From;
	b=WSGKuLCvaqRHxaE3a3mxG3O/NKl4hpv1w4//dB5Z35MSO+Dr7//UoKBglYA5bVN9R
	 sIrkeONx6pwR+yTXRmKRJgo/AyFUsjm5h30WWnhwVGJJLj6XCKNLYN8KUVyeYla6NU
	 oMNefPTspM/nG4YvnOnIJ3ar7mEVfCCJpjoOZiOl/2YFOO4s1B+fLnYnd4gwK7AH3/
	 yvXEpw7PMX2gyo1l5HcN22t8auXkJN8/W54/D1B3nChUN/tIh+knJAq4Zq24CBEqqb
	 5XLjftGoUc1NHewQtbPos4KIwi2W6XkjpRz5ByoTeJNC4f8BoXeIaLpkk3RtyQlAp6
	 QZvDTS5dDWjRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974AFFD0066
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177237449360.29334.13562581864374218644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcc1fded55068427bb61705a6b900c33ebb5fd931a9a846b395d1859edb48f4
Date: Sun, 01 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772374493
