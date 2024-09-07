Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34813139E
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725681354; cv=none; b=tqQO7D5rTF3/YFjHvOgpjdrRJ9l/n01cLEsShlosaYH6p1ac6+3MUnIlpAG/Rv+tsOXlmdcH1U/ocqM3z2fQ67UGXJHjVoCuriSXE+L18yi0f9tpphJ1CL238+VvrMsFYplEWtl9N241YPID3Z7XYqA1H7xT9nUAJdMa3d6F0+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725681354; c=relaxed/simple;
	bh=qsxTRxagCSCmyGRsoMq3KTC5JQLNqmYYB+O1aEgtOYY=;
	h=To:Subject:From:Message-Id:Date; b=YdO9xz3kaIO84FiQ9wssSkxrPN8EyyCOrNLgTPg4Gr4mmLNbKe6ey5S/iW/sSdrFJOvY8XmEy00IF6Ka+FzuTI1DeA/io5K9HikAD/OV2e86DDrxvVPbbejeuj2b+AgHKqXT7vsCV8v62PhXTGlkTc6ylonPWE6TZzb2m8MGEdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FT81xPcB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FT81xPcB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C5C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725681353;
	bh=qsxTRxagCSCmyGRsoMq3KTC5JQLNqmYYB+O1aEgtOYY=;
	h=To:Subject:From:Date:From;
	b=FT81xPcBvWAfoMawZo1HIn1URp5N1SsqOVFvHW3bO5GpEYXNoBNbFjT2tsQT1X+sI
	 XwBfXNb+uu3Dc/gT0v/RvqKtuVvt8W1z6WDoR0zAqpBMrZHUAsHSQXMPp49SKf45+D
	 AfOiaOaQruhmgDYFIU1wyFD4Wkp1tfWxFaH4RHIDI6OyWvHGdZh+o2Hcpbki7fGDRr
	 sgN3gXs/1waio6fCZRgfK5U1cvrOxQ6bpy4SosJKIjlkh1AJBvqcScCeYadOoYePN1
	 TCC0FcVTPAqyA4pvbCA4olHw4Sw/zi9VjtpwF12eTZDeBOtklGkRVa7DNtur65cEYq
	 cqiBuOLTyCTOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D88E6FE47
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172568135358.25185.1647889198442880080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536f672e78502f94bd2879cc15ef82170db663600b3dcf249583cd8606840c2f
Date: Sat, 07 Sep 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725681353
