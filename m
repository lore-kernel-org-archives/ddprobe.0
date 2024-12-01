Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDD82AF12
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733087754; cv=none; b=fhzIkL3oGhKg1MamxlygjcI8CKGC8tgM14lWuBaGEg5eTs7LsuTJUMEFhh+IjzqoY2xgi8J00MbE5O3sMfruRPCkHEdB7EFojNHLkf9kCKhAHOqwjLHJUWXBrKhP6inkwBKv7cZA0AODJKRTqCfEz5fk4A2V8xwaxGusLkjaJcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733087754; c=relaxed/simple;
	bh=kk+6vnInMdTsngRb0jB9QZ6z24HmUJ5Mhp2VGud8oTo=;
	h=To:Subject:From:Message-Id:Date; b=bRJ46DSJRZ+iFkSUKwGybVdkwPHCdHuNfhEDvUXWqRCFtQ1GJyc9i8+Y7v+OfIBfaRg4Y/viwCou+WzWZKVfUzMoeQpqFSdJ7b8kNO0P5ekXwpx2PLiufJKzIWRfzkuYQhJ4Dz6zy/4CWJVXCAe9zRimV0lM4FRqFcOM3n4KyI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHqaOqT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHqaOqT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBD7C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733087753;
	bh=kk+6vnInMdTsngRb0jB9QZ6z24HmUJ5Mhp2VGud8oTo=;
	h=To:Subject:From:Date:From;
	b=rHqaOqT29a5u3Sh6fZwEmiA+jDGMgznSKOrQTbMHEFIbS1ACkb9Q2MPqZwM3FmW/8
	 eNwwH8SkFIQi4BOnBXlEVVX2hTv6vPtuaGN1wzBFXb50KCFj706TP2dsm4+ahHJVaH
	 dlcPHlc0dlnB3pTfB80Vv44b1ODQW0NjZ1Br35BS6PqmR7w8HW8iTUWVhZWj+bFNkO
	 hZ7K39UuaDlKcL43RHr9tNCPmRM2Ka3w2BSH8LxSDHNYg+lZQgDRyzDM/4uYq+4ipN
	 IeBLM5wpwZwEGfvLy08Jxz4mhXzVPAM3sSdEDlQcwHYUb7j5DbtUYnDJ6ObgFw1Bw+
	 H76Q12JuDJotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9626DD49789
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173308775359.3468.5614394821763308476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 875bf2d3b723b2d00ebe05c82f892ce5d9d201f8e3a349153e5d5cba46e29890
Date: Sun, 01 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733087753
