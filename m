Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565A82D595B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789795234; cv=none; b=S4Spb5jc22tiSgultbeOb/W4Zzox5MbNgwUD5WZEonZ6EPlxlAehbCvz9B3SRcYVtyw7jihZ26Dv0WIJtlajqAMpBivrDP9UwE4tmsvrdszQBK6DcjDWLb1YAMMyvyP2MtrVgZIqBe1uCUmObTke40ursftqcqYQhPoAMurHYyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789795234; c=relaxed/simple;
	bh=vnvHlSdqTF8jsCj5Tn9tIZ7n8+Xd5dXPtH4aJtX29BA=;
	h=To:Subject:From:Message-Id:Date; b=e8p2j+0+zNp4pG+jR2T22VAcy1w4rVLiGRhkZK3rL70HCJctZNkmaEswX3JRyhu91OOzT4sP8CKnayC6IpjevOq7MeESG5m04mpbhcEtxk6/RK9PY5zb+5uSwv8p+ZFgS9kTJBO+ce3PWnZOzza0RfnpjtlMC/RqfdRqRqcNAYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaT1KKi0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaT1KKi0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE1FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789795233;
	bh=vnvHlSdqTF8jsCj5Tn9tIZ7n8+Xd5dXPtH4aJtX29BA=;
	h=To:Subject:From:Date:From;
	b=EaT1KKi0Xx0w8u+H7seVRlwKPmORHUrAj9Q8QTjqfx6g+5C0ElP8YrNvOn/OvGk8V
	 Y6dBP43l/SbmCaEcOwNEHwca6L9HXTGB7SgxJEicU1svVQ5j26zvkFGwedTAIL/BIO
	 jNH7pYhF9XaFjKJ/DzoPN46R9SJOvhlhNVAxgHxnBP3GofiHHEf+tNRjFKkKUS8j/S
	 7Fw9obEd0KsZkxFWsET6t1BJqiiIAaJ59hLg48GOApm3FXF615t0umk6wTYgXOpdFx
	 FmBHRAa8uxI/dCE/HxkxcUdkRnHTRAcnOdhi1pRW8wL0QH+1+KlezZqdNuDZJOtxru
	 aip6Qj93s1g6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4F6C982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979523369.7140.11686052742705736427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdf3b14430ff635574011c08ec06177c929871c0bc02d1366835694865836ed
Date: Sat, 19 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789795233
