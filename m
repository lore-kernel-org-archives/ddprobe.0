Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB12F1FF6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762278594; cv=none; b=dWZDKsKZY6+tMR4WG37ccTPTCI5vP9KnLbdQxnoq92fWwKrj+xaFWqeS0etYtVktvqduYvDlDnk798B7GfIesYLlrhb51fns1nRaae3hCh1gZDgK7UZ+DYuwVKD6Px4X+IqANyXze3K+b4ykTiiCZylqAgIQOCig58L5/roqQLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762278594; c=relaxed/simple;
	bh=QoK1SQAdnYEgkfG5EDHYTI9UuXxUhelbt4v5pXUSNZ0=;
	h=To:Subject:From:Message-Id:Date; b=nxFbMeQhyoEsSa+BZMb5rEdmuyyXwA4K07qqJrUl4AXWJ4BWAbsYSrhpiS7Cf+0Ui3dYw+MtU2jhVRF/KfHuIZykBsPK71r1gS0+3QQrdlZcXj6Os/pCRSMQk83l5FMWwzTHeq+U7MNQAnLM5WZVhi/nifJtIh2idi2njuPe7G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGBsU3qJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGBsU3qJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E83DC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762278593;
	bh=QoK1SQAdnYEgkfG5EDHYTI9UuXxUhelbt4v5pXUSNZ0=;
	h=To:Subject:From:Date:From;
	b=JGBsU3qJhknmYdtMQZ/Au8QxrBXsXdUmW1tEitg20M4BkZnEd15yvnOqCwfjk4qtX
	 gzKU3mAZYoxLRdM7WBEMFwqgKxVt4bdJBJGpSsnDoMsAeKF9VdcEmmPgdlKNOzgKcU
	 pzaSmY2j15QRlGXGI8M6DO0Peo2ZkHzd6XZmUp42e59SnjOze7QbWEPmwpR5fuvqYI
	 EUM6dYaS30NaKmMC4Z3DancROUOIDl4S/xb29ISxHjz0J6tinZu6gylOxBcZXT4vs5
	 pgp4uSK1H4mwXLoJStXgne8BHLd7hkpqUYVuFwhbcFGOg8voQm5EYg7C7jlCUmEK8A
	 s450k7QNjt2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91044CCFA04
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227859358.22951.13256179114967455808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4838e1f36c01ed88d8bd97a78d55f2abb9bd2b992f28415404236d51f38fec9
Date: Tue, 04 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762278593
