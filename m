Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D072440C
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721553354; cv=none; b=fm42DFhEtruH1oFfXsTESCRfLolnXeUEQBl8vVctVMT7APVW5otRt0g5wB+gXbgCeaPmXN/HKkv7IE9+wcleKrO6DJcp3IAGwgGs9JepotewHX9PzqacK0g9QD4i4H5tPQjVJgw2hA6PdTjjEoL9RuQwGaPwF1nMVEhjl94TPiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721553354; c=relaxed/simple;
	bh=w/gB/oPieRGZsX1kLDlOFr1QS6rWE6zKIdLN7b1Oaxg=;
	h=To:Subject:From:Message-Id:Date; b=r4APJk1nEbmhbGbu0MOibzweJcsYglaAamFsmi1s+QcOn3nFpcGWZJ8D8ni1lb0CGZftrhgU+vEO7fV8nOmvux8TPih0ngioqCiJjfOmTpkND16k9D9iprvyjgOgwaDISwZitjIKTJGDA5u3u75whKSxyQoVMWtwJ2GOIhtuBnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PYGoyyH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYGoyyH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F35C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721553353;
	bh=w/gB/oPieRGZsX1kLDlOFr1QS6rWE6zKIdLN7b1Oaxg=;
	h=To:Subject:From:Date:From;
	b=PYGoyyH5jQuknmvtgsGvpcuNfRTFCydUx9FEQa44puQpEf8HohFlgR8YPjUXsYRGp
	 /wElyEx5JMgy1GB7Fvq4QIcq0CbB9GQ2gw1zIiO+jDTvUMWX8WDF/0F0eSqJV0abVd
	 +6bNuRuhVM1F0oQ1c0cfn7jrgn2IaAnuadus+jskzs+EA5akeKGGIjgIFcoZ7h4LOU
	 VlXUQ8UqB58ERxkMG9gatt+Gy3vTCOKwGTnidd87CYZ5xzoRfcWDYYz6bSvWMj1XCi
	 mAD8fWA3jZZaEmgy0FGm7MgxhddvgoAeivSS5ipyxtBGqMcJOB73gXuQ48LpQ5dKF3
	 CwqOmaDfG6vyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8577C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155335360.22503.3493982145454897146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29ebf49304af116910e7d5bb7296b185b61805e4fed7011d728c572eef30f26
Date: Sun, 21 Jul 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721553353
