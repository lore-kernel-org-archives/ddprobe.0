Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A9FB28B519
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747341594; cv=none; b=GfDejFDAGDERlg8ZBlYfVCGwzYM8pNe693TJPjCr4AFiRYaxoF9g5SlkcdmKSHNXevxVntfDes3ecI/mtque3iGp2K3cN9HdNbFH8tyav39K3ig1QchorRjPUh//zt8un3EpJGTzz+VnYRsE0r30yqk7EKHZ7ch19tUjVHeZQVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747341594; c=relaxed/simple;
	bh=skMC45UOeIeABMS3qlbIe0HrDze3VVargM4AcLkO+ks=;
	h=To:Subject:From:Message-Id:Date; b=TTGbOy0SkUR6qUmtkKmXIONvtVSwbocCAJ5GQibogH+kQNj8qOA90t1jpkeyv97Gn3q66WbmjxY/FV0Z+j4+0PzHpZ766/HT8YvbrjjYoVO1JGDzjl3PW+OFHeFzxrS5jrnHnmfWRwqgwT+2Mz4Gz+0qmqxNC7GB8Ii/NNWscRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjfxlf27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjfxlf27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9956BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747341593;
	bh=skMC45UOeIeABMS3qlbIe0HrDze3VVargM4AcLkO+ks=;
	h=To:Subject:From:Date:From;
	b=tjfxlf274knhjbjdQgwO4wLrNgMQStWOXYMXe8VCB04XXE91xrlqTCOlIuZrNgv6r
	 siVkUmA3gdjqTU0sUvC/RZU87TmBuF8wVQF+VWWiKdZ5lbebaA14I3quMXn0hnGEvl
	 Ky5WugwZkzCvqmsJDqdUEAtbZcM/pB6KTASi/ytA7rUv29oIUnZu3y0V3bfP9hTFwy
	 jRwPY4KmxEGZOmJBXS7Q+B1PzlGdepDr9pGUV5Z4i37HdhL+9qTYSXzgGUQXmH9/op
	 VUfnCsNQ5DMls4YawaiF23Gi32oteKzBOx8MmglIE83v9ztVfBm7crYsKUf2P3ZAcF
	 hkTOl/UI10p3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD92C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734159357.12140.16622741469625412371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07564b2704b17783dba2adda83d75d9a70dd713d76fc894b401e7f13443dd56
Date: Thu, 15 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747341593
