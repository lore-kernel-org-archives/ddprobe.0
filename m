Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289182D73BD
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772492094; cv=none; b=Z0dWvkJYhGDDGI/lg6SyqC+F+awKrKAmF2WVCSW9wa6atPW83iPgX4alui7CWXmKC6obR9RJSpgIJ5f0o8F3GwqYVhmyTlccn+sjmeU9VGko1myjCTHXufbu81RwK/42Ou5Wrpbl1ippOHCDt/URX3Z7vkHGQAHoopHwk8gR2ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772492094; c=relaxed/simple;
	bh=Sz37IG/RQzMb5tjN6oJ+u7Kq6KQ5syfIzUD/wCW3RlM=;
	h=To:Subject:From:Message-Id:Date; b=QeLvlMEPaZJlJDVF2xV7kYbbR/YDXmqLJZ1hJNNFHsHRAVFCzDgOsSQcvWHXnhOTuj+uWlIu4/KjlttTPWKfwhFXM1J0mWkZVttyvhwAXWTadV5h5E2jszOe2CVYqIYt2CyoTPGsYdIe70LFqOmu05nNIyCKwvjvaQRLFugxLNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ailiLE95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ailiLE95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F4AC19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772492093;
	bh=Sz37IG/RQzMb5tjN6oJ+u7Kq6KQ5syfIzUD/wCW3RlM=;
	h=To:Subject:From:Date:From;
	b=ailiLE95CRDkQYPD/CKQv0bgm/KyLIZdUC2OCtUWqL5Z7z2q8u9CKkMMFeKB6u6Gc
	 PaeWo8nhiG7KhLldjSfC0++fi6Y3QIm/4pJWF5NI+2sxXGG1rTdXP/A4cWLwseXo4y
	 iNoJYnJTESJDoMLn04Wu/3BvWm5D19OkBPz4oGCqaU9earYPqCfevso8+CAdIMXZuC
	 8vCcpr6ejziOeIAoVzU4GrjnjXr0tMZoYaS0xAFkgtMBoNzkVUjBNxUcN2HDMfsqzY
	 rQV/UmVYq3yDQVCpAT24nEFaCtBURGQ8FVe0I4S70W06BMtIg5EEyQ4aaW3k6IcHGs
	 mmhstU2LdcGow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7064EB363C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249209373.5679.1477363733123545312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab4f9701ddfdb37084bdec1ec077e46de54f3f98237bdf08c93b8fe942245a7
Date: Mon, 02 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772492093
