Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7675C165FD6
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713473963; cv=none; b=FMDqT7lY7d7jbMYhB12WPqUSHi66VH/KJmpU7e2SmVZ6Yc5gQVGh6IEvJ8L+48jQjxn0ApMVgObfS+tXXk7kWy5wF5E0Nh98gLD15erYCm5rKfKLrQo3CPeeZOaSakG25NC4a3c0B166TRm8ISSsxZd5kAd9fm8zbkVTVSPGTZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713473963; c=relaxed/simple;
	bh=clpbuQR6ugw5C+2scHU8wkyeRNz5DtCQ8rplGgPveX4=;
	h=To:Subject:From:Message-Id:Date; b=SVmxsMuC2Ukb8LWtCPnLkkwKstPBg+vF8Y1woZYaGbepjYateSorPZ8Uek27yjDt3jERC7/IFlvNLtyXgj2qxnuzLOObgGkgYyJPjC4CzBDM+GlBmf7jVg8XFqU6LaAb8IM1EsckKpKfK2+dW09T546/jDJNZOAmo2jo91f3v/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgVcItcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgVcItcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8D81C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713473962;
	bh=clpbuQR6ugw5C+2scHU8wkyeRNz5DtCQ8rplGgPveX4=;
	h=To:Subject:From:Date:From;
	b=YgVcItcFeEV3sLE0en+fCy0SO8VN0YGy7piJBR/dBbWSHCejh97vmi3AA7J3QKGfs
	 lS5guRENo1ba88HrBhRmx7ShDgswBVRcAfAvGZz3CxsRDY0lPkh5y9pUfvkw8HT2/Y
	 06VZh3bO0tVUo6o3kcOQX8dBvtNDIgRbrsmvVaxipur8bitg/MjRLOlJK58Nboqj5e
	 M5fG48e4nnU1V08XAh6Em3DjWyJcOnDPhGN5n37y7VL3WaTqzVjL6NwLLzmTPxlD6l
	 1U1b4QU3DJaZG/J1n3mfY+uPK7owRDNYbC9bIfcu9I7zeg5IMEe9CUgkpmOo84ih96
	 DHOYWbljLb47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE77DC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 20:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171347396282.8454.6991673840516781740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 666d446937411b4f25cefa5b9c1ae254ec409468bef40e3e18a8bf59a7d4b485
Date: Thu, 18 Apr 2024 20:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713473962
