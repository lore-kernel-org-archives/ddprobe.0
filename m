Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E77117C9F6
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725913554; cv=none; b=AjZINKXf18Len/IqDyTiDUe4V5eoZVcUnGts/6J+r6K+AiHQBhnIufHR1VuJrFCSzzTxmkK+EWk6eHofnB6/41GQJ+CTIt1NrPHgQC51QwBB7S+cKcqlIXXPZ0LbK4YBex6JmmBu+A77IDrT1cjkdyxrMlvoRffbZoKDLW8LifQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725913554; c=relaxed/simple;
	bh=ZhDK5ttiiw/lMpK30/SeQObyN54IZ3gq5ia+HV5Y2ss=;
	h=To:Subject:From:Message-Id:Date; b=rJAYtVgMbypBzFXttjfluzV+AvF91Ziuf3RI2fOObME/M0aGyDxxoVWddMoaCj+KFZFeDePca1Jkt+DUxdgSUIrw7d8LtJXoaEgosN3lg3O2ZUAZL6cF9YnNs0XqkOcyEjRbePCEPJN3Krm93IU7vO4jwh54uttGmCColOjYs7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nx9CGr8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nx9CGr8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFD5C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725913553;
	bh=ZhDK5ttiiw/lMpK30/SeQObyN54IZ3gq5ia+HV5Y2ss=;
	h=To:Subject:From:Date:From;
	b=nx9CGr8oWKM7p+0qR8AiCnNWdtFqLKBHqKdrOqTxh3OpS7sGpgf7wI1RdOBlwnZMm
	 /bJIQN5tPLkLyTR7dx6eHNArzOAiwCoZcBOyGhFTzccSZdCSrM8Pd0C5QlsAhZXvOr
	 xUmoAATnV/eo57xi9+7U/itTaa7xhC07BP2IOvLP1mJm8tdxQftJae5EUDl5HQuokz
	 N72pkeCSu5jc9a5JdLRbpwpmwcjc1e3o7DbFevVBYN1uR0UsT0Qa+pWuaDPUIURIIH
	 OZye6Yk03irQPb3Oi4BIXmnF6H3HsGZ5DHR3GOc0sNxv0Sauo1nuK916CNd54czhfW
	 2RJg/Kh+9hCXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90349ECE588
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172591355358.22311.14138882575708828869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7859ba66eee1ef0d372f9c48407b09afbaecd9455f8d5d3ec9c37d9f93e9dd6f
Date: Mon, 09 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725913553
