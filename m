Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDE0136358
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763123394; cv=none; b=l/NexM90n/uDswSeyp56b5n1anLMdQJwKZzVfxjVokMouTS0M0yB1+Q+X/9BinNe93QGbfSCi34QfHfcMJsvl/Nr0MnM644tcN7WKN/IzhUWCy8i71aMtlpBOSfdPgbWpYiWk/IHlM/0oHih8Yz9oILoI4F9dNBcZqdX1ngarJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763123394; c=relaxed/simple;
	bh=RVDqvMlpnt7Afj4I4hQhVCKIJUVwYE+Io1g6EPKPL7s=;
	h=To:Subject:From:Message-Id:Date; b=l6eB+fk+ndXoCDKyu9mr5ir7kltJ2fM5LGuzRtF0Z81i0sw/2UAIzSfwi8OTfGkA0P8eYA/TRMRy74poXYCkubxJ+OCSxMkXL4upZQWZKJeHBfV1IiHd01hdgbBM3JNZpY/wWZ2Qg+VF8ViJYyZZ1Do9q8QrCiYY8gTy6lsX3RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRKtMwyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRKtMwyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56A0C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763123393;
	bh=RVDqvMlpnt7Afj4I4hQhVCKIJUVwYE+Io1g6EPKPL7s=;
	h=To:Subject:From:Date:From;
	b=RRKtMwydAX2xLNUiOVBlMp+KqCE5I1DzbAFFOM0aXFmnE0NNKEcN3rIo1LhSOgHO0
	 qTxNMkIKoHANE+mB2lMBeJfPKFbVgveS2vIMP6TQqorAW4IDEd7c5ERQeNjSXsOu6Q
	 ELMuvX7OEOmzuxaOhGRubDp8aYUZtihwy9xfum8uDdRdF7Z9hEShoIYtS2xzoHLwUL
	 VztW2BMorcCufk9QDDNvXN4IvXpMM+C2R9L/ug6+Z032pOhmqDbZhdwyqte5MRgF63
	 6lX0tJ/tcZKSeuQ0dresdSD9SK68suuYfBbDtIL5/munFo0xFDlQGicGbQzv6cRPLT
	 0z8ruV42JX/yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B75CE7B03
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312339361.23331.8964292410824054848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e59d5d42e6bc7a1aac91567c0ab6095cd4029fb1fc4c4a543f9f913f70bc78f
Date: Fri, 14 Nov 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763123393
