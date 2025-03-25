Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA10264639
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742926194; cv=none; b=DRIJTdLmTlrWqtrox+Oy/g7KqCj2cDiuTgE120HLRbIUaAbDZw4vKffygmkX6A1w0oM2gkzXLvJ3hiqPgysk++b7W2ca+gq+T6RwyxCz4iH00L6BKuzuVrh61vTDj/PCaTGASjRiCeKP9KHt8CTM6QRuFRYXca7q9bctvPML0bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742926194; c=relaxed/simple;
	bh=r2KbOnSQpwBF+nNxg0KiuviBsGM16JWS1/G200Bf4EU=;
	h=To:Subject:From:Message-Id:Date; b=Ym5ycnS/5PmqB8LHezTohxA4Au3Nsr0fE9a3B7SMLDod64h13qu3os2n8IfxCN3SWWvuCv1knQYXsFvil970h61DZ32Zr8qP0TtuCPRHC3ntqZglwyKxCa/mtVyOG2F6U5Ha7MKp59ZBji6MUvRcpQUQXEokw+2y8bJJ/x3onUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNWdEc5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNWdEc5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A9CC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742926193;
	bh=r2KbOnSQpwBF+nNxg0KiuviBsGM16JWS1/G200Bf4EU=;
	h=To:Subject:From:Date:From;
	b=WNWdEc5no2VUibt+yoWJPN8t4affYfW8NWD3zA5TR/UQSdkHqtWcgW+uCr5TwZamk
	 qs4/UQ9GQ1wImRTMEJU9SSoOGMbAOAIVycu1d+Q9BllvTQaMwN7nozyVMkI9HSgKV2
	 //1eWCzwrPuOKGTNzKszrlVbKaX1zU5KFUiiSasuqX9ssWgXhBopZRWvPrQe3sqUhu
	 PLCDJGlRwHZTx28COCacZUtV2lvHiwywY2wJbpg3MruAs6YnKsU2sLb0XAsXSNEB4Z
	 6a9I/Ssn5G1qJLfrL8qFh9svqfGZjoTLWKmB5c4o6Ohpw/ovTySWoEl9El3++8gvg5
	 B5PzMfZ9R4R+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55E2C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292619366.30567.9105681207449752601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75cb6aee57005ed836d28ad95c2e73c2a5cc3fe4666ec3c55d0d35dd14c8896e
Date: Tue, 25 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742926193
