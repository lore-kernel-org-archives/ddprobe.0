Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3193A7F66
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787770236; cv=none; b=b44OiXaSkNdYFTx8zmiAehRFs2bNuEdsunzBM82qBxstmbqEkoUn/3oannJVkS1CVWiqd2dzkZeH8T/tO1hlOm8hcbCsF+rwq7LawyVvUbO89ypbYtlVc5Gz6Byc6GgfIoYESxFFn2bAVK5GApBLCC6LxXcZ9SqBLcezQ/PAwR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787770236; c=relaxed/simple;
	bh=rmdM8q91zJn8t/sTqjflo1kgPE/Mhay5eNFzfx9KKSI=;
	h=To:Subject:From:Message-Id:Date; b=AyF5pMPYS+6Nc5Jxyll0n6WiXGAVJnsg12eqGoBclxejeY0M39FPJG9Wy38/alTX+NArRq80WPEhr5WMttVMpUXcsWRoIU7oA4gyuYsy+6PIu04vbStzl06XHzxeKJKhDSrIDq36Kat6v8hRZcgDPXdt1lHmVFuk5EZLPXFb3LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WSQvxGlm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WSQvxGlm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0215C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787770233;
	bh=rmdM8q91zJn8t/sTqjflo1kgPE/Mhay5eNFzfx9KKSI=;
	h=To:Subject:From:Date:From;
	b=WSQvxGlm3lBZjDBAa6NpjOTCe2SN9Ha4YyezunlSlAs7166vvMg4WP4A2ptYVF80V
	 /Owa2CqqWRoRoIJZMQfrVGW22zPPTMsriO6zF+9D06BItnsxZ60Gvyg0EWgxPNnyaq
	 zPYrcGzSgGHt734ibbyAcfktQbT3n5wqTj31VfJfF+QahnnQslwrx1BYfMqXdd8mMp
	 TMBhPBBG+v65AudasrjU8U+kDXtKfzB140rqWPEc+j4jZYLDp9bM8lMIyV7zUNIyBm
	 H/lgE63WnrWDs+jz8pP7J+cZ6t0eHiMU5OMbPxYrLe7q+LonUjLnh4A6u9H4lnQ1HN
	 ksV1WjaObbUSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE247C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178777023369.23336.7154790727630272695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2c21bf52d1fa8dd4fb59540443d6a2f9799a5927e63e703f0ba96a21b54ae3
Date: Wed, 26 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787770233
