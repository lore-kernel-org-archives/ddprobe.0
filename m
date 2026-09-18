Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA5B355F42
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789723834; cv=none; b=tYg6gHmYasFiWDaX1+iVTYAH1Ef2ctYF91PDXWIgZqf5PODZgfgvYftVbgIH6E/fJASDdkkM0zvvBxmwh/Vse2EqCESFvjjttiE4fd6aEYDWJvVwo+oyn5Za1YhrItcZkilymhohqkoJfWIyKViza+3WY2aQN4NIJsDbJn1P9K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789723834; c=relaxed/simple;
	bh=jVaxhcN6UEio3DaPWzGnEO+i/G91pYWzpeMLCnx2uvk=;
	h=To:Subject:From:Message-Id:Date; b=Wh7ul10RNR1gUw/AsGsd6xGEc047F3hyE7Y/oykE5/4yIJ0ZRVbMBowTeTJCBN9nUHePF8j4B+6ukGWYH2eH1bxkazyxTjjkTbzU1iyGdRECnR2nluMA4BoE8q03qZmW/X/647+5kSkLMCWvmOI7J6qKm8rQRSDMlNRCkrD16LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=or8SbZkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="or8SbZkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BB4C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789723833;
	bh=jVaxhcN6UEio3DaPWzGnEO+i/G91pYWzpeMLCnx2uvk=;
	h=To:Subject:From:Date:From;
	b=or8SbZkMdtaB6v7TaWGxFUA8t9POAax94Z1E7Hi/6I0vJTPgd7vzhIKpL2zWpG08w
	 mCBlJ3Fsiijxwf64Sx+7F9+WbSI7/CVPiCqrsO4lwHAJ6DQkXLD3sHRDPT4ra7a9tO
	 8gl8bmNdYKKXnr/jJKNgyW+BY1Vr8X2FLGkvuknF4oWcf8exsMe6OAOmoPM+epjO2m
	 1M47oVOZ0wE/3uxgfgyHqZfVtiPrB3VFwhxVFPTfte8hteq6keV0LiRFaOjf6M883X
	 /muMqKTTI58dWlAruksmOAx9DPdRJMN1iILmEI04RkjolegqtADJHdW/LJ4tuytHfZ
	 JPgabyFbapdSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE059C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178972383370.20027.958947212836640771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57f02f176738952fb8890dbcdccbfe366bb3c02d86be66b16904e95c08431bd6
Date: Fri, 18 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789723833
