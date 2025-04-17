Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E4079C4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744866596; cv=none; b=ati1olN4rVpIb62L6xEaqZWIPRa8M/fGRwJqs7l79o/W77z2JFDWsRnHoxpFiXzvkEEsx3sYygJ7ERlsxbWBZhXZ32xa9zCDzX+eMsOlysYkjyI8qbOsktL/es6wpyXz8uTnQOxL6wHUKog+34LTrWyBtML1FEL6aScxsyg/O1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744866596; c=relaxed/simple;
	bh=M5LbOCKrjb+7LJgQAdP5BGG994u/t79sY/7gctph/vw=;
	h=To:Subject:From:Message-Id:Date; b=hhrMzb90xaQwcfntWHMlLuG9iVC5HfOFNLLLE1fHJsotfg8En4sviCYeaTdWBxf71CSqxFAcAf6ESwFCpxfLrJnD50G+XLfqBXqx2x+ENDddVofO5Y+pfFlZMH6IHLVZmv5Cc6jzaew8yqux8wihHR7Rl4MxkxjQpqWalBgnFkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjwRyIej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjwRyIej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B836AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744866593;
	bh=M5LbOCKrjb+7LJgQAdP5BGG994u/t79sY/7gctph/vw=;
	h=To:Subject:From:Date:From;
	b=bjwRyIejOMgNEIrDiHOfkbpOSDO0A85baFgLyvhJOXahNfWjuj76Pd7TTEJWudqmP
	 MjTnNeQDum+jx0jIUY6ZwAqC85iCKriaR6jreuTQiMO3ue1OrVZ8m34doSbJm4skg0
	 pgbM6i3uVV4IsSYrvHP/cUsxnqOKFZ03+tuXbKnHFgbkYWgfGETsk+EUq0LJ/gZ1b3
	 u3CDS2C1fqHZNcrswTu8kWOdvZJh9adAS+kojZv+uTBFmTEkzj9sp14jfgBlUVtQH9
	 yr9+PN05zLWReYNYT9O1UstrmO9dbvUweeeVckRCMIQlJlU9m88XtbpbNJmmTgM9rZ
	 RkivWVW8Y6/4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FB1C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486659364.4057.11970297482832063323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 931948e7e61f0e7a9cc0622922536c5d5576e244c3ee624a25f23c298f4533ef
Date: Thu, 17 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744866593
