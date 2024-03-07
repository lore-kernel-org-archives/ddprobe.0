Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0480B441F
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709775497; cv=none; b=s2GgbXvFjN2awPDf4Zz00VWweSVZWHAljPSsgePPzfjt+dqMHZSTL1Xr/W6lMDyL0PLpo4YBJ5CeTaBwKTLRNWBd85gQ6hIVlbON1O0C7lKFoKVQHwusUgzKb/rlQz8KzVcYfBJA9AJXaNe0+KIFDNlfo9wsM1Z2VSoMlwN7jD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709775497; c=relaxed/simple;
	bh=rqUuJ6OwuqQsdRNjLEvWi6pbmDUBWfcTG5oYZ4normU=;
	h=To:Subject:From:Message-Id:Date; b=UeJuzc2007+nWT0fYlvf6APTqdIsDcnngW4E1QJGngys8iL5xbzK67jmDpj+r2g/+FoT44utjYHN+bZvsY1grNk1VuF2bKOUFXtUjLUXW3RPDdiAqYd8duY4fA/zbukGqWxu4Sb6e7oAOvwe0ReJ6NPQnqRYkVske9yLxyfWtsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFa7qPVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFa7qPVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E997C433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709775496;
	bh=rqUuJ6OwuqQsdRNjLEvWi6pbmDUBWfcTG5oYZ4normU=;
	h=To:Subject:From:Date:From;
	b=nFa7qPVe5vji+3GRF04loL4e3kIM+MFitEdkGHo/gdAZkjPFKeagWXLuCJ+Y5mOO+
	 MQv8lf4LIeLitd0pLj53OHmxHQPXVqWHDM7bMY94YlROwVzrEaffofx7SJaYFjwcfO
	 Tl57N4JaYrSonlGv0DUT4AcoCi+xqovjtB5TrPVLQW0CUfsp3gxJ2wc8px1hEuEFoq
	 fzOd5M6hTdUIufXAPymLOg5667Ykg1PiaZtj4EQC9M+v022fGpxXWSBJfIJVxRG8I+
	 aWVKh+GGnem3SX+XNSKXZyurKC+2DHPGdKo4+LN/KL9W8kf39xVAr8G8jZyLdHLg1v
	 Jc2WjhfIsEnVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FEF7C5475B
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170977549638.1265.7758689017264022083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a968e314f55246e7a5370673d14f1dca72a3db29680d54c6897bb1b1babb86
Date: Thu, 07 Mar 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709775496
