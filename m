Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0A8225791
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766018634; cv=none; b=asb60YpQqVFsIiFV1QWnhg0Pm+m0eNBOZHFZgIy+x+TM5VQ8eSTF65zPbGD3nG+tUsHxE8Zveimo9HXBa4NxQSHASNItwSE4kuBAPa15/74YBdaVbI7H0HuQGRMLG4Lmr7qHbez7NucWX0VHj1IzKuhuAbNr37K5fvpzcYtmgj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766018634; c=relaxed/simple;
	bh=x0gS9HlYE32XVwOP2akqGjr1TFxKEpwc4U9Yph3Ba5E=;
	h=To:Subject:From:Message-Id:Date; b=ZbCIS+w0x7vlJO92pk23WcVAr2a3PX4zLi4fIlSqxzxX7SwJasSrKQMrlsOzPYSfqLaTPbu9WNBkz/aJKTq5Wj4IpHPmgysbdVhFPeEuJRKoYkscBgdKPjijqiB9vJeMVVOBKJGoRORayfdTtCJm9ajjMJzgrxQ0fgPjquTgzC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Su2/dmfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Su2/dmfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37D2C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766018633;
	bh=x0gS9HlYE32XVwOP2akqGjr1TFxKEpwc4U9Yph3Ba5E=;
	h=To:Subject:From:Date:From;
	b=Su2/dmfNf713Ja7mykwkD47z+6xGie8lbebc5GPoOrduEq3K8lc3UHsDcEaUT0j5l
	 Jrp9tKVEsFhmfoAWZ4m5nwLyLEDnK7rg4Mr0BsK4b22DZZpNJ16eJX1DcUQ5VXW6l/
	 od4DgM/b0PuM3Okg4hL99Q1T+VheYDGzgcs8IJDzxcX3G6maiJJ3WjEr7KqGeaMEbw
	 3SirxRoj7CRmC90NkClY+63ckc6IKgW99kUF0Os+W+kdo3Zh6IpqMKG78FvX03gd6G
	 hatrQOQhuAByl8czItOb1Pe5a7lDsni2rOgKSD5FEK+Pf/XxDsx/R1EAkFclKukxEB
	 6tz455sDPLn5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915D1D68BCA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601863358.28534.13929195296232788513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83335e64909c737768c32c757d619005de04bec05fa4ddd5ab89c7be1082b455
Date: Thu, 18 Dec 2025 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766018633
