Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0C13B14B8
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791886234; cv=none; b=MEKRZcutEIlSFir0tzsKMz/Cdi5/c/iV7jVDGrHlq7+2+y+9mES3XyIwkUYgB5zHbivpVAORMwNuXaC3g36Is3/N2WegXAbBOpLieTnDyyJ+axTfmQ620o9nenRnez52bDtpbYoVZglmUjxELVn/bZVB7DsdSbqdDavcFIdJu90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791886234; c=relaxed/simple;
	bh=KXjOWMKL9RuQuEnSDgaaJhzGKwjMpH1AmDn4toevK7I=;
	h=To:Subject:From:Message-Id:Date; b=r8X+IBKWGq5/3fcLw3r83ioiAIhP7Cu+3Y1gcuemWTs8W3yI0SQjdLpnaMdn8RqPhVqk26MALSDJo3Kei3V1kauJ1ez43OlFrgnr3aCzfvyT2Nrs6wPVD7Rg4/+sv+io/H/m/Xr2wCRRFzsibe7IgOgx9EAHO32fzl79vmuuFNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5HtZZrg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5HtZZrg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ADDC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791886233;
	bh=KXjOWMKL9RuQuEnSDgaaJhzGKwjMpH1AmDn4toevK7I=;
	h=To:Subject:From:Date:From;
	b=D5HtZZrgXuh3hl3mAeFQSkrfwyt4HYUsEw/T/ecqfZ2YnJnDg4TckYE7q/V8DEdcF
	 uOSAlyroWe2s3aUHWm+N2SF2WES6rGdadkd6BFvcjuzlGrbdAghuVi5Ss35tPShzTh
	 pvatUMZ0SIVLWVqggFMIIpcxiRKd28A+x12XBq1WG8pwsMJcUdxnDB8uri8R1Gsq8X
	 pvVVjWJ3sYELXrla806MARi0Dc3dYIlPhk7oxbVJAPvSF68C5uD2T7OBH+HzcMlGFK
	 oUjn1ns+EYLd34Se13/xutLE8CYV+xeq80RwsH92XpnLSJjgWUqrK7e07B0khyNFbC
	 DrPriI/hLFN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDBACC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188623369.22967.8467218468139970021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886d2923e9bb5526d46ce7a3c99ba807903678e1f8b5990c23254f9c3b799bf9
Date: Tue, 13 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791886233
