Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF707483
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750121394; cv=none; b=Ku78KOiWagyNW6ZN1nXbqCF8ttBOSeEpvYplQlx84571QUTXqRdpPyzN64wkSjvFh6zZwHEiZipHC8cSdSnVm+oOBuqJcRqjVx4bpUV7Tj8KFXJSZz4WztWGd0wJcYdPXDJywXynaYIp5Ao0ned0PUYFokwMsQeK9u2MPtn0NM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750121394; c=relaxed/simple;
	bh=WGNJntznHIBt1lBY+grTlyTakBwEd9tUEDpEGCNfx0s=;
	h=To:Subject:From:Message-Id:Date; b=chJpFC6f7rPEw3oIuFqeVcvmxmAIWPjI8/IG5GkiWzE9oID+bGShi3qeynGrSmBR8qk43mQwgBn5cWyskHV5ecH0JulQfXTCGg6Yv4QmJh0GTp7tk/6NhpdqFcTj/07IeqLiFDhm+PgPm6Tp1TSPh2RvaUpr5rm9TPCd20dLH7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAHmQWB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAHmQWB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8718C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750121393;
	bh=WGNJntznHIBt1lBY+grTlyTakBwEd9tUEDpEGCNfx0s=;
	h=To:Subject:From:Date:From;
	b=vAHmQWB27LHeEZNGUDOOKj0l3TqCxf8CFTc8zsJDlakjw4XnkCOXaOqvfiOx+mxcf
	 f8VkXsvKmaptaMOk4b4sBeU/dAr0ShyL4G6ikZn5v/n7Tyx/gBD/zTtt14uDMUwwYL
	 89y3BC2rLYd5WbIy7e/dktJNmbqr9I5l9IoAVUTtBeZc+wwrc1PZs82u596weiVSje
	 OgLMEiHnObuvWFk8XR+e7DdBAgD+OMI073mNe1JZLc99/2O1KPLYli4BIdVxt3dRU+
	 v0g5XGu4SEbCoqVnxgFXcpoNXqxUkMCm3N7Y1X2FW2ajd2niWjVyJux9lxbNotQ7ts
	 4DkzzhDkjWe5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A7C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012139358.26066.10250682491669255942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be339806a830dcb8edb33cd8ecb1c0a58b5d693b1f673ff13d9d743cd9d27277
Date: Tue, 17 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750121393
