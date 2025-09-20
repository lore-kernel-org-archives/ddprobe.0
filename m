Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2783B1DA3D
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758371995; cv=none; b=ELw5h0+rwMslwyHUMJfQGMOratouv3gZWQa+gaQYVF1IV3t0OZ/57XYYZuLzz9OfvPFPBgSpXs4Nmoubc1BsX0JlUoJhYVQYNqWWWqEiDvyja75pJvGabT3udk65uxmuysHgftB4pLLiSm/3KO+knKJNUXVpNIQpAIvbfwOh5Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758371995; c=relaxed/simple;
	bh=Ndwtw55weOD88nDo3snI/CdDvd1TDRW9ER/Q3xkJSVo=;
	h=To:Subject:From:Message-Id:Date; b=mU/STUx2oq+Y1svnD2jAJNzof3TUD+D0P/3Apyt5kVw8TDpKX9PH5jD4AnH7PLdtrUpqF6kYiJyUWmOsfYb6z8YyogjqDvWVK8tgSuWOhWPO6OAJFGZfHkzHagQkF+CmS+Ae2f7KzdG3KTZRbyPPIW2tWB7AhL9EJngqmHOT2JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oP+adxaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oP+adxaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5029C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758371993;
	bh=Ndwtw55weOD88nDo3snI/CdDvd1TDRW9ER/Q3xkJSVo=;
	h=To:Subject:From:Date:From;
	b=oP+adxaVMBe7Uy7s9OBPd+vOKvnNfrGegq/NZ4IEYt3wQyiK78KFlGoBLTFEEDjfA
	 ttGDl0sUG94tRAj73jau4tN6kevsjueoHnXkqZQw2OEfbnUstB5JmdLpxY5whav4x3
	 EFRbvB2xDB8CvD91nbPKetWgYMd6Xrk62zvif+GWf4Cj8Pc20z59+BMIkvFFEcr9Di
	 elplGHZfRjD4hQUeac6e1R0nDUZY/7O257/2m5T47VSn1IP8Uu5iJAg29mIkmNv7Bo
	 HZ4QYilDkzYvV8V0tCNRJUebLuAi7pkKhyz6xgjZkh7rdsW0al/67ZWa7M/zUtM9zx
	 HmFWW6UCf6uLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593ACAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837199358.22870.7714189035551803180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1478447f2cb8edfc7baa72823a20cc67fe554b8928a5f54e2ba6fc0386529746
Date: Sat, 20 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758371993
