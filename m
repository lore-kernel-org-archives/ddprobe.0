Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3351E2236FA
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757382594; cv=none; b=grTmXnLdJSj+SWCPlE1z69D0NBpDSf5pJrkJ/Dy/9aj81TIHq98SKcPk1Ogyt4++S6uXcy1UOuNYiIcXMbzJ5egextwk6XTJgUHj1O4abyrsFK5KosZYtKsSs3DSfCxRW82/ZKp8SWegocQyAegFrd0ke+PCNoZHYX29C+uX6XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757382594; c=relaxed/simple;
	bh=P0K6jrw1biCHQTr+cmju52cZdLTpCDpjod8MJaZkoYY=;
	h=To:Subject:From:Message-Id:Date; b=sKN9QB/NpyIkE5KVvAO+hQokro6pXiV2XA26NcyLAM55+Fk8YuD3uHQmZQnGbBG2E1CGUcM1CKYms/HVw9miVAxKeOXmDYnZ8R3e4Ccjog4UnFKIovvLQsGKSK49RCmSjegHiySgLs+O5tBUiH4bzhUIinHtIHJcGnQ9SJ6sH6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tt1a44Kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tt1a44Kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1973C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757382593;
	bh=P0K6jrw1biCHQTr+cmju52cZdLTpCDpjod8MJaZkoYY=;
	h=To:Subject:From:Date:From;
	b=tt1a44KnVBA1z8Wh+bRzUlQK8xTsLECR8vrGRiRxPYj+fqAYCJ4G7I71WeMnL4xJ1
	 H4Mo8rodruLO3NYgfv5pGejaRzR/g+bp+FKqjSsBlem2DLR6tKy+Hb8pYCE8G6iJf1
	 y7i9XlJ6Lp9VtnSfzdtP8lXTM4nOzcExrs4xvxuzAufFS+HK5FlyYyNByTKp+4SsJH
	 plGd4KkQllRkdmQJrqEcsiLK3CyJrmSKfdAEf0BOHxPctSQXNfAPYrjy/sP9Vi+h9m
	 mom0mFNWyLt1IirmsuTuBezESb5da5OhLHXb6qapEfvnyny3HHRJMSeVLnmO6RuC9/
	 /huTuO3hGgnfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F801CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738259357.9851.5888017441436837360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabd181746d69d014f8bdbb06d080501a31506ce9282f204e7c11be014db50a9
Date: Tue, 09 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757382593
