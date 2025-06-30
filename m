Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264C028C013
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751294394; cv=none; b=gtg4CVNbElS3SouZNlWUuraV9DB533Xhc2E41YH+lYmWTrNeK7TJHHuN4VknHwqE4xydcPClDawva0YjtWFDqqm8GHEdCn7azmtpUH1+CXCuW4jPjOkOY9BNfTj97ydp+srAljUZHsotvwkwf/VyuLfO7LGAkMu4FwIG+1a1wCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751294394; c=relaxed/simple;
	bh=QffClsOnR27QcBFiEDvXJZIZgkqU785ya9e4UPlTUHQ=;
	h=To:Subject:From:Message-Id:Date; b=cqYjSxWKQ/L4ImAcmOx5+L9OZlMmEuKRQVhX+tZfwtjhDftY5+blgs4Sa8CSbOatLTQaMRJbP/6cKg94BlGuRdFXagGtB5k/S3UKCvjIjQclPjsg9OgiApm14hYSah4Nnz39tAM9Ntg6ntfYsTltX8bXBu1QAvhD4HStPgpbvbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpdqDn85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpdqDn85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3671C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751294393;
	bh=QffClsOnR27QcBFiEDvXJZIZgkqU785ya9e4UPlTUHQ=;
	h=To:Subject:From:Date:From;
	b=tpdqDn85G/R5K3QneahSg/HreUpXiwad9QJXamGQhNJCBRXh94FgbNoc18PqzxheO
	 CBe8pLuziaT+ZkyMdwr4mxrvoCB+a5yM6cS94StoPcUZbaxXNk7RRPqBIXgoLcPhMp
	 opBY83av0E3rDIWp00QM9d5RStWgfjHl3MtFWwEExdzSbdLeEHdTpXe95LZhB3bu+P
	 06NB63ML5uYkpnf1TNHe+uVm+lw/iVM0VzjnHM5/m5zR3RXSuhuTrayn/uexzB80MO
	 K96sNrNDpoIcOETRaIsIV0A8DlO1RYvNAyensQfNcTwEkNIjy8KtqKUJYp4nTxi6FB
	 MBtr4C6gOvW0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFAC8302B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129439358.29160.1886285219994377958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92bbbe7748366da5f34357826205e5bee0bb479a041b01f3b2c86211acbec87
Date: Mon, 30 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751294393
