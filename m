Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3132D4C91
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733709954; cv=none; b=Q08shOKVrdiZarMeIT7EKuh+cwf/UoT87AUPlCg+D7xyj8oHi92K4rfXtdvHdqG8x/D+2iNiv7t8Yo8BjSgWdFgRLQklsPVrAr/zwQuk40FAB6bR2aUJjQeV213jedPlzqevcPkTINyDbGGOTTN21gmx+6xh5yczcDQuAd6qiqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733709954; c=relaxed/simple;
	bh=HnOv1tmYEzLfgc7Y3d9TABO0CZa0RhGJk4k7gCVEmr0=;
	h=To:Subject:From:Message-Id:Date; b=jBmAGYSBkVSECJDpFOIeoSOnA1rljXdkMPPZh3mHwQ4TbH0gy/wbjXC2VoFe4bP7Es2+m3vczcwvR2TaVGxYImR+mc259GcLVoCS3Fx9MDEaX+61K2HPoX5voOg+myLu/zDQb/phB4LC81By+owLlDeqA7Y0bz5mxrDvXz3axss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klS+3FqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klS+3FqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7707C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733709953;
	bh=HnOv1tmYEzLfgc7Y3d9TABO0CZa0RhGJk4k7gCVEmr0=;
	h=To:Subject:From:Date:From;
	b=klS+3FqVhh3KEawXpvGcmCEy7D+ScLm/H9yN0UNhysx/D2vfUdtsJkFQ0BhcpjJrB
	 LbeZ8J2PwXf6VCuHJUoDSsf4EDDgeRPIpZxGZQB8AiGk6gw7ow4mDk64Sg0JXV5iri
	 4Fpwnu5TdL9eIkIDV8ENbz8DLIMH4P1b72Gk4l2jZpEsDWidA2jLKxXDzwQd6bwiuu
	 82NPffGtpDQMDcpYbQVFTQogTDGigB4SvxePzpfqUYlYgZAkIXbwPP3RBJmm8MuBEk
	 TcFW4J8/VzUcPHKEGb/wlE+jJRkRekAL5o4PTAV9bdAfk+QowUcGmuaEwXrmTTNn2f
	 No4QRunX+AsNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930AAE77180
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173370995359.2553.9265995274241630271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8d849d3d1e3835f737b0eecf4b196a5cd2fa1b891fba8b09965f183fb5745ba
Date: Mon, 09 Dec 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733709953
