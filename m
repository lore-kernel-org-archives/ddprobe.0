Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384F42904
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739579334; cv=none; b=ED0tBq/T0fPWie8FI0+mzgmags3lgUkPPtaTvRCI6+A5l8k0EScWO2sY7WkdJOoUfCFt8ta3V0HWjAMHmvswwpecTmz3FzTpNcru2iXGfFea+TQNj564PUb/CsA9ziRc6/ywrLlP5cTU3AqikDX8YQy8E3DJiuPQSyrbUkhGoa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739579334; c=relaxed/simple;
	bh=L8UNl0/HMvDCnxU4uq6Z1TWdx+hqaKnG6fo9fzIrnlE=;
	h=To:Subject:From:Message-Id:Date; b=oTGAFw//V3KZiBLFqp79qatgGtqjRZ1Ijk/XCG3QgNHtGs+KJG7llFKFdnCJDtIpgkxtC9LdLkuDvszCVYT5LjRymmdRzEdyCZa31JHmAVN6tx1IZ4yXM1k9QBxr4UFQxv6On9OO4TNByRZiAlX+O8pysoaA4H/RKg4JB6SEvvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSng19RQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSng19RQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A673BC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739579333;
	bh=L8UNl0/HMvDCnxU4uq6Z1TWdx+hqaKnG6fo9fzIrnlE=;
	h=To:Subject:From:Date:From;
	b=eSng19RQMh1eyxBDn2CPqELo1mT0+x4MjJtn5oW7ZUM+ihB6pwcFl3/SomBU33Z5a
	 tmfV/jgm8UiYNYQc4O0m2yVgVn/zgSliHByIxoKpwCaBIDswbfwze7UbOsN0tb7ysR
	 HVxYsEtsWw1TeU2kDBCsiHWXFu/5LJgk1ImbOANCDEIhukZujuEyJtAhWqVjkIzdOR
	 XPBPe/a3/u5DvBF8r1ceA49H2d1quuavBvJKonHPxgeAzNK81JaO0XUODMFoUxR7BO
	 HA4YrRJues3U1A4HX76EFjgc4dwxA8fSTraFci4KZWYJMb/zCI8Q6a1mzp360pknIe
	 G4dYJCbieuaww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93090C02198
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173957933359.4637.948340493365477160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5c86982c5e1c330ec5a24b7c3da7a9701c238e54f2feaa7cc8dc9971e30ea9
Date: Sat, 15 Feb 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739579333
