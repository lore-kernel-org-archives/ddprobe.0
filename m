Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C1631AF07
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770224033; cv=none; b=aqUf8PnbR2R12mAgeL11VFtNK49gJNKt2UYLd0P6RfopWTJink4TO8Ca0wvxgvlA3e8G6k8KqdF5oRYbn5a61yjGTXf0bthNRrqyaO+sKWFf4JXX2oW7mZpR2cjydCJyFqtRVnhaCEc1wd0moLfynQNmxxtGY8I8kOLH0UYQ1bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770224033; c=relaxed/simple;
	bh=LOBAvgaxIMCsU9c9tfsFU9tPJsy/I3iOiPDv0SOEtcw=;
	h=To:Subject:From:Message-Id:Date; b=Ko84pcNQ+iDJyg7BXwVIjcBwcWCc/MUkyz9uPJdVxs5kM7LgWf4FL/M4SOVz4578BcFqo71Q3Y4cIuOjuAB7UfDMKwZBOmBLYBL5TNR/pt0eoN/OoVlo2LIqk2tFNzOcWefeoff5EiwlQa+q7FMlq/C+AuCZtYNQ44yVitsvMtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEPynuoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEPynuoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E97C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770224033;
	bh=LOBAvgaxIMCsU9c9tfsFU9tPJsy/I3iOiPDv0SOEtcw=;
	h=To:Subject:From:Date:From;
	b=qEPynuoPcEye7xKT0AzDDDQphxykILyN0B2ZF2Y5Ur6oG0+EyRJlOe76kP1eWn9XE
	 dQdrfFzylKEBAmwcrwUeOji7lUIunvudjAUf2NM/8hizMjZ3isnHsDsg1/413uGOCV
	 KUICHmNmZpC9xu0CSkVsmDuJPfhr4nLICENvNz4T9aCANeuSd7qEGN1i/uuay2lKl5
	 d+jknqQIdA0W6DbD4AinPSeXa7/VEyFx+ck0pqkKQ7ZBGvdfx6FAdGGFPQK9OQmdFg
	 WaR7+uk0eo7T+96JiDDXgymgvrOqLDmUUeh6XGrQnamUR28pCeLoQVIEnNSsPJLFbH
	 T2SmUf/ujLKng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94718E9D416
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022403359.28949.12631021521098557732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38f3f1ba906a4f7511fd9bba476342d0a324d84b0a7b2c017c9946e0e4a665d
Date: Wed, 04 Feb 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770224033
