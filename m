Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3139434BA58
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759021794; cv=none; b=or/nJEkXo3P+4opYeyOE0fF3IDbxVWXGOaJMaGzq4GYtzSpsYLQ9ZZeqgzTjW8u+0JOF4wM3xArssCXhyz/W6TGDhVNb49bcK0F/BPBuBMo45hm2XeqIj1nOwM5FucjDlBL9mLHkNjk7nLweYnjaFLVC0teHVYeH2W1Sno9YSf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759021794; c=relaxed/simple;
	bh=UF+0Ei2txG3pQsueMZF6hhHyIjOHU/KuuGijPCDSQBA=;
	h=To:Subject:From:Message-Id:Date; b=C4jvlGdT41JIB30C+jSQMM1EwskH9W1ihVw2BQfMKKJBLPYwt32ojWJA9uqUUzTutnDDQ7ApSbtikRH4oV1Sb9ryHdMS0M2mDglEg+JJ7VT3MkFmefLxY41XBTXWKR25espA68wqjPiBGRumCQrYIgiSz67+pRXek9vzzNWqL8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0hd5PuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0hd5PuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B09C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759021793;
	bh=UF+0Ei2txG3pQsueMZF6hhHyIjOHU/KuuGijPCDSQBA=;
	h=To:Subject:From:Date:From;
	b=K0hd5PuMwIzyY0hrDMISz+uI46WgVkt8OsBqTfppJofa13kzrmXEIXcGS8zVSu8Eo
	 mlUzk4vtBcD64btcCcOS11HzZMJhirCW9ZBJ4GfM8LrO93+ADiaQSbRXIetyEA6KZG
	 +8zCGbdwNutHEvdEC4PJD0GxvVQ8AHlT7G/a1h+kBiSYknXOccpF7nsvgwOhh+oGio
	 l3K58nIcJfXIOduk0gkZH2kzZzF5Ii2YW8grrVkJh0vOk8ijcQ9IutPbZEs0DYvx14
	 IhJ+/nThGWV5AJNc0AqmonKicE/+gsGw7ge64MJjEOgoM+hLdLlCcEwqCmq0SX17t7
	 AJqJ04u97BukA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9700ECAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175902179358.24152.7438378609793111866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98e9fad960491265be13d2346e36e2b8675bb70a77416126306c2df21b4c260e
Date: Sun, 28 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759021793
