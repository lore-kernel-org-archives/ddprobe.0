Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2295320495F
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730922354; cv=none; b=ZYu5iRB6VmweAusHfkoagX6Q5j67g9mmOMJfPrGTwpSu3p4DsMAf9edVtgOQET/e1+Ss7LOJZ3SAxeWfh6afqkuYYD9cFCzyOD3C5eog2tA6BfYj1rwVYYFXmjzIa4LJxgLpQ6dK/Ayd73JnbwFFg58WbEwPS65J6OI4skRBNjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730922354; c=relaxed/simple;
	bh=f1zSdW+TGiNePiPg6GLK+/OAjo6jwrGkpiUeXyk4kXk=;
	h=To:Subject:From:Message-Id:Date; b=nj3Fw/s3DqEl1bz/BCtcKzKBRweE8tubkrJ18ZdfiEmXLH08X3p6vSodJUld61cFGnE1h1EsiqntRbWzJgfQj5yscCuAl06a0qTY7Mh/73TWd6kDFLgNXJBfwqtGg6rCjPk42+Z8CGVpZiMFMkZ4ZF6FVvKCQ1RwcxuqXsLt3eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbmD2sGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbmD2sGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93CDC4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730922353;
	bh=f1zSdW+TGiNePiPg6GLK+/OAjo6jwrGkpiUeXyk4kXk=;
	h=To:Subject:From:Date:From;
	b=CbmD2sGhXybAtpuVIklPwB82dS72itwCeSV9uil8Th6DTyPuNcbt5A+71ZPlARXZu
	 el0RFrUnLU/MPRhx/Df1L7Q6I+PQ/K6g3x9JruQUr09EP/0M3Jc9gT/wHA2lBV/CqW
	 ZPX0uijRYOjdYBWRuv1fPfPgVT27+hRowp2JodH34Goh/eD7ND62iLOkjEAa7+Oinh
	 PEkfhguB6feKkhsGww0rgqgmS04fDIPcuU/8Q7RDRuEQKjAKDJP7x1Ff9LL8SwKUJC
	 SlKnKtUesXBGBrDhxzV0mraTbxustvCEseyLdeJNE4PMy8UUD4E4RiZsq9mbmHP+ok
	 oAI0aaxAUVsMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B6AD59F6C
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173092235361.27367.13544882217322843223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95836d06578da9749f9210c5fc3a7213b707da13bd72319521306fa295205ac1
Date: Wed, 06 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730922353
