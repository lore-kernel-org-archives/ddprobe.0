Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493BF194A73
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762738794; cv=none; b=fmSBMpDK43tu2O9LzL+dgQI0DLFsf726BJqltjBJuuZVPNxYnYBYmYfWpMsgfk4vMxzATTTsXa/EtfiKVucyUoIDJnhVy/ETeM8M9Y+TI0NYnrGTf1sZE1ly6EYbhjYqJrKDDuw76OSBShmcfE3OGo8pIELESuBYPf1TBm7lIRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762738794; c=relaxed/simple;
	bh=gNRhpisMeGRp3iyp41WBi5zYwc1rKGPzY2lb7s/YcKk=;
	h=To:Subject:From:Message-Id:Date; b=lSHC37goKJLrD/BnuulOUL6UbIK/VZert1ZUzZrS1V+V4QkDPng7pRdYdWf6RyPqvTs2RBkjVK2YLF0EQrWEjXUO77G+vZ20rhyHE3vJ1BcQkwaSzAC4to8SfpE3yaq13hxYJlhIhzFWq+lywRVAa7UBtOTgVeCSK2JkacuZfUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBMDc3Sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBMDc3Sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47DEC116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762738793;
	bh=gNRhpisMeGRp3iyp41WBi5zYwc1rKGPzY2lb7s/YcKk=;
	h=To:Subject:From:Date:From;
	b=FBMDc3SctG+4e/54JgFcs5l98vT+s3kBTOSSv2BQLIGrPOy98sbauYTe5l6BG1Cih
	 w/GgFLvO3xh9lGeOzjpMIUuQhhEjmRK+lkX5XIOYssS+K4gzIdzRQS7ZJfft/xrd2v
	 Nbxpvltv8TD1R9wTyFZ71C/3s0RycVZxHRzlhiAJLu0cpk+Z7V1mwFZgHMThSzTYHL
	 mQlzvb5wbI/YiVWsM2iyn8xUgY9YFaoQrLglbIHxVzrd4JQCb3qq25IkxeAsLoV11O
	 xjYX2+FhqJ/CPJ/Sc3/gOmTwBFRbxe+FsWsWoB0Tt0AU6OWT5xWRnQQ0nTLVWMz3Pw
	 3JHE2SkHmyY8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81E5CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273879363.3443.11441269070312989052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bea1132f73290900851db6dec53596cdd420ff098f9b3a568e96070a2b6427f
Date: Mon, 10 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762738793
