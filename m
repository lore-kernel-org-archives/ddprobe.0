Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B902038AA
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729275354; cv=none; b=gszvsAKowIWCPMfXEVgB8xvpvwQc2agcC/V4R/Obrx9dvN5h1gQLis5Cap3eU79w4l4PFPCsZa390JoOhnhUdrOevKoVFuyWboqxRITHxPHoqwRowldY1atUpeuebRiq4yCf1IrzRGMv4STfCOWI6K5fnRIWVdrh8ZlUm0HHO2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729275354; c=relaxed/simple;
	bh=eSx/dZFTSL2APmFIeLQpoOoIu+8lJB7fsUQhTJtJ17g=;
	h=To:Subject:From:Message-Id:Date; b=Hckid2UJsjvDqMsgxWzi6/Jkki0DS1mhD/K5oGXptWAJWpXotHQ7SG8VTpIvt+l+0YIIYFP3syzcesk3IN7FrBckre9hGIsac1krnVgvdNUGHfW0z5jc564zkDlbNnTZDoUs3r6/zjlc5/MzRmrG43+3k292pJjTHks5vcz9jM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTjahDf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTjahDf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB46C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729275353;
	bh=eSx/dZFTSL2APmFIeLQpoOoIu+8lJB7fsUQhTJtJ17g=;
	h=To:Subject:From:Date:From;
	b=bTjahDf2QHUGw7lH1Cplkwz1nOVEWc5dyEmPwkLCjzqU+ivyjzsb/otxR405KpjuV
	 DVH+PLLZmZ1hnBXKMeG+l9fAa10HRdReh4wgfQ7Q5eiTidaoZHmghO2W9PmyiClad6
	 92TADjKq9G0dCoVB3JmOOIvR5b+HUjdCfo17A6v+1p7lxoqXA31cBclL641j9qUQyE
	 G+9TlU/CjHAlZGBuQGEVpLosNk71H45Jq6piPsojGPPKjSJLHWY0G8Ltg7xBPAdIXS
	 YVHLXUmYs5pwpT1i5JayPOJ0JxOh3+Rfb9azlQnuOf1sh5ucvCSXPE41vuGMYTU2Hx
	 wzBwZ+/V0DmdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98742D3DEA6
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172927535361.2431.16385100831488387331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baa28978f32be4e2b361f2b3f1b819f4ed51529302643d9acce2edeb853cb2db
Date: Fri, 18 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729275353
