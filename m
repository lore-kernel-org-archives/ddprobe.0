Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8DB7D098
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758505194; cv=none; b=flW+VxymKqu/+XYRebPKZc7UrLgrH4wFYV2bA9D7XBJJvz550MmjqFlNda1r6Lvcf+T3yfrSM0jfo2VBC9qxL+TnxfGn/7pJHNtDlFjMCuTektE6LkKo34L5abHYyeThSWDLn/+chw9qPXDVOlo2h+Oa9JhsezMxxn2LGEbhBNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758505194; c=relaxed/simple;
	bh=5ht8olZntB7b9uNzqhO7OKKAyBqAh4PtLyQ21wvwWbs=;
	h=To:Subject:From:Message-Id:Date; b=OZ3df9dVVkMKe7MzNf4/jpgXciWllVdYtIyy/W4jUg1B0y7nFyQarygFyduETUxi5S3cSK+WP3PBzK+PHIgZekmR7TCJW0aZqZCK2C55yX4GFr2SmRym8loo5Mabv8+DtSXR9K0uptJm7ngalzUQvjR55n40kuSmax71pnWhzns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hF/0XKkk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hF/0XKkk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DAEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758505193;
	bh=5ht8olZntB7b9uNzqhO7OKKAyBqAh4PtLyQ21wvwWbs=;
	h=To:Subject:From:Date:From;
	b=hF/0XKkkmK39sLHSb3Nap8t8rLo9gE+nJhscA9xyH7hTM/IIJxhDONCeV0rBrH0e3
	 J+Oi/omK1Uiw9nQbXL+xhps0OkraeXgfpdTIXInsR4AdAlE606mSmCJRxMmLkqn0IQ
	 CxRBOnGgNZm7hr+l66OWCSiSA3WPBxKrqp+Rq6bmkWeqISPZ7aWO9SyqNd3jbJsfk7
	 NVT5eMoNnMMiRBf9npXKPMQxVRd1jgdSkk3sLEEyG/0UmquuY0wATgmJWS6kFb88iE
	 TrXkjUMfZV1S+Tcjt3NAdS3uWnXben3fAc0oyP5meo2UV5BQv2G8ACDGiaLPWpf9Yn
	 LPa2IpkuE3EEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F1CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850519357.11672.4475131508739327982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067adaf8ef1105b47750ce05ee7256b92227e5a75f0efb628fa66b55dd380a80
Date: Mon, 22 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758505193
