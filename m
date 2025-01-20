Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5940B1B87DB
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737391554; cv=none; b=T8FoyjtQb2R/TIaD1mwTCqCyWUoDOGJ2Lz0wJKd+E4C/qirSKg2jgVkE1SwwVKsQFYlwnMsFiVhH1E0Hw5jqszYLGXphhNFO8X6fMXKd/AWs8k7aC7K5egrM4QvqbS3uvYg/hide1OMNwT8G8pxGlkqxf8EOPpicDlJYDPWRHho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737391554; c=relaxed/simple;
	bh=YV1BY8RjPxxwnhfq1HafOfDciky6Z+uIqX9XUlw9yxI=;
	h=To:Subject:From:Message-Id:Date; b=AzYa5oZShg35hjGNMnOqlKZHMkpMSr6C+7BgNNSNHw4mEMdPZNIPlWRT8g2foTOcN/OW7ZPkGrvb/9WHmAoPafsIajEGJRbChnLO9oSq4w1cyN+s9Irkabhdd+n2nvQ9YkQP143LSUK85uIXVy1czxt8kAFWo3I6Ll2ZRDe/bUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uivJeiPy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uivJeiPy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B082EC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737391553;
	bh=YV1BY8RjPxxwnhfq1HafOfDciky6Z+uIqX9XUlw9yxI=;
	h=To:Subject:From:Date:From;
	b=uivJeiPyvuOUJLeittoJfHLJE/KFnYzgozFnIk420H6b09IqvFFfQfypubHcPLHTq
	 T/aaHVEbOG5zUC2vUuwnvbshPxR+T1CZkihX32Nmu5ypDk6/fxWLqyKhamCAlvHVfV
	 THJus0hbBw4MIXfxBVP/qgKAxy36Is62ctoa2jspwFXbQ0/pDxmMyNORAE8LGK0O6i
	 FrJsqnJPknDTbAC+B7MvZxwHf48mqSVF4phdFXki0/5m0h+T8ulxX5Gehut7z9ZB0v
	 oUZMFsVULh6WqHPHY3sD7ccoep5if0lw6hrrppvaC7emG+G+zMlePeTrV+euYCmUcd
	 IvA0KQVTbyjXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A76C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173739155360.30815.1663371002078216849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9dcc262f08ba39b1f469e08964c89fb23403db50fcf48d2626a268db43d3ca
Date: Mon, 20 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737391553
