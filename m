Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C70C1ACEDA
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760240394; cv=none; b=gwBnpLdOlFWN2opg74FI5GlixNZx37Ji3ixFVSe+MY0RgO201Rbasvcln+kGwJw0fl/OLs7V6kR53PMESSjtrPt7OXK7nX0xC+F+9EtilnU0Mn0efdLAj0eNlZOUglcfpJxmuAYhCgB0OMsFZvd5nzGKR3fY9fzyAQ20PeMqeVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760240394; c=relaxed/simple;
	bh=Avgkabuveqw37ZrcLUFjhnFzb7jDiphTPUTveDg9eWg=;
	h=To:Subject:From:Message-Id:Date; b=EJqll9Ye3WEn4+QuwH1CNScdU8p4H0GGIuwNPcfh7flNhmc6uVkN4nkzeCnieGbBWg2jNqYj/VB7zDb0JCAT550prgOqEyJg4xm2Tu8FiL9BYwI35IISZhmJjV6SqjchB0XM6iipqB5YjeR3ijecQJU0S9315HsoCkUo3eu14+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sV09LKeX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sV09LKeX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5883C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760240393;
	bh=Avgkabuveqw37ZrcLUFjhnFzb7jDiphTPUTveDg9eWg=;
	h=To:Subject:From:Date:From;
	b=sV09LKeX7McgnVSr8l6eylWJRyCaOEhsvDYyEdal5MnYxGeDFgb2Z+vvrbpyhtZ0r
	 p62AwPbG/pBG/kwQ7ig3nN8z1Ry3hZfJ3TSYzmGdiN9aMFShtje5Rnf1hymsfGKjWn
	 QSuZXmw5dQzwvjCSpbz3hwoaSgCECI6lNYE6cOiyCyi0bYKH2nFbjWUDwHzZzh70Mz
	 WZBAAsRLGf33soKq/Dly9O2vf2wme0kl775/sAAJ4V9T4rmkpEJX1Ns4iQiqK3hAzv
	 g++jayz01ko+p9IOgmHZgHc2rZ1TGFtdM4C8Eqqe8+lf2U2qHRiXD66J7QBdzVgXop
	 UNHnJYVj4rvmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F97CCA476
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024039357.27536.13639892116031079352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1945d95692906d6e24537631b44299fbcf8f27a350a5236e1c29eefb7ab1e6
Date: Sun, 12 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760240393
