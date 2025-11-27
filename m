Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8893C1F
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764230574; cv=none; b=Poq1fI/k58Y/BG4R81pre79KVNEYQqhctLzIeZ9yG83m9N6Jr6STwxfNtaxnPxQ3QfybED+h+OOVwmlBV0hRDIrzxweLR3bWU4DvK4x8ueOdTqw6ALtI5vLa7kNTczg9NdTtYtWFNGBj0dV4mFoP2woBsgZ4dzPNiv+Fk0SsHf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764230574; c=relaxed/simple;
	bh=Wa6DWGI0WhyUDahQGKJKNaW1OXXhPrVAzOyvRSJcJpc=;
	h=To:Subject:From:Message-Id:Date; b=SCtfAoF0RXd3LJN91JF93s8qvP1nsTfXZr8wx8P8anyBV+Vfrd7SjOxm0EhF8JrfcPywt2TCgqsSr6TxoQjDFUGgHgtQ8abejIkmbbW0s9pzRhBqIqhNvH0LOvHZqQCOIxqiQdXR56B8bYqAqmrXu8qsJpm6WLnvxKcUJhoNDq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZSpsILK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZSpsILK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36EBC113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764230573;
	bh=Wa6DWGI0WhyUDahQGKJKNaW1OXXhPrVAzOyvRSJcJpc=;
	h=To:Subject:From:Date:From;
	b=UZSpsILKeDgIq1VGrsKNDJOc09GHilclqKjpET63I1d7KybPTEWRHLPjYhRpVDvGI
	 ExGZcnocrs/+u4B27B+KuremxBYuwBPRf5/PYBmWSrZ7ODiGV0Wugvad+gScvwIU/2
	 s9o5AmI180x9I56k6fPjFJ0hvUNdzAQotWGvvN/sL6lMBoIjISKR8chXiC0GBwe3+s
	 x9vHxkDrYMp3kqCXnXA3Wy6q3B23Wh+xvN+9cLLt1MxJIudPYK8dtqhfvCWO3sWjJY
	 SJKqgqTskwH706cDfcPqdT3xFRajDDDKldUOPKUMS3JpMTSeHjAJcwIgsjcbfQkml1
	 WE8+H8TM4AC9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FAFCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176423057358.27287.4184243078287725808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f57456f955479bf5a52048194ee64cb99d0a6ec013ee8a4f5e1409786ba9a1d
Date: Thu, 27 Nov 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764230573
