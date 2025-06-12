Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2B729B8CC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749741595; cv=none; b=i/omwsJu4tVkrMuf5CDhKRPCM4H9az2Z+nPw2SK8AQYOUBt1/fRwIbKH6crnDLvqcPYhR0jkBUtAOJFIPLlSVJIDON8gp9QNn9lo4frxMQS0jIBgbCBQhTDiKvLcFBicws8X8YwO0zghaWGXsrPxSpM4H9AfVYj08c0j9QWJBoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749741595; c=relaxed/simple;
	bh=j8oKJEouZac/9VMsA/xm739cfdr5QbF8ScvRhx5FT1M=;
	h=To:Subject:From:Message-Id:Date; b=SQDBNKUYyZZPJF9vnGISGR0gsioNR3cY5moOrW4b3+mhavE5eVy/PJMkezURqS/ZLpW8NlwFHvNaZb/4Rc0gVeD3qMEaJMmzlMllUVU3AOBgTGjPzZyeXF2tOrxYP57Y5RE85xrnA5i69drO27bk/CMopvwAp3m20JgMyapVzQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QOqY7mJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QOqY7mJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D443AC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749741593;
	bh=j8oKJEouZac/9VMsA/xm739cfdr5QbF8ScvRhx5FT1M=;
	h=To:Subject:From:Date:From;
	b=QOqY7mJ4XEoYdlCjOoukQ3odHe+MOuG1x49IaGSl/IVtYzAVIeQ1P829SxXPkLDlN
	 h0o4EtfuJV7whWiEv4Es09lHM36zd7Yu6XQ1vEtKuq90PPdCg2WhlwKEH7gEpbS8C1
	 it4q9WRgbzlrc146kh2gzoevesupyzzB/rgzgzLgHfGxuIWaMtPjWg1dHdMkMjekZd
	 UYzgZCSey/NYgciWnHKWMfF0kjPUAkyzmsSBcYWuSsr7I3jv5CtOPDyzKdp3rlO/qE
	 ixoX1ZZRmcnbOcjJUQmAIkQHHPzRmxZ2b6Zije155ubUnfM+3fAyQRO1fHWYCbb9in
	 voQidBI7EsU3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1652C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974159371.30638.11195791613218465779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4584d81f1155cf50b05ad8e823e69f1c7adfdba74763a4e38038a9e340d22dff
Date: Thu, 12 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749741593
