Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211AF1C84BD
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755448195; cv=none; b=sFiIr6d2fksR9FQsKbRXuBWJ8KMF9YzzVMgpGCbAr9PwaOqRZ75z2xC2OxxmZsh5BTED8sCUTsyZV+5jCDWDttf8s3XMciD99NEASCfX4Wc+JOFJJNgY3OrILc+eQ0Ui7fSUTToRYSiKOzD2CH0HjYol3CMay7lGfa9tCp3Rvm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755448195; c=relaxed/simple;
	bh=9o6mCLcQ8gc1nwxCmiqGalr46IB92aOQKxi8A+nWOI4=;
	h=To:Subject:From:Message-Id:Date; b=Shz4Kn3/LnzFlcECPjPlMJt2Bv7ux5hVb+FFD3hcNPURttlf7mH/ROiRgGC/Rkbh0xr7rDsFdFjqyvljYcULH2KlGtpjiLcd4uKFe3pzZh41lU3t836L9XevcpBnnxlE6a7SAS5VagNH9lX1WQVcZVASS10g8M1YVrzQKKW2GNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DHxmjurY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DHxmjurY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755448193;
	bh=9o6mCLcQ8gc1nwxCmiqGalr46IB92aOQKxi8A+nWOI4=;
	h=To:Subject:From:Date:From;
	b=DHxmjurYhys6O7iCMvBHKFKLufR2sOy8RTUoyLxILmoRiVxt6dSFr02HPua4cyFky
	 ucIG2qgoMV3xy9phZsr7s5L7HlRtX7OQAHMgr9vWQb/wRoNlkCmgY9audoos+YnmcL
	 khlR0BO5Xtm7JSy8HR5+hA3nfMDIrMzJDAanajGBdVYHvrEb05Bqj1vofcho2dd/nm
	 jy2AZ0NQEkccH+9NvrUPyjkHnZiKHp3bCJm97hdRp8ouG2CoRv/sIou+bC8TdNrC0+
	 aFKeV7fnfqfrtUF0dVz8oIhf5Q7pe5yiU2eFtzQvSik2uT0DAcWT2q//jR5P8Da0xE
	 GpMc3iB32tKQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA77CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175544819357.1663.8586112358952609230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29b2ae9cdfea5b34e4d31a8fcd3530704501bc688ebf8cec1a352640359b466
Date: Sun, 17 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755448193
