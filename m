Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223242836E
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770587034; cv=none; b=kAvkuyJ+3gcgy/RGBpU+YDZ/ESrPwjo1oihjbUJ0pYZScgtasxLCoean9coKzdsm0r+IjPjC0S+pKW3jCoXgvZ3l+I2m10/Sf1h9IZOgtxmrmEv9jA1Ez4LtFVHtZKS+GPV6w5frJ8vuQUpImcjNzjCnokKSo6bmAQfW/otDmmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770587034; c=relaxed/simple;
	bh=wQZ+3EMwllIKM6Yrk4k8Qkh4PWeX71Etap/uFilQk5M=;
	h=To:Subject:From:Message-Id:Date; b=RRTU4b5wC3wcS71z19jfgj07BiWHzq5dS5Fh8CSSil9hl3+fkKYdQgHrcqWPIJkVP8PdXhSF4syLtiflYhJq1QUupEqCTsthzSAXrC5Kd3F/Wkz9pleIFUnhaqSHXxfZiMZmWtdMggmP/ob4nNUQQMtgfzbcRiR5qszRGByyG68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGy+0dDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGy+0dDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF30C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770587033;
	bh=wQZ+3EMwllIKM6Yrk4k8Qkh4PWeX71Etap/uFilQk5M=;
	h=To:Subject:From:Date:From;
	b=tGy+0dDbNxU4YbXET0PBwvNkCpfUefAuWvooXXAHvocxdxJBdWU964eNxZgG7pIuM
	 6lQ8tSAGY9iXYbk5gsY84z7V3LSiwVrRUx6cTKPMu24jyH007xbf148phgW2UgPfM2
	 mhUJsv7WreX5knornwjpyHGKxw7vpncfF7tRfZeDYrAwMkd/dRD2E8LoVC/WJoIVT6
	 l4eAUW/FLDemGFHpzoa42vCir8buS7eg/K4IFAUA+8RYQES0wNT9Ja4SXwOBnT72cR
	 eB142Q8MlUK61flCMXdiJXf2FgyWUzYIYZLzjgh3BHDE9k2CFXi4dkWpyu1dgVAGQv
	 eX8TtKLgHjroQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBE0EF06EE
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177058703360.16432.9103319764740375559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8af95063d04cc86f0dc3534fcf07e2abb1b2eef344063981b8f0a34d9d1dbe8
Date: Sun, 08 Feb 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770587033
