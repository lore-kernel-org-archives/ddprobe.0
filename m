Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4905137DE87
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785053434; cv=none; b=XhUKDHILuVl5sqSsohj+6iY9FGhCtbK4hUqeXfuz/rkkTtvySJAnRXqGcRwhc9cXGMfE9rTewPzEWuukwbaUrjP83KGiKhDHODsHgxRrsCVcaYneuvOsjXacee3Nvwh5U+/fbNaUMLOXRh/Lactr/SWsr6rR9zkO6li/DNTBzgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785053434; c=relaxed/simple;
	bh=/VMgpralSqq6qPrdGdnYmZW1fSY7xBYA5X9A+8PpHcg=;
	h=To:Subject:From:Message-Id:Date; b=qrLt5mOFL8Uj7tG1B06vSspIkUZnxKlf6RiQMMuqY4pefCncBLW/UgcA8g92xNRknabum8KRYLPNginXjipMOwFHCe6ZvyL+H4iDH97vHmvOZ8B0DSmWVISuRlQMyprW6ATpMFglXQXscg1uXdkJRDMm+liJRh5MbGywJHAwxOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EU/sPfOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EU/sPfOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FE4C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785053433;
	bh=/VMgpralSqq6qPrdGdnYmZW1fSY7xBYA5X9A+8PpHcg=;
	h=To:Subject:From:Date:From;
	b=EU/sPfOLIjNQzjf9MNnSUUJPT78631lsWursgiFrToqcyYPVymsx/jEwph9coiUic
	 oSWCvk1BwhiJsBdHh8IcgDCPLM1UHBUIIteGReDwi8/AX9kcWBPK1He/uXoEiaj5q1
	 bPa5aBb3AEfEYiiPV4QtaSS7f1q+kbPzWa+5LyfpN7R5oiLfkTbRI2NL/Z8r7G8te9
	 gdNzOZb0i/WgX+4V6JXo8kZFbYpHE/sJhWcS0b4ZAl5beZmRX07gqJv15uCzhM7ejk
	 OuwnIETy+2qU3sCRGh/x+zveNefEOfn/hg6m1ePq0PljMw8z4CKyi3xiGHF8aQ6qVJ
	 llVjDfHDb5/rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77E0C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178505343367.6069.2440944945148533486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d228edd5f501a2e766d51dde23e47a094b54029adf800edc8aeb5fbe54e46b5
Date: Sun, 26 Jul 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785053433
