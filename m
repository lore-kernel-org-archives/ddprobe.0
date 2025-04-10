Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4204E12CDAE
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744302595; cv=none; b=So4BdCIeeJ6164xbmifHeRuzvQQt1ypTQ8pbSe2utlV+SzHxTH4s29h2JuZq8LXn/2q2YdXqvAt18umjRiYFxMHupX353lsoxmawvIc2/d+bSpqYmPMfqxZ0d6NFQGKkNtt5HML4WKNIIRMFtnmHWlPqA1ZNoV1mpB30sGTqy9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744302595; c=relaxed/simple;
	bh=Zr4HRJAjGyC3oV1lRNCWy6zknkn0ZPQcowGJPSWmEuY=;
	h=To:Subject:From:Message-Id:Date; b=KQB/aqLxdug38KQfWj97g4DwZKDF/+p0Lrhr/mPttdZgR7USNFDEQ+M1X238nvI6id+T2UnqSo8NfLXogLC2CILfcJsi5zeTAGJy6a/ns9PQKJ8JfJPT6zTqROr9rnuiKSkSu12k85+alwpzjNByg1yJUDBImkANDnsNsjc/avc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bYi5aVRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYi5aVRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF52C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744302593;
	bh=Zr4HRJAjGyC3oV1lRNCWy6zknkn0ZPQcowGJPSWmEuY=;
	h=To:Subject:From:Date:From;
	b=bYi5aVRfm/dyuI4K7ewXvKZR9RBbn9BnTfXk8rjgiKTFrVp3bzqNtzDSw323u/3q2
	 DVBtQTO1I+n4ufwkh5/kCtEm4Lm4u0/2G0JGuaY8PS95mDGjjbw0FGdUFrOhmM2sDN
	 KL/PHDCh7VKXV3tky761DFkBWOyEOMGH4LnrWtuphCKDLgNYXFV7uF1Crtvqpd8U+o
	 mUMzyM42hW1QDbijtlk+9c+lg8AleG4HAqGgQLR8dVYsHeFjT4HJNRhkMQ9bY7W1Il
	 HvuimEYux25Jw/8FUlN8XJtZ2ML5P2scyU/pmb55putLJMrtKsGQOtqGqpoqClzwKF
	 F+eaeEvs2WpKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9126AC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430259358.10120.11731671274191739758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed0077c28aaa393fc48aa5c77adb58035b9564815a57f651e1b349b732d5ea7
Date: Thu, 10 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744302593
