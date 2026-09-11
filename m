Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBA7412276
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789144834; cv=none; b=tWDUyAUzIS9rTWyU7Zu4sNYVEsxsvX+7srC3SuHW3IZUvDnXuBMb4QQCPKxK4G+y74lW5yhhjT0GsrqV75XrDyfksFmebdmDlq8R7mnL5h8cD9ZOZW23KgZg/NrLKjuBtLSgNcPhMIhfWa6n5ibfHerM4U4UmyZwzCadSk4I3IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789144834; c=relaxed/simple;
	bh=UisBRQEvcFOArwCqRLFeOKqHddvwO6mT8W7HhFQwnt4=;
	h=To:Subject:From:Message-Id:Date; b=BFHvXoe0cGaPzu2iO6mQdwUFxD7lGRI2VZLP+t6wHlMoWxVvmoXtAcnchrA0p1pjN16Z7QOgsQqy5E1syQIDQ1ks2urmuuo7ov1olpxpgM3Lc44oxLdhEUhG78DTRIm8GoV6PKXLUEiOh8O+DHeCMG72+DNAEUXlJdLRK6QKYhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHj2/Cp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHj2/Cp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2B5C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789144833;
	bh=UisBRQEvcFOArwCqRLFeOKqHddvwO6mT8W7HhFQwnt4=;
	h=To:Subject:From:Date:From;
	b=PHj2/Cp6AJpCuKtAzodJeAXZu4vXiy7HhmJwPu4kEdep2EdNl77vE3bLCrJw0Cp9o
	 T0JqRu5ErBrJL+HmbHB3uuxexKvCsCxYUKW5Go/4eaYN+CR/66vfJcT3ma1EI9nGBS
	 QqOQKKTQfGhamYuN2ZpKOaNLoQxDWFi4j025gO/IZejUg+8pdotTCSpIK/rWJ4x3qn
	 lcQjnomdYZYm/p14reAn8sCWfA4LnY3aHYu9TSNXoE8R6nJbiQ91pf2TozBPcacHjv
	 TuWvHO+8HqG/k/PiflaK/rMrNpIpuxDTaY4nJEN4CFPKUKv5D7tifJsOvPxZw+MYpX
	 WK42KzTKbUE7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC181C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914483369.26598.9923588896533550819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b983a3b07503f184e061501cb17d941b409b25db4888eb15f924fcdbf028a7
Date: Fri, 11 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789144833
