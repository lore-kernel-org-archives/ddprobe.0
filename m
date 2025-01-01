Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127442A1D8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735763754; cv=none; b=iBCrER1q0vCEdwkd7SY6XOKv1fO5+MZGWt+I544JaSd/5rdes+GLpuCfPYjB9RRJJozF0Y8xUmP//Egw52Rqs4Mpe4MKTQlGzld++ypKW092eigxadsLiUTZqEbbZ7pQFV+a/duEzGoAGXf9wrf42+ta6cWXzHoHi7Y0Q1d9sOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735763754; c=relaxed/simple;
	bh=22peR7C7RUH1F7uU1ZWl8bFBKcei1YVWGf9jMEFQRyE=;
	h=To:Subject:From:Message-Id:Date; b=TtjPlRnhGuwysCLRCZgAPghMzJ4J1iLbBUmBZstTkQTYTjfEVPyQHMS3JzW1kTnvDBgiI7o+jW0gxPl7rqFjPw6/YwvuWYY9TMQE0vOT2ohIbzr3zHpkaYDrdBc9vg7vun0xkUuivzImF90FoIIbTA+duRKfHNWeqI8vs0fYDrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCFa7Xsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCFa7Xsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9126C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735763753;
	bh=22peR7C7RUH1F7uU1ZWl8bFBKcei1YVWGf9jMEFQRyE=;
	h=To:Subject:From:Date:From;
	b=GCFa7XsgRvghqvw38qatLbwOCLMP4AVvY1IQErmj4qI7L/G95gb/+WlEK5puB8Xuc
	 chLf/4HCNe/DrddFDkuQjh4O59P2lyh00lt5nXudlYxnl0nlSg3n+1+xCPo+Iq14Cb
	 bo6pFZ44JPMuZpTbqBNkgrcud91TNW5c5Dye4MVjr+Q9rWHcTyOd2OaBv9QZoEfi1E
	 PW9K1NybhCKoSIlRFHYj4ytTKxCH31bD824+FL+unVffGLuC1h0VVSZvmtdAxx6I/i
	 EdFhjz1r5nZRHuNRQGZE1FXfTqzSaRFZYYyYoTSlGNyuqCB5TcIdeptUGM3fyW9TMf
	 cV+7VSk6cS48g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96067E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576375358.19955.10276956156987092361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a18c50b366a3c55cbb64e7ea3bb5830564525949ab6919b7c5f7405f8de90bd
Date: Wed, 01 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735763753
