Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DF11ADC90
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743283794; cv=none; b=CRuU4IBX0YBSVvrjTxFGdIPStctWtlEtseE6ghoOcQgGvFHC05h4mbiYF/qVytV+OJx8yDU+7u+pT//V5ogZD+XzpjeKphcdxzAlRBq3IRvwt9EE3w+npb5FPf5bWvCdVjmIhSTclyA4ZNixEiCmSZttwuvg6LLfvGQfExgqG2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743283794; c=relaxed/simple;
	bh=GsjvicK5DY09D/sImzJhY7Z27DTCzLh1LIIRYOUQ0m4=;
	h=To:Subject:From:Message-Id:Date; b=tf9J4nAAOJX2biYp8g9J6QZyY0+KawmkVBmdiRY4C2yLFNOMNKgIwH4TT4Tk5RFy5o2Zz0V/9ImqNpdGLQGlhtSMlD5PhQUowirWS/sQOfiabIp2Phxm5xEomuJLW4WF6NtdbHDnDkNJHFi5U3Zh6EhU8i79A+5PUUBJjAiP2bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns994wgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns994wgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A958EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743283793;
	bh=GsjvicK5DY09D/sImzJhY7Z27DTCzLh1LIIRYOUQ0m4=;
	h=To:Subject:From:Date:From;
	b=ns994wgpvS7cv3Th2weicpxMD3Rb97rQ3uzrJ0JBldBjW24Y5qmvfZgrd9gA+2uJC
	 OXaQeanNQuehQSpQ083eapHnO+fmIgAiwSXLKHnUpowUhNNzGsWlUNgvISji8IPDhx
	 A/2+FAhY7BICjNyfAqhUOXSqtabm+qtazwvhmgwxVN9NRlFPfy5zc00hPrG5BbA0pe
	 YR2KS16bLGc6Mvp1DPKhXBKn+StfJqV9WMeJKeH1JunP6Ea2MQ06/eN7EekPEbvTTa
	 GjyroC6ibigMJnweRi3wDGrNedvv/1USuUPX2YA3XvKYVKL4/PLgNwGw/yAxDl/egy
	 M4TRgs4KicujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBAC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328379358.26304.16540602153272569202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e6ff87507d696f51d4a5f4ebbed87b9dd3bab4f7a3c6a2041b79c767feb3d9
Date: Sat, 29 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743283793
