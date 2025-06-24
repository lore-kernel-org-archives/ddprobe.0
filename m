Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E4327FB31
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750764594; cv=none; b=l3Z/X520s/1ME9/g2BnnvVjMDlGZte9T71JaltlozOg4kohmUzEA6OVKghMiIUNAIMR06HWzcYHxREPhThXP/+QU6weKDXjYe6ZFAjplP+v++QGX5jICycQ5WWAvRkC1a9QdDBbpDVvj9eRlf9p18RcOqwPEnPW8RaRqpDpyhR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750764594; c=relaxed/simple;
	bh=OxDMikVt71MGAmpeOZlvW2qeF1lBZLi5zeSSxysPzlM=;
	h=To:Subject:From:Message-Id:Date; b=kSjJCsaDh61R2vFgWADArzyXz8Va6j8lx8QkM1CyENzOd2ZA8ZXf1sfCsP69Jgomsyo66End2EySa//Abrd1g4KazDVWfjGOP2OhAbUPIHIgiqph/8ldDTGZ74G9Fw718U/mnK7fEkZWF0YMQZNQXflnY6QmaiQ7w5NdbPCPHow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RsF3hwBJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RsF3hwBJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3130C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750764593;
	bh=OxDMikVt71MGAmpeOZlvW2qeF1lBZLi5zeSSxysPzlM=;
	h=To:Subject:From:Date:From;
	b=RsF3hwBJlEp2kke5YukyUcBdNK+YZn3rS/UK7cW21PsSjM9hog41AsjoWST5ul7R5
	 th5y1GF4aAG30EKfVzIYahh9dBlpGEng74MZIWst/NfDG9qmLZ4vOEWHMZ+f9ho6Zu
	 Zw62jU0NjKfliIqBztbuZi+oxYc3104Oh2bk1tzVbey9zWDHOVbXlFhHMvPd4kspac
	 zGiPXnh3nBr+YPNQOR0J7Y2/bfc+NF9MOzQInPxhEHim20hw58Q+ZhQffIiUyEwEaI
	 zV7Rewnb0wWxf+iw3w3E3tYwCCapkv+K8Y8ZhI6dPbJL1leEO8xwB3xN1uADbmW4Rx
	 6/bs+8nLxHY1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AC4C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076459358.3716.18300228198027719000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e1a1954f58ddffe444f9406382a55789f54972ea3bc065234f3d46afb22ec87
Date: Tue, 24 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750764593
