Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E7D2E3705
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752374394; cv=none; b=nXIYcxQdCYyJQFCaMPfp8ZNOOW1IBkpLZ1JWgobAYGgbeWV99X/X+8K5bmZ1N0hjR0RxfwjQA/brP/0TK2T67A+FuP/BtRH41LySBRWv7EUeVqdWw7dCk91qDzx0QPCT78UV9tW/HvDIxEXUBiFe0xx0rFn6QxfKSjhVDHcGSdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752374394; c=relaxed/simple;
	bh=ao/pYXNVbX0Xw83A9vUAtl1ZxYJimf0dYe5o4GC8Z2Y=;
	h=To:Subject:From:Message-Id:Date; b=q5rw3Q1Qgq/AKmfAjzZcUSukd6Z0dmeofTSP2JjBaNs3NKvllhuZFHheWtezMS1EW9WFwd+mYc4y3JjQAX7hG/x4xhPcNG/LpAJz96cF+Ie1BKbpOnV7fVkleEgVaCOlg35aVhka5Qf+Qtmgvu0CkO6LF1oPugRWWiSSxoImTK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2RPVqha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2RPVqha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A258FC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752374393;
	bh=ao/pYXNVbX0Xw83A9vUAtl1ZxYJimf0dYe5o4GC8Z2Y=;
	h=To:Subject:From:Date:From;
	b=c2RPVqhaUHJ0dXDEqViOI32C5O9nV7FPQr77jBPnly/goWIVj5DJAZWm+4EwUX4jX
	 DV0rLoo7UodUPk5R+MobF8jNszwzO1Cxib5dABtHHnISX+La5w4m2MlqgLnsMXpuIA
	 FVx1pCMTaRAixfRZyH5xVc9dubA9fpJYgioIDVpR55Yw1v51th6UdVakO8BUPqKnyo
	 BM71CnY9BzzUWQhPPJ0R+QmgwV3jf7YXKHI9FRyFnOjXi/X+4Ys1yFUuK8s2BpZZu+
	 3B5DlOxbVhAytBK4YUAuYVVSTfggSKg+FEHbrQ2JWS19ddXJChDfNonQCTPlqSKxQy
	 D8wBBfvn3ufYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132DC83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237439357.9098.4250302169657403843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d68a7a85b4ef13983aa267cbb55737ad071886fd554ce07bdf332b8ae55927ca
Date: Sun, 13 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752374393
